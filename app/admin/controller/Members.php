<?php
namespace app\admin\controller;
use think\Db;
use think\Request;
use think\Controller;
use app\admin\model\Users as UsersModel;
class Members extends Common{

    //学员首页
    public function index(){
        if(request()->isPost()){
            $key=input('post.key');
            $page =input('page')?input('page'):1;
            $pageSize =input('limit')?input('limit'):config('pageSize');
            $list=db('users')->alias('u')
                ->join(config('database.prefix').'user_level ul','u.level = ul.level_id','left')
                ->field('u.*,ul.level_name')
                ->where('u.mobile','like',"%".$key."%")
                ->where('u.level = 10')
                ->order('u.id desc')
                ->paginate(array('list_rows'=>$pageSize,'page'=>$page))
                ->toArray();

            foreach ($list['data'] as $k=>$v){
                $list['data'][$k]['reg_time'] = date('Y-m-d H:s',$v['reg_time']);
            }
            //echo db('users')->getLastSql();
            return $result = ['code'=>0,'msg'=>'获取成功!','data'=>$list['data'],'count'=>$list['total'],'rel'=>1];
        }
        
        return $this->fetch();
    }

    public function list_info(){
            $id = input('get.id');
            $page =input('page')?input('page'):1;
            $pageSize =input('limit')?input('limit'):config('pageSize');
            $list=db('users_formal')
                ->where('user_id',$id)
                ->order('addtime desc')
                ->paginate(array('list_rows'=>$pageSize,'page'=>$page))
                ->toArray();
            foreach ($list['data'] as $k=>$v){
                $list['data'][$k]['addtime'] = date('Y-m-d H:s',$v['addtime']);
            }
            $this->assign('list',$list['data']);
            return $this->fetch();
    }

    public function see(){
        if($data = db('users_formal')->find(input('get.id'))){
            
            $res = db('credentials')->where('user_id',$data['user_id'])->find();
            if($res['enregister_state'] == 2){
                $data['enregister_pic'] = $res['enregister_pic'];
            }
            if($res['idcard_state'] == 2){
                $data['idcard_pic'] = $res['idcard_pic'];
            }
            if($res['f_idcard_state'] == 2){
                $data['f_idcard_pic'] = $res['f_idcard_pic'];
            }
            if($res['graduate_state'] == 2){
                $data['graduate_pic'] = $res['graduate_pic'];
            }
            if($res['verification_state'] == 2){
                $data['verification_pic'] = $res['verification_pic'];
            }
            if($res['work_state'] == 2){
                $data['work_pic'] = $res['work_pic'];
            }
            $this->assign('res',$data);
        }
    	return $this->fetch();
    }

    public function preview(){
        if($data = db('users_formal')->where('id',input('get.id'))->find()){
            $res = db('credentials')->where('user_id',$data['user_id'])->find();
            $signature = db('signature')->where(array('id'=>$data['id'],'user_id'=>$data['user_id']))->field('id,user_id,addtime,signature_num')->find();

            if($res['enregister_state'] == 2){
                $data['enregister_pic'] = $res['enregister_pic'];
            }
            if($res['idcard_state'] == 2){
                $data['idcard_pic'] = $res['idcard_pic'];
            }
            if($res['f_idcard_state'] == 2){
                $data['f_idcard_pic'] = $res['f_idcard_pic'];
            }
            if($res['graduate_state'] == 2){
                $data['graduate_pic'] = $res['graduate_pic'];
            }
            if($res['verification_state'] == 2){
                $data['verification_pic'] = $res['verification_pic'];
            }
            if($res['work_state'] == 2){
                $data['work_pic'] = $res['work_pic'];
            }
            $data['number'] = $signature['signature_num'];
            $data['time'] = date('Y-m-d',$signature['addtime']);
            
            $this->assign('res',$data);
        }
        return $this->fetch();
    }

    public function contract(){
        $id = input('get.id');
        $system = db('system')->field('id,name,url,title,key,des,bah,copyright,ads,tel,email,logo')->find($sys_id);
        $this->assign('system', $system);
        $res = db('users_formal')
                ->alias('a')
                ->where('a.id',$id)
                ->field('a.id,a.name,a.idcard,a.address,a.contract,a.tel,b.id,b.signature,b.addtime,b.signature_num')
                ->join('signature b','a.id=b.id')
                ->find();
        if($res['contract']){
            $r = db('contract')->where('title',$res['contract'])->find();
        }
        $res['contract_title'] = $r['title'];
        $res['company_name'] = $r['company_name'];
        $res['company_addr'] = $r['company_addr'];
        $res['company_phone'] = $r['company_phone'];
        $res['company_content'] = $r['content'];
        $res['pic'] = '/public'.$r['pic'];
        if($res){
            $this->assign('list',$res);
        }
        return $this->fetch();
    }


    public function upload(){
        $res = array();
        if ($_FILES["file"]["error"] > 0){
                $ret["message"] =  $_FILES["file"]["error"] ;
                $ret["status"] = 0;
                $ret["src"] = "";
                return json($ret);
            }else{
                    $pic =  $this->uploads();
                    if($pic['info']== 1){$url = '/uploads/certificates/'.$pic['savename'];
                    }else {
                    $ret["message"] = $this->error($pic['err']);
                    $ret["status"] = 0;
                    }
                    $ret["message"]= "图片上传成功！";
                    $ret["status"] = 1;
                    $ret["src"] = $url;
                    return json($ret);
                }
    }
    
    private function uploads(){
        $file = request()->file('file');        // 移动到框架应用根目录/public/uploads/ 目录下
        $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads' . DS . 'certificates');
        $reubfo = array();  //定义一个返回的数组
        if($info){
            $reubfo['info']= 1;
            $reubfo['savename'] = $info->getSaveName();
        }else{ // 上传失败获取错误信息
            $reubfo['info']= 0;
            $reubfo['err'] = $file->getError();;
        }
        return $reubfo;
    }

    public function from_data(){
        $ret = array();
        $data = input('post.');
        //var_dump($data);
        if(db('users_formal')->find($data['id'])){
            if(db('users_formal')->where('id',$data['id'])->update($data)){
                $ret["message"] =  "保存成功";
                $ret["status"] = 1;
                return json($ret);
            }
        }else{
            if ($data){
                    db('users_formal')->insert($data);
                    $ret["message"] =  "保存成功";
                    $ret["status"] = 1;
                    return json($ret);
                }else{
                    $ret["message"] =  "失败";
                    $ret["status"] = 0;
                    return json($ret);
                    }
            }

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

    public function photos(){
        $user_id = input('get.id');
        $table = db('credentials');
        $info = $table->where('user_id',$user_id)->find();
        $this->assign('info',$info);
        return $this->fetch();
    }

    public function cat(){
        $data = input('get.');
        $info = db('credentials')->where('user_id',$data['id'])->field('user_id,'.$data['type'])->find();
        $info['url'] = '/'.$info[$data['type']];
        unset($info[$data['type']]);
        $this->assign('info',$info);
        return $this->fetch();
    }

    public function state(){
        if(request()->Post()){
            $data = input('post.');
            $table = db('credentials');
            $table->where('user_id',$data['user_id'])->update([$data['type'].'state'=>$data['state']]);
            $state = $data['state'];            
            return ['code'=>1,'msg'=>'操作成功！'];
        }

    }





// //微信通知
//     public function usermessage(){
//                 $message_content = input('post.message_content');
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

    // public function http_request($url,$data=array()){
    //         $ch = curl_init();
    //         curl_setopt($ch, CURLOPT_URL, $url);
    //         curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    //         curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    //         curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    //         // POST数据
    //         curl_setopt($ch, CURLOPT_POST, 1);
    //         // 把post的变量加上
    //         curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    //         $output = curl_exec($ch);
    //         curl_close($ch);
    //         return $output;
    //     }

}