<?php
namespace app\home\controller;
use think\Db;
use think\Request;
use clt\Form;
class EmptyController extends Common{
    protected  $dao,$fields;
    public function _initialize()
    {
        parent::_initialize();
        $this->dao = db(DBNAME);
    }
    public function index(){
        if(DBNAME=='page'){
            $info = $this->dao->where('id',input('catId'))->find();
            $this->assign('info',$info);
            if($info['template']){
                $template = $info['template'];
            }else{
                $info['template'] = db('category')->where('id',$info['id'])->value('template_show');
                if($info['template']){
                    $template = $info['template'];
                }else{
                    $template = DBNAME.'_show';
                }
            }
            return $this->fetch($template);
        }else{
            if(DBNAME=='picture'){
                $setup = db('field')->where(array('moduleid'=>3,'field'=>'group'))->value('setup');
                $setup=is_array($setup) ? $setup: string2array($setup);
                $options = explode("\n",$setup['options']);
                foreach($options as $r) {
                    $v = explode("|",$r);
                    $k = trim($v[1]);
                    $optionsarr[$k]['val'] = $v[0];
                    $optionsarr[$k]['key'] = $k;
                }
                $this->assign('options',$optionsarr);
            }

            $map['catid'] = input('catId');
            if(DBNAME=='team'){
                $donation = db('donation')->order('id desc')->paginate($this->pagesize);
                $dpage = $donation->render();
                $dlist = $donation->toArray();
                $this->assign('dlist',$dlist['data']);
                $this->assign('dpage',$dpage);
                $list = $this->dao->where($map)->order('listorder asc,createtime desc')->select();
                foreach ($list as $k=>$v){
                    $list_style = explode(';',$v['title_style']);
                    $list[$k]['title_color'] =$list_style[0];
                    $list[$k]['title_weight'] =$list_style[1];
                    $title_thumb = $v['thumb'];
                    $list[$k]['title_thumb'] = $title_thumb?__PUBLIC__.$title_thumb:config('view_replace_str.__HOME__').'/images/portfolio-thumb/p'.($k+1).'.jpg';
                }
                $this->assign('list',$list);
            }else{
                
                $arrchildid = db('category')->where('id',$map['catid'])->value('arrchildid');
                $catname = db('category')->where('id',$map['catid'])->value('catname');
                $this->assign('catname',$catname);
                $this->assign('arrchildid',$arrchildid);
                $list=$this->dao->alias('a')
                    ->join(config('database.prefix').'category c','a.catid = c.id','left')
                    ->where(array('catid'=>array('in',$arrchildid)))
                    ->field('a.*,c.catdir')
                    ->order('listorder asc,createtime desc')
                    ->paginate($this->pagesize);
                // 获取分页显示
                $page = $list->render();
                $list = $list->toArray();
                foreach ($list['data'] as $k=>$v){
                    $list['data'][$k]['controller'] = $v['catdir'];
                    $list_style = explode(';',$v['title_style']);
                    $list['data'][$k]['title_color'] =$list_style[0];
                    $list['data'][$k]['title_weight'] =$list_style[1];
                    $title_thumb = $v['thumb'];
                    $list['data'][$k]['title_thumb'] = $title_thumb?__PUBLIC__.$title_thumb:config('view_replace_str.__HOME__').'/images/portfolio-thumb/p'.($k+1).'.jpg';
                }
                $this->assign('list',$list['data']);
                $this->assign('page',$page);
            }
			$cattemplate = db('category')->where('id',input('catId'))->value('template_list');
			$template =$cattemplate ? $cattemplate : DBNAME.'_list';
            return $this->fetch($template);
        }
    }
    public function info(){
        $this->dao->where('id',input('id'))->setInc('hits');
        $info = $this->dao->where('id',input('id'))->find();
        $catname = db('category')->where('id',$info['catid'])->value('catname');
        $this->assign('catname',$catname);
        $info['pic'] = $info['pic']?__PUBLIC__.$info['pic']:config('view_replace_str.__HOME__')."/images/sample-images/blog-post".rand(1,3).".jpg";
        $title_style = explode(';',$info['title_style']);
        $info['title_color'] = $title_style[0];
        $info['title_weight'] = $title_style[1];
        $title_thumb = $info['thumb'];
        $info['title_thumb'] = $title_thumb?__PUBLIC__.$title_thumb:config('view_replace_str.__HOME__').'/images/sample-images/blog-post'.rand(1,3).'.jpg';
        if(DBNAME=='picture'){
            $pics = explode(':::',$info['pics']);
            foreach ($pics as $k=>$v){
                $info['pics'][$k] = explode('|',$v);
            }
        }
        $this->assign('info',$info);

        if($info['template']){
			$template = $info['template'];
		}else{
			$cattemplate = db('category')->where('id',$info['catid'])->value('template_show');
			if($cattemplate){
				$template = $cattemplate;
			}else{
				$template = DBNAME.'_show';
			}
		}
        return $this->fetch($template);
    }
    public function senMsg(){
        $data = input('post.');
        $data['addtime'] = time();
        $data['ip'] = getIp();
        db('message')->insert($data);
        $result['status'] = 1;
        return $result;
    }

    public function record(){
        $data = input('post.');
        $captcha = $data['verify'];
        if(!captcha_check($captcha)){
            $this->assign('verify',"1");
        }else{
            $where = array(
                'idcard' => $data['idcard'],
                'tel'   => $data['tel']
            );
            $list = db('users_formal')->where($where)->field('id,university,idcard,tel,addtime')->select();
            foreach ($list as $k => $v) {
                $list[$k]['addtime'] = date('Y-m-d h:i:s',$v['addtime']);
            }
            $this->assign('num',count($list));
            $this->assign('list',$list);
        }
        return $this->fetch();
    }

    public function record_info($id){
        $list = db('users_formal')->find($id);
        $r = db('credentials')->field('user_id,enregister_pic,enregister_state')->where('enregister_state','2')->find($list['user_id']);
        $this->assign('r',$r);
        $where = array(
            'idcard' => $list['idcard'],
            'tel'   => $list['tel']
            );
        $info = db('users_formal')->where($where)->field('id,university,idcard,tel,addtime')->select();
            foreach ($info as $k => $v) {
                $info[$k]['addtime'] = date('Y-m-d h:i:s',$v['addtime']);
            }
        $this->assign('info',$info);
        $this->assign('list',$list);
        return $this->fetch();
    }
    public function check_verify($data){
        var_dump($data);
        if(!captcha_check($captcha)){
            return ["code"=>0,"msg"=>'验证码错误'];
        }else{
             //验证码正确
        }
    }

}

