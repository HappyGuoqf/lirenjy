<?php

namespace app\admin\controller;

use think\Db;

use think\Controller;



class Sitemaps extends Common{

    public function index(){
        $sitemap = db('sitemap')->where('id=1')->find();
        $this->assign('time',date("Y-m-d H:i:s",$sitemap['time']));
        return $this->fetch();
    }

    public function make(){
        $http = 'http://'.$_SERVER['SERVER_NAME'];
        $data = array();
        $data1 = array();
        $data2 = array();
        $category = db('category')
                    ->field('id,catdir,catname')
                    ->select();
        foreach ($category as $k => $v) {
            $data1[$k]['url'] = $http.'/home-'.$v['catdir'].'-index-catId-'.$v['id'].'.html';
            $data1[$k]['title'] = $v['catname'];
        }
        foreach ($category as $k => $v) {
            $list[$k]['catdir'] = array('catdir' => $v['catdir']);
            $list[$k]['info'] = db('article')->field('id,catid,title')->where(array('catid'=>$v['id']))->order('id asc')->select();
            if(empty($list[$k]['info'])){
                unset($list[$k]);
            }
        }
        foreach ($list as $k => $v) {
            foreach ($v['info'] as $key => $value) {
                $data2[$key]['url'] = $http.'/home-'.$v['catdir']['catdir'].'-info-id-'.$value['id'].'-catId-'.$value['catid'].'.html';
                $data2[$key]['title'] = $value['title'];
            }
        }
        $data = array_merge($data1,$data2);
        vendor("sitemaps.sitemaps");
        $sitemaps = new \sitemaps();
        foreach ($data as $v)
         {
             $sitemaps->AddItem($v['url'], 1);
         }
        db('sitemap')->where('id=1')->update(array('time'=>time()));
        $sitemaps->SaveToFile('sitemap.xml');



        $html = "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>";
        $html .="<head>";
        $html .="<title>网站地图-深圳继续教育,成人高考,自学考试,网络教育,开放教育-立人教育</title>";
        $html .="<meta http-equiv='Content-type' content='text/html;' charset='utf-8' />";
        $html .="<style type='text/css'>.STYLE1 {font-size: 12px;color: #333333;}</style>";
        $html .="</head>";
        $html .=" <body>";
        $html .="<table align='center'><tr  align='center'><td align='center'><table width='766' border='0' ><tr align='left'><td class='STYLE1' ><span >网站地图(Build090324)：(".date("Y-m-d h:i:s",time()).")</span></td></tr>";
        foreach ($data as $key => $value) {
        $html .="<tr align='left'><td width='760' class='STYLE1'>".$key.".&nbsp;<a href='".$value['url']."'>".$value['title']."</a></td></tr>";
        }
        $html .="<table width=940><tr align='right'><td align='right' class='STYLE1'>generated by <a target='_blank' href='http://www.lirenjy.com/'>立人教育网</a></td></tr></table></body></html>";
        file_put_contents('sitemap.html',$html);
        return ['code'=>1,'msg'=>'生成成功！'];       
    }
}