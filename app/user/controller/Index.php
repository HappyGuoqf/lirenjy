<?php

namespace app\user\controller;

use think\Input;
use think\Session;
class Index extends Common{

    public function _initialize(){

        parent::_initialize();
        if (!session('user_id')) {
            $this->redirect('login/index');
        }
        $this->user_id = session('user_id');
        $r = db('users')->field('id,level')->find($this->user_id);
        $this->level = $r['level'];
    }

    public function index(){

        $this->assign('title','会员中心');
        $messages_num = db('messages')
        ->where('user_id',$this->user_id)
        ->whereor('user_id',null)
        ->field('message_id')
        ->count();
        $messages_record = db('messages_record')
        ->where('user_id',$this->user_id)
        ->find();
        $arr = unserialize($messages_record['record']);
        $user_num = 0;
        if($messages_record != null){
          $user_num = count($arr);
        }
      $this->assign('num',$messages_num-$user_num);
      return $this->fetch();

  }

    //通知消息
  public function messages(){
    $this->assign('title','通知消息');
    $list = db('messages')
            ->where('user_id',$this->user_id)
            ->whereor('user_id',null)
            ->order('addtime desc')->select();
    $data = array();
    foreach ($list as $key => $value) {
      $data[$key] = $value['message_id'];
  }
  $arr = array(
    'user_id' => $this->user_id,
    'record'  => serialize($data)
    ); 


  if(db('messages_record')->where('user_id',$this->user_id)->find()){
      db('messages_record')->where('user_id',$this->user_id)->update($arr);
  }else{
      db('messages_record')->insert($arr);
  }
  $this->assign('list',$list);
  return $this->fetch();
}



    //学历查询列表
public function education_list(){
    if($this->level == 1){ return $this->fetch('visitor'); }
    $this->assign('title','学历查询列表');
    $list = db('users_formal')
    ->field('id,university,university_course,addtime,state')
    ->order('addtime desc')
    ->where('user_id',$this->user_id)
    ->select();
    $this->assign('list',$list);
    return $this->fetch();
}

    //学历查询
public function education($id){
    $this->assign('title','学历中心');
    $list = db('users_formal')
    ->where('id',$id)
    ->find();
    $this->assign('list',$list);
    return $this->fetch();
}

    //积分查询
public function integral(){
    $this->assign('title','积分查询');
    return $this->fetch();
}

    //缴费信息
public function pay(){
    if($this->level == 1){ return $this->fetch('visitor'); }
    $this->assign('title','缴费信息');
    $list = db('users_formal')
    ->field('id,university,tuition,f_date,f_date_num,f_money,s_date,s_date_num,s_money,t_date,t_date_num,t_money,addtime')
    ->order('addtime desc')
    ->where('user_id',$this->user_id)
    ->select();
    $this->assign('list',$list);
    return $this->fetch();
}

     //账户设置
public function set(){
    $this->assign('title','账户设置');
    return $this->fetch();
}

     //我要报名
public function join(){
    $this->assign('title','我要报名');

    $contract = db('contract')->where('open',1)->field('contract_id,title,open')->select();
    $this->assign('contract',$contract);



    // $contract = db('contract')->where('open',1)->field('title,open')->select();
    // for($i=0;$i<count($contract);$i++){
    //     $contract_data[$i] = $contract[$i]['title'];
    // }
    // $contract_str = "['";
    // $contract_str .= implode(",",$contract_data);
    // $contract_str .= "']";
    // $contract_str = str_replace(",","','",$contract_str);
    // $this->assign('contract_data',$contract_str);



    if(db('apply')->where(array('user_id'=>$this->user_id,'state'=>2))->find()){
        header('Location: /user/index/msg');
        exit;
    }
    if(db('apply')->where(array('user_id'=>$this->user_id,'state'=>1))->find()){
        header('Location: /user/index/signature');
        exit;
    }
    if(request()->isPost()){
        $data = input('post.');
        $data['p_origin'] = $this->get_originn($data['idcard']);
        if($data){
            $data['addtime'] = time();
            if($id = db('apply')->insertGetId($data)){           
                return ['code'=>1,'msg'=>'成功,！'];
            }
        }
    }
    $this->assign('user_id',$this->user_id);
    return $this->fetch();
}

public function cat_contract($id){
	$this->assign('title','服务合同');
    $contract_data = db('contract')->where('contract_id',$id)->field('title,content')->find();
    $this->assign('contract',$contract_data);
    return $this->fetch();
}

     //消息页
public function msg(){
    $this->assign('title','消息提醒');
    return $this->fetch();
}

public function visitor(){
    $this->assign('title','消息提醒');
    return $this->fetch();
}

     //服务合同列表
public function contract_content_list(){
    if($this->level == 1){ return $this->fetch('visitor'); }
    $this->assign('title','服务合同列表');
    if(db('apply')->where(array('user_id'=>$this->user_id,'state'=>1))->find()){
        header('Location: /user/index/contract');
        exit;
    }
    $list = db('signature')
    ->alias('a')
    ->join('apply b','a.id=b.id')
    ->field('a.id,a.addtime,a.signature_num,a.addtime,b.id,b.university')
    ->order('a.addtime desc')
    ->where('a.user_id',$this->user_id)
    ->select();
    $this->assign('list',$list);
    return $this->fetch();
}



     //服务合同内容
public function contract_content($id){
    $this->assign('title','服务合同');
    $list = db('signature')->where('id',$id)->find();
    $contract_data = db('contract')->alias('c')
    ->join('users_formal u','c.title=u.contract')
    ->where('u.id',$id)
    ->field('c.title,c.company_name,c.pic,c.content,u.id,u.contract')
    ->find();
    if($contract_data == null){
    	return $this->fetch('msg');
    }
    $this->assign('contract',$contract_data);
    $this->assign('list',$list);
    return $this->fetch();
}

    //服务合同
public function contract(){
    $this->assign('title','服务合同');
	if(db('apply')->where(array('user_id'=>$this->user_id,'state'=>1))->find()){
        header('Location: /user/index/signature');
        exit;
    }
    if(db('apply')->where(array('user_id'=>$this->user_id,'state'=>2))->find()){
        header('Location: /user/index/msg');
        exit;
    }

    $res = db('apply')->where(array('user_id'=>$this->user_id,'state'=>1))->field('id')->count();
    $contract_data = db('contract')->where('title',$res['contract'])->field('title,content')->find();
    $this->assign('contract',$contract_data);
    $this->assign('id',$res['id']);
    return $this->fetch();
}

     //签名
public function signature(){
	$this->assign('title','签名');
	$r = db('apply')->where(array('user_id'=>$this->user_id,'state'=>1))->field('id,user_id,state')->find();
    if(request()->isPost()){
        $data = input('post.');
        $data['addtime'] = time();
        $data['signature_num'] = "LRJY".time().rand('100000','999999');
        db('signature')->insert($data);
        return ['code'=>1,'msg'=>'签名成功,！'];
    }
    $this->assign('user_id',$this->user_id);
    $this->assign('id',$r['id']);
    return $this->fetch();
}

     //签名合同
public function signature_contract(){
    $this->assign('title','签字预览');
    $id = input('get.id');
    $data['state'] = 2;
    // $list = db('signature')->where(array('user_id'=>$this->user_id,'id'=>$id))->find();
    db('apply')->where(array('user_id'=>$this->user_id,'state'=>1))->update($data);
    // $list['addtime'] = date('Y-m-d H:s',$list['addtime']);
    // $res = db('apply')->field('id,name')->find($id);
    // $contract_data = db('contract')->alias('c')
    // ->join('apply u','c.title=u.contract')
    // ->where('u.id',$id)
    // ->field('c.title,c.company_name,c.content,c.pic,u.id,u.contract')
    // ->find();
    // $this->assign('contract',$contract_data);
    // $this->assign('list',$list);
    return $this->fetch('msg');
}

public function get_originn($idcard){
        //截取前两位数
        $index = substr($idcard,0,2);
        $area = array(
            11 => "北京",
            12 => "天津",
            13 => "河北",
            14 => "山西",
            15 => "内蒙古",
            21 => "辽宁",
            22 => "吉林",
            23 => "黑龙江",
            31 => "上海",
            32 => "江苏",
            33 => "浙江",
            34 => "安徽",
            35 => "福建",
            36 => "江西",
            37 => "山东",
            41 => "河南",
            42 => "湖北",
            43 => "湖南",
            44 => "广东",
            45 => "广西",
            46 => "海南",
            50 => "重庆",
            51 => "四川",
            52 => "贵州",
            53 => "云南",
            54 => "西藏",
            61 => "陕西",
            62 => "甘肃",
            63 => "青海",
            64 => "宁夏",
            65 => "新疆",
            71 => "台湾",
            81 => "香港",
            82 => "澳门",
            91 => "国外"
        );
        return $area[$index];
    }

public function photos(){
    if($this->level == 1){ return $this->fetch('visitor'); }
    $table = db('credentials');
    $count = $table->where('user_id',$this->user_id)->count();
    if($count==0){
        $user_info = array(
            'user_id' => $this->user_id
            );
        $table->insert($user_info);
    }
    $info = $table->where('user_id',$this->user_id)->field('user_id,enregister_state,idcard_state,f_idcard_state,graduate_state,verification_state,work_state')->find();
    $res = array(
        '0' =>  '未提交',
        '1' => '审核中',
        '2' => '审核通过',
        '3' => '审核不通过'
        );
    unset($info['user_id']);
    foreach ($info as $key => $value) {
        foreach ($res as $k => $v) {
            if($k == $value){
                $data[$key] = $v;
            }
        }
    }
    //var_dump($data);
    $this->assign('info',$data);
    return $this->fetch();
}

public function enregister_pic(){
    $this->assign('title','登记照');
    $table = db('credentials');
    if(request()->isPost()){
        $imgData = $_REQUEST['images'];
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $imgData, $result)){
            $type = $result[2];
            $new_file = 'public/uploads/members/'.$this->user_id.time().'.'.$type;
              if (file_put_contents($new_file, base64_decode(str_replace($result[1], '', $imgData)))){
                $data = array(
                'user_id' => $this->user_id,
                'enregister_pic' => $new_file,
                'enregister_state'  => 1    //0默认，1审核中，2审核通过，3，审核不通过
                );
                if($table->where('user_id',$this->user_id)->count()){
                    $table->where('user_id',$this->user_id)->update($data);
                    
                }else{
                    $table->insert($data);
                }
                return ['code'=>1,'msg'=>'上传成功！'];
              }
            }
    }
    $info = $table->where('user_id',$this->user_id)->field('user_id,enregister_pic,enregister_state')->find();
    if($info['enregister_state'] == 1) {
        $info['enregister_state_title'] = "审核中";
    }else if($info['enregister_state'] == 2){
        $info['enregister_state_title'] = "审核通过";
    }else if($info['enregister_state'] == 3){
        $info['enregister_state_title'] = "审核不通过";
    }
    $this->assign('info',$info);
    return $this->fetch();
}

public function idcard_pic(){
    $this->assign('title','身份证正面');

    $table = db('credentials');
    if(request()->isPost()){
        $imgData = $_REQUEST['images'];
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $imgData, $result)){
            $type = $result[2];
            $new_file = 'public/uploads/members/'.$this->user_id.time().'.'.$type;
              if (file_put_contents($new_file, base64_decode(str_replace($result[1], '', $imgData)))){
                $data = array(
                'user_id' => $this->user_id,
                'idcard_pic' => $new_file,
                'idcard_state'  => 1
                );
                if($table->where('user_id',$this->user_id)->count()){
                    $table->where('user_id',$this->user_id)->update($data);
                }else{
                    $table->insert($data);
                }
                return ['code'=>1,'msg'=>'上传成功！'];
              }
            }
    }
    $info = $table->where('user_id',$this->user_id)->field('user_id,idcard_pic,idcard_state')->find();
    if($info['idcard_state'] == 1) {
        $info['idcard_state_title'] = "审核中";
    }else if($info['idcard_state'] == 2){
        $info['idcard_state_title'] = "审核通过";
    }else if($info['idcard_state'] == 3){
        $info['idcard_state_title'] = "审核不通过";
    }
    $this->assign('info',$info);
    return $this->fetch();
}

public function f_idcard_pic(){
    $this->assign('title','身份证反面');
    $table = db('credentials');
    if(request()->isPost()){
        $imgData = $_REQUEST['images'];
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $imgData, $result)){
            $type = $result[2];
            $new_file = 'public/uploads/members/'.$this->user_id.time().'.'.$type;
              if (file_put_contents($new_file, base64_decode(str_replace($result[1], '', $imgData)))){
                $data = array(
                'user_id' => $this->user_id,
                'f_idcard_pic' => $new_file,
                'f_idcard_state'  => 1
                );
                if($table->where('user_id',$this->user_id)->count()){
                    $table->where('user_id',$this->user_id)->update($data);
                    
                }else{
                    $table->insert($data);
                }
                return ['code'=>1,'msg'=>'上传成功！'];
              }
            }
    }
    $info = $table->where('user_id',$this->user_id)->field('user_id,f_idcard_pic,f_idcard_state')->find();
    if($info['f_idcard_state'] == 1) {
        $info['f_idcard_state_title'] = "审核中";
    }else if($info['f_idcard_state'] == 2){
        $info['f_idcard_state_title'] = "审核通过";
    }else if($info['f_idcard_state'] == 3){
        $info['f_idcard_state_title'] = "审核不通过";
    }
    $this->assign('info',$info);
    return $this->fetch();
}

public function graduate_pic(){
    $this->assign('title','毕业证');
    $table = db('credentials');
    if(request()->isPost()){
        $imgData = $_REQUEST['images'];
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $imgData, $result)){
            $type = $result[2];
            $new_file = 'public/uploads/members/'.$this->user_id.time().'.'.$type;
              if (file_put_contents($new_file, base64_decode(str_replace($result[1], '', $imgData)))){
                $data = array(
                'user_id' => $this->user_id,
                'graduate_pic' => $new_file,
                'graduate_state'  => 1
                );
                if($table->where('user_id',$this->user_id)->count()){
                    $table->where('user_id',$this->user_id)->update($data);
                    
                }else{
                    $table->insert($data);
                }
                return ['code'=>1,'msg'=>'上传成功！'];
              }
            }
    }
    $info = $table->where('user_id',$this->user_id)->field('user_id,graduate_pic,graduate_state')->find();
    if($info['graduate_state'] == 1) {
        $info['graduate_state_title'] = "审核中";
    }else if($info['graduate_state'] == 2){
        $info['graduate_state_title'] = "审核通过";
    }else if($info['graduate_state'] == 3){
        $info['graduate_state_title'] = "审核不通过";
    }
    $this->assign('info',$info);
    return $this->fetch();
}

public function verification_pic(){
    $this->assign('title','验证报告');
    $table = db('credentials');
    if(request()->isPost()){
        $imgData = $_REQUEST['images'];
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $imgData, $result)){
            $type = $result[2];
            $new_file = 'public/uploads/members/'.$this->user_id.time().'.'.$type;
              if (file_put_contents($new_file, base64_decode(str_replace($result[1], '', $imgData)))){
                $data = array(
                'user_id' => $this->user_id,
                'verification_pic' => $new_file,
                'verification_state'  => 1
                );
                if($table->where('user_id',$this->user_id)->count()){
                    $table->where('user_id',$this->user_id)->update($data);
                    
                }else{
                    $table->insert($data);
                }
                return ['code'=>1,'msg'=>'上传成功！'];
              }
            }
    }
    $info = $table->where('user_id',$this->user_id)->field('user_id,verification_pic,verification_state')->find();
    if($info['verification_state'] == 1) {
        $info['verification_state_title'] = "审核中";
    }else if($info['verification_state'] == 2){
        $info['verification_state_title'] = "审核通过";
    }else if($info['verification_state'] == 3){
        $info['verification_state_title'] = "审核不通过";
    }
    $this->assign('info',$info);
    return $this->fetch();
}

public function work_pic(){
    $this->assign('title','居住证明');
    $table = db('credentials');
    if(request()->isPost()){
        $imgData = $_REQUEST['images'];
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $imgData, $result)){
            $type = $result[2];
            $new_file = 'public/uploads/members/'.$this->user_id.time().'.'.$type;
              if (file_put_contents($new_file, base64_decode(str_replace($result[1], '', $imgData)))){
                $data = array(
                'user_id' => $this->user_id,
                'work_pic' => $new_file,
                'work_state'  => 1
                );
                if($table->where('user_id',$this->user_id)->count()){
                    $table->where('user_id',$this->user_id)->update($data);
                    
                }else{
                    $table->insert($data);
                }
                return ['code'=>1,'msg'=>'上传成功！'];
              }
            }
    }
    $info = $table->where('user_id',$this->user_id)->field('user_id,work_pic,work_state')->find();
    if($info['work_state'] == 1) {
        $info['work_state_title'] = "审核中";
    }else if($info['work_state'] == 2){
        $info['work_state_title'] = "审核通过";
    }else if($info['work_state'] == 3){
        $info['work_state_title'] = "审核不通过";
    }
    $this->assign('info',$info);
    return $this->fetch();
}

}