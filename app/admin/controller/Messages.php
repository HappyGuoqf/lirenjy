<?php

namespace app\admin\controller;

use think\Db;

use think\Request;

use think\Controller;

class Messages extends Common

{

    public function index(){

        if(request()->isPost()) {

            $link=db('messages')->where('user_id',null)->order('message_id desc')->select();

            foreach ($link as $k=>$v){

                $link[$k]['addtime'] = date('Y-m-d H:s',$v['addtime']);

            }
            return $result = ['code'=>0,'msg'=>'获取成功!','data'=>$link,'rel'=>1];

        }

        return $this->fetch();

    }




    //添加

    public function add(){

        if(request()->isPost()){

            $data = input('post.');

            $data['addtime'] = time();

            db('messages')->insert($data);

            $result['code'] = 1;

            $result['msg'] = '发送成功!';

            $result['url'] = url('index');

            cache('linkList', NULL);

            return $result;

        }else{

            $this->assign('title',lang('add').lang('link'));

            $this->assign('info','null');

            return $this->fetch('form');

        }

    }

    public function del(){

        db('messages')->where(array('message_id'=>input('message_id')))->delete();

        cache('linkList', NULL);

        return ['code'=>1,'msg'=>'删除成功！'];

    }

    public function delall(){

        $map['message_id'] =array('in',input('param.ids/a'));

        db('messages')->where($map)->delete();



        $result['msg'] = '删除成功！';

        $result['code'] = 1;

        $result['url'] = url('index');

        cache('linkList', NULL);

        return $result;

    }

}