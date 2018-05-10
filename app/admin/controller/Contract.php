<?php

namespace app\admin\controller;

use think\Db;

use think\Controller;



class Contract extends Common{

    public function index(){
        
       if(request()->isPost()) {

            $list = db('Contract')

                ->field('contract_id,title,open')

                ->order('contract_id desc')

                ->select();

            return $result = ['code'=>0,'msg'=>'获取成功!','data'=>$list,'count'=>$list['total'],'rel'=>1];

        }

        return $this->fetch();
    }

       public function add(){

        if(request()->isPost()) {

            //构建数组

            $data = input('post.');

            db('contract')->insert($data);

            $result['code'] = 1;

            $result['msg'] = '添加成功!';

            cache('adList', NULL);

            $result['url'] = url('index');

            return $result;

        }else{

            $adtypeList=db('ad_type')->order('sort')->select();

            $this->assign('adtypeList',json_encode($adtypeList,true));

            $this->assign('title',lang('add').lang('ad'));

            $this->assign('info','null');

            return $this->fetch('form');

        }

    }

    public function edit(){

        if(request()->isPost()) {

            $data = input('post.');

            db('contract')->update($data);

            $result['code'] = 1;

            $result['msg'] = '修改成功!';

            cache('adList', NULL);

            $result['url'] = url('index');

            return $result;

        }else{

            $contract_id=input('contract_id');

            $contractInfo=db('contract')->where(array('contract_id'=>$contract_id))->find();


            $this->assign('info',json_encode($contractInfo,true));

            $this->assign('title',lang('edit').lang('contract'));

            return $this->fetch('form');

        }

    }

    public function editState(){

        $id=input('post.id');

        $open=input('post.open');

        if(db('contract')->where('contract_id='.$id)->update(['open'=>$open])!==false){

            return ['status'=>1,'msg'=>'设置成功!'];

        }else{

            return ['status'=>0,'msg'=>'设置失败!'];

        }

    }

    public function del(){

        db('contract')->where(array('contract_id'=>input('contract_id')))->delete();

        cache('adList', NULL);

        return ['code'=>1,'msg'=>'删除成功！'];

    }

    public function cat(){

    	$contract_id=input('contract_id');

    	$res = db('contract')->where('contract_id',$contract_id)->find();

    	$this->assign('res',$res);

    	return $this->fetch('contract_style');

    }

}