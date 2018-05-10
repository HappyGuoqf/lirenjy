<?php

namespace app\admin\controller;

use think\Db;

use think\Request;

use think\Controller;

class Apply extends Common

{

    public function index(){

        if(request()->isPost()) {

            $val=input('post.val');
            $page =input('page')?input('page'):1;
            $pageSize =input('limit')?input('limit'):config('pageSize');
            $list=db('apply')
                ->where('state',2)
                ->paginate(array('list_rows'=>$pageSize,'page'=>$page))
                ->toArray();
            
            foreach ($list['data'] as $k=>$v){
                 $list['data'][$k]['addtime'] = date('Y-m-d H:s',$v['addtime']);
                 $r = db('users')->field('id,mobile')->find($list['data'][$k]['user_id']);
                 $list['data'][$k]['user'] = $r['mobile'];

            }

            return $result = ['code'=>0,'msg'=>'获取成功!','data'=>$list['data'],'rel'=>1];

        }

        return $this->fetch();

    }

    public function change_state(){
        $id = input('get.id');
        $sql = db('apply')->where('id',$id)->update(['state'=>'']);
        $data = db('apply')->where('id',$id)->find();
        if($data['sex'] == '男'){ $data['sex'] = 1;}else{ $data['sex'] = 2;};
        $data['addtime'] = time();
        $res = db('users_formal')->insert($data);
        if($res){
            return $result = ['code'=>1,'msg'=>'审核通过!'];
        }else{
            return $result = ['code'=>0,'msg'=>'审核失败!'];
        }
        
    }

    public function del(){
        db('apply')->where(array('id'=>input('id')))->delete();

        cache('linkList', NULL);

        return ['code'=>1,'msg'=>'删除成功！'];

    }

    public function delall(){

        $map['id'] =array('in',input('param.ids/a'));

        db('apply')->where($map)->delete();



        $result['msg'] = '删除成功！';

        $result['code'] = 1;

        $result['url'] = url('index');

        cache('linkList', NULL);

        return $result;

    }

}