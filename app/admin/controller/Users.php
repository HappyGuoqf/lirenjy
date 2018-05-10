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

                ->where('u.mobile','like',"%".$key."%")

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

            $user_level=db('user_level')->order('sort')->select();

            $info = UsersModel::get($id);

            $this->assign('info',json_encode($info,true));

            $this->assign('title',lang('edit').lang('user'));


            $this->assign('user_level',json_encode($user_level,true));





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
        $res = db('user_level')
                ->field('level_id,level_name')
                ->select();
        $this->assign('level',$res);
        return $this->fetch();

    }



    public function out(){


        if(request()->isPost()){

            $data = input('post.');

            $start = $data['start'];

            $end = $data['end'];

            $level = $data['level'];

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

        $map['level'] = $level;
            if($map['level'] == ''){
                $map['level'] = array('GT',0);
            }
        vendor("phpexcel.PHPExcel");

        $objPHPExcel = new \PHPExcel();

        $Users = db('users')
                ->alias('u')
                ->join('users_formal f','u.id=f.user_id')
                ->field('u.id,u.mobile,u.level,f.user_id,f.name,f.sex,f.nation,f.idcard,f.education,f.p_origin,f.tel,f.em_name,f.em_tel,f.email,f.qq,f.wechat,f.company,f.old_school,f.address,f.university_type,f.university,f.university_apply,f.university_course,f.tuition,f.understand_way,f.study_md,f.f_date,f.f_date_num,f.f_money,f.s_date,f.s_date_num,f.s_money,f.t_date,f.t_date_num,f.t_money,f.study_yeah,f.teacher,f.f_pingjia,f.f_teacher,f.f_teacher_date,f.f_soure,f.other_remarks,f.addtime,f.state,f.enrol_date,f.graduation_date,f.grant_date,f.school_status')
                ->where(array('u.id'=>$map['id'],'u.level'=>$map['level']))
                ->select();

            foreach ($Users as $k=>$v){
                if($v['sex']==1){
                    $Users[$k]['sex'] = '男';
                }else{
                    $Users[$k]['sex'] = '女';
                }
            }

        if(!$Users) $this->error('没有查询到数据！');

        // print_r($Users);
        // die;

            /*--------------设置表头信息------------------*/

        $objPHPExcel->setActiveSheetIndex(0)

            ->setCellValue('A1', 'ID')
            ->setCellValue('B1', '登录号')
            ->setCellValue('C1', '用户名')
            ->setCellValue('D1', '性别')
            ->setCellValue('E1', '民族')
            ->setCellValue('F1', '身份证号码')
            ->setCellValue('G1', '文化程度')
            ->setCellValue('H1', '籍贯')
            ->setCellValue('I1', '电话')
            ->setCellValue('J1', '紧急联系人姓名')
            ->setCellValue('K1', '紧急联系电话')
            ->setCellValue('L1', 'Emeil')
            ->setCellValue('M1', 'QQ')
            ->setCellValue('N1', '微信')
            ->setCellValue('O1', '公司及职位')
            ->setCellValue('P1', '原毕业院校及专业')
            ->setCellValue('Q1', '现住地址')
            ->setCellValue('R1', '报考院校')
            ->setCellValue('S1', '报考专业')
            ->setCellValue('T1', '报读层次')
            ->setCellValue('U1', '学习类型')
            ->setCellValue('V1', '学籍状态')
            ->setCellValue('W1', '学费')
            ->setCellValue('X1', '日期')
            ->setCellValue('Y1', '票据号码')
            ->setCellValue('Z1', '金额')
            ->setCellValue('AA1', '日期')
            ->setCellValue('AB1', '票据号码')
            ->setCellValue('AC1', '金额')
            ->setCellValue('AD1', '备注');

        /*--------------开始从数据库提取信息插入Excel表中------------------*/

        $i=2;  //定义一个i变量，目的是在循环输出数据是控制行数

        $count = count($Users);  //计算有多少条数据

        for ($i = 2; $i <= $count+1; $i++) {

            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $Users[$i-2][id]);
            $objPHPExcel->getActiveSheet()->setCellValue('B' . $i, $Users[$i-2][mobile]);
            $objPHPExcel->getActiveSheet()->setCellValue('C' . $i, $Users[$i-2][name]);
            $objPHPExcel->getActiveSheet()->setCellValue('D' . $i, $Users[$i-2][sex]);
            $objPHPExcel->getActiveSheet()->setCellValue('E' . $i, $Users[$i-2][nation]);
            $objPHPExcel->getActiveSheet()->setCellValue('F' . $i, $Users[$i-2][idcard]);
            $objPHPExcel->getActiveSheet()->setCellValue('G' . $i, $Users[$i-2][education]);
            $objPHPExcel->getActiveSheet()->setCellValue('H' . $i, $Users[$i-2][p_origin]);
            $objPHPExcel->getActiveSheet()->setCellValue('I' . $i, $Users[$i-2][tel]);
            $objPHPExcel->getActiveSheet()->setCellValue('J' . $i, $Users[$i-2][em_name]);
            $objPHPExcel->getActiveSheet()->setCellValue('K' . $i, $Users[$i-2][em_tel]);
            $objPHPExcel->getActiveSheet()->setCellValue('L' . $i, $Users[$i-2][email]);
            $objPHPExcel->getActiveSheet()->setCellValue('M' . $i, $Users[$i-2][qq]);
            $objPHPExcel->getActiveSheet()->setCellValue('N' . $i, $Users[$i-2][wechat]);
            $objPHPExcel->getActiveSheet()->setCellValue('O' . $i, $Users[$i-2][company]);
            $objPHPExcel->getActiveSheet()->setCellValue('P' . $i, $Users[$i-2][old_school]);
            $objPHPExcel->getActiveSheet()->setCellValue('Q' . $i, $Users[$i-2][address]);
            $objPHPExcel->getActiveSheet()->setCellValue('R' . $i, $Users[$i-2][university_type]);
            $objPHPExcel->getActiveSheet()->setCellValue('S' . $i, $Users[$i-2][university_apply]);
            $objPHPExcel->getActiveSheet()->setCellValue('T' . $i, $Users[$i-2][university_course]);
            $objPHPExcel->getActiveSheet()->setCellValue('U' . $i, $Users[$i-2][university_type]);
            $objPHPExcel->getActiveSheet()->setCellValue('V' . $i, $Users[$i-2][school_staute]);
            $objPHPExcel->getActiveSheet()->setCellValue('W' . $i, $Users[$i-2][tuition]);
            $objPHPExcel->getActiveSheet()->setCellValue('X' . $i, $Users[$i-2][f_date]);
            $objPHPExcel->getActiveSheet()->setCellValue('Y' . $i, $Users[$i-2][f_date_num]);
            $objPHPExcel->getActiveSheet()->setCellValue('Z' . $i, $Users[$i-2][f_money]);
            $objPHPExcel->getActiveSheet()->setCellValue('AA' . $i, $Users[$i-2][s_date]);
            $objPHPExcel->getActiveSheet()->setCellValue('AB' . $i, $Users[$i-2][s_date_num]);
            $objPHPExcel->getActiveSheet()->setCellValue('AC' . $i, $Users[$i-2][s_money]);
            $objPHPExcel->getActiveSheet()->setCellValue('AD' . $i, $Users[$i-2][other_remarks]);

        }

        /*--------------下面是设置其他信息------------------*/

        $objPHPExcel->getActiveSheet()->setTitle('user');      //设置sheet的名称

        $objPHPExcel->setActiveSheetIndex(0);                   //设置sheet的起始位置

        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');   //通过PHPExcel_IOFactory的写函数将上面数据写出来

        $PHPWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel,"Excel2007");

        header('Content-Disposition: attachment;filename="'.date("Y-m-d",time()).'会员信息.xlsx"');

        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

        $PHPWriter->save("php://output"); //表示在$path路径下面生成demo.xlsx文件

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

    public function usermessage(){
        
        if(request()->isPost()){
            $data = input('post.');
            if(empty($data['contant'])){
                return $res = ['code'=>0,'msg'=>'发送内容不能为空！'];
            }
            $data['addtime'] = time();
            if(db('messages')->insert($data)){
                return $res = ['code'=>1,'msg'=>'发送成功！'];
            }
        }
        
    }
// //微信消息
//     public function usermessage(){
//                $message_content = input('post.message_content');
//                 if($message_content != ''){
//                         $info = db('wx_config')->where([ 'key' => 'SHOPWCHAT'])->field('value')->find();
//                         if (empty($info['value'])) {
//                             $info= array(
//                                 'value' => array(
//                                     'appid' => '',
//                                     'appsecret' => '',
//                                     'token' => ''
//                                 ),
//                                 'is_use' => 1
//                             );
//                         } else {
//                             $info['value'] = json_decode($info['value'], true);
//                         }
//                         $wchat_config = $info;
//                         $this->AppID = $wchat_config['value']['appid'];
//                         $this->AppSecret = $wchat_config['value']['appsecret'];
//                         $json_token=$this->http_request("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$this->AppID."&secret=".$this->AppSecret);
//                         $access_token=json_decode($json_token,true);
//                         $this->access_token=$access_token[access_token];
//                         $template=array(
//                                 'touser'=>'o85Hs0pZ87S2xk4jnaxKbV4Tnjfc',
//                                 'template_id'=>"BBCOOyGZAx2C-j1YABh09cN0mBHFB5Q-Tv32H-7e_U8",
//                                 'topcolor'=>"#7B68EE",
//                                 'data'=>array(
//                                         'first'=>array('value'=>urlencode('新消息提醒!'),'color'=>'#ff0000'),
//                                         'keyword1'=>array('value'=>urlencode('重要通知'),'color'=>'#666666'),
//                                         'keyword2'=>array('value'=>urlencode($message_content),'color'=>'#666666'), )
//                                     );
//                         $json_template=json_encode($template);
//                         $url="https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=".$this->access_token;
//                         $res=$this->http_request($url,urldecode($json_template));
//                         $res = json_decode($res,TRUE);
//                         if ($res['errcode']==0){
//                             return $res = ['code'=>1,'msg'=>'发送成功！'];
//                         }else{
//                             return $res = ['code'=>0,'msg'=>'发送失败！'];
//                         }
//                 }else{
//                     return $res = ['code'=>0,'msg'=>'消息内容为空！'];
//                 }
//             }

//     public function http_request($url,$data=array()){
//             $ch = curl_init();
//             curl_setopt($ch, CURLOPT_URL, $url);
//             curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
//             curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
//             curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
//             // POST数据
//             curl_setopt($ch, CURLOPT_POST, 1);
//             // 把post的变量加上
//             curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
//             $output = curl_exec($ch);
//             curl_close($ch);
//             return $output;
//         }







}