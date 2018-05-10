<?php

namespace app\admin\controller;

use think\Db;

use think\Request;

use think\Controller;

use app\admin\model\Users as UsersModel;

class Users extends Common{

    //会员列表

    public function index(){

        if(request()->isPost()){

            $key=input('post.key');

            $page =input('page')?input('page'):1;

            $pageSize =input('limit')?input('limit'):config('pageSize');

            $list=db('users')->alias('u')

                ->join(config('database.prefix').'user_level ul','u.level = ul.level_id','left')

                ->field('u.*,ul.level_name')

                ->where('u.email|u.mobile|u.username','like',"%".$key."%")

                ->order('u.id desc')

                ->paginate(array('list_rows'=>$pageSize,'page'=>$page))

                ->toArray();

            foreach ($list['data'] as $k=>$v){

                $list['data'][$k]['reg_time'] = date('Y-m-d H:s',$v['reg_time']);

            }

            return $result = ['code'=>0,'msg'=>'获取成功!','data'=>$list['data'],'count'=>$list['total'],'rel'=>1];

        }

        return $this->fetch();

    }

    //设置会员状态

    public function usersState(){

        $id=input('post.id');

        $is_lock=input('post.is_lock');

        if(db('users')->where('id='.$id)->update(['is_lock'=>$is_lock])!==false){

            return ['status'=>1,'msg'=>'设置成功!'];

        }else{

            return ['status'=>0,'msg'=>'设置失败!'];

        }

    }

    public function edit($id=''){

        if(request()->isPost()){

            $user = db('users');

            $data = input('post.');

            $level =explode(':',$data['level']);

            $data['level'] = $level[1];

            $province =explode(':',$data['province']);

            $data['province'] = $province[1];

            $city =explode(':',$data['city']);

            $data['city'] = $city[1];

            $district =explode(':',$data['district']);

            $data['district'] = $district[1];

            if(empty($data['password'])){

                unset($data['password']);

            }else{

                $data['password'] = md5($data['password']);

            }

            if ($user->update($data)!==false) {

                $result['msg'] = '会员修改成功!';

                $result['url'] = url('index');

                $result['code'] = 1;

            } else {

                $result['msg'] = '会员修改失败!';

                $result['code'] = 0;

            }

            return $result;

        }else{

            $province = db('Region')->where ( array('pid'=>1) )->select ();

            $user_level=db('user_level')->order('sort')->select();

            $info = UsersModel::get($id);

            $this->assign('info',json_encode($info,true));

            $this->assign('title',lang('edit').lang('user'));

            $this->assign('province',json_encode($province,true));

            $this->assign('user_level',json_encode($user_level,true));



            $city = db('Region')->where ( array('pid'=>$info['province']) )->select ();

            $this->assign('city',json_encode($city,true));

            $district = db('Region')->where ( array('pid'=>$info['city']) )->select ();

            $this->assign('district',json_encode($district,true));

            return $this->fetch();

        }

    }





    public function getRegion(){

        $Region=db("region");

        $pid = input("pid");

        $arr = explode(':',$pid);

        $map['pid']=$arr[1];

        $list=$Region->where($map)->select();

        return $list;

    }



    public function usersDel(){

        db('users')->delete(['id'=>input('id')]);

        return $result = ['code'=>1,'msg'=>'删除成功!'];

    }

    public function delall(){

        $map['id'] =array('in',input('param.ids/a'));

        db('users')->where($map)->delete();



        $result['msg'] = '删除成功！';

        $result['code'] = 1;

        $result['url'] = url('index');

        return $result;

    }



    public function out_set(){

        return $this->fetch();

    }



    public function out(){

        if(request()->isPost()){

            $data = input('post.');

            $start = $data['start'];

            $end = $data['end'];

            if($start<0 || $end<0) $this->error('请正确填写编号');

            if($start && $end){

                $map['id'] = array('between',$start.','.$end);

            }elseif ($start && !$end) {

                $map['id'] = array('egt',$start);

            }elseif(!$start && !$end){

                $map['id'] = array('egt',0);

            }else{

                $this->error('导出失败！');

            }

        }

        $Users = db('users')->where($map)->select();

        if(!$Users) $this->error('没有查询到数据！');

        //print_r($Users);die;













        vendor("phpexcel.PHPExcel");

        $objPHPExcel = new \PHPExcel();
            /*--------------设置表头信息------------------*/

        $objPHPExcel->setActiveSheetIndex(0)

            ->setCellValue('A1', 'ID')

            ->setCellValue('B1', '用户名')

            ->setCellValue('C1', '手机号')

            ->setCellValue('d1', '邮箱');

        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数

        $count = count($Users);  //计算有多少条数据

        for ($i = 2; $i <= $count+1; $i++) {

            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $Users[$i-2][id]);

            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $Users[$i-2][username]);

            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $Users[$i-2][mobile]);

            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $Users[$i-2][email]);

        }

        /*--------------下面是设置其他信息------------------*/

        $objPHPExcel->getActiveSheet()->setTitle('user');      //设置sheet的名称

        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置

        
        //$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel,'Excel5');//生成2003版本的excel文件
        $PHPWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel,"Excel2007");

        $this->browser_export('Excel5',date("Y-m-d",time()).'会员信息.xlsx');//输出到浏览器

        //$PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件

    }


    public function browser_export($type,$filename){
        if($type=="Excel5"){
            header('Content-Type: application/vnd.ms-excel');//告诉浏览器将要输出excel03文件
        }else{
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');//告诉浏览器数据excel07文件
        }
            header('Content-Disposition: attachment;filename="'.$filename.'"');//告诉浏览器将输出文件的名称
            header('Cache-Control: max-age=0');//禁止缓存
    }




    /***********************************会员组***********************************/

    public function userGroup(){

        if(request()->isPost()){

            $userLevel=db('user_level');

            $list=$userLevel->order('sort')->select();

            return $result = ['code'=>0,'msg'=>'获取成功!','data'=>$list,'rel'=>1];

        }

        return $this->fetch();

    }

    public function groupAdd(){

        if(request()->isPost()){

            $data = input('post.');

            $data['open'] = input('post.open') ? input('post.open') : 0;

            db('user_level')->insert($data);

            $result['msg'] = '会员组添加成功!';

            $result['url'] = url('userGroup');

            $result['code'] = 1;

            return $result;

        }else{

            $this->assign('title',lang('add')."会员组");

            $this->assign('info','null');

            return $this->fetch('groupForm');

        }

    }

    public function groupEdit(){

        if(request()->isPost()) {

            $data = input('post.');

            db('user_level')->update($data);

            $result['msg'] = '会员组修改成功!';

            $result['url'] = url('userGroup');

            $result['code'] = 1;

            return $result;

        }else{

            $map['level_id'] = input('param.level_id');

            $info = db('user_level')->where($map)->find();

            $this->assign('title',lang('edit')."会员组");

            $this->assign('info',json_encode($info,true));

            return $this->fetch('groupForm');

        }

    }

    public function groupDel(){

        $level_id=input('level_id');

        if (empty($level_id)){

            return ['code'=>0,'msg'=>'会员组ID不存在！'];

        }

        db('user_level')->where(array('level_id'=>$level_id))->delete();

        return ['code'=>1,'msg'=>'删除成功！'];

    }

    public function groupOrder(){

        $userLevel=db('user_level');

        $data = input('post.');

        $userLevel->update($data);

        $result['msg'] = '排序更新成功!';

        $result['url'] = url('userGroup');

        $result['code'] = 1;

        return $result;

    }









}