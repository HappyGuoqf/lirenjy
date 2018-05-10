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
                    ->where('id','neq','15')
                    ->select();
        foreach ($category as $k => $v) {
            if($v['id']==19){
                $data1[$k]['url'] = $http.'/about-'.$v['id'].'.html';
                $data1[$k]['title'] = $v['catname'];
            }else{
                $data1[$k]['url'] = $http.'/home-'.$v['catdir'].'-index-catId-'.$v['id'].'.html';
                $data1[$k]['title'] = $v['catname'];
            }
        }
        //网站地图 招生院校 html
        $list = db('colleges')->field('id,catid,title')->order('id asc')->select();
        foreach ($list as $k => $v) {
                $data2[$k]['url'] = $http.'/home-zsyx-info-id-'.$v['id'].'-catId-'.$v['catid'].'.html';
                $data2[$k]['title'] = $v['title'];
        }
        //xml 使用
        //文章模型
        $article = db('article')->field('id,catid,title')->order('id asc')->select();
        foreach ($article as $k => $v) {
                $data3[$k]['url'] = $http.'/home-zsyx-info-id-'.$v['id'].'-catId-'.$v['catid'].'.html';
                $data3[$k]['title'] = $v['title'];
        }
        //xml
        // $data = array_merge($data1,$data2,$data3);
        // vendor("sitemaps.sitemaps");
        // $sitemaps = new \sitemaps();
        // foreach ($data as $v)
        //  {
        //      $sitemaps->AddItem($v['url'], 1);
        //  }
        // db('sitemap')->where('id=1')->update(array('time'=>time()));
        // $sitemaps->SaveToFile('sitemap.xml');

        //html



        $html = " <!DOCTYPE html><html><head><meta charset='utf-8' /> <title>立人承诺</title> <meta name='keywords' content='深圳继续教育,深圳学历教育,再教育,立人教育' /> <meta name='description' content='深圳立人教育专注学历教育提升,主要业务有成人高考,自学考试,网络教育,开放教育等二十所高校品牌的大专,本科助学辅导。经过多年努力毕业生多达6000余人,成为深圳地区具有规模和影响力的成人教育品牌,咨询热线:18128859004 ' /> <!--public start--> <meta name='viewport' content='width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0'> <link rel='stylesheet' href='/public/static/home/css/bootstrap.min.css' /> <link rel='stylesheet' href='/public/static/home/css/style.css' /> <link rel='stylesheet' href='/public/static/home/css/media.css' /><link rel='stylesheet' href='/public/static/home/css/sitemap.css' /> <link rel='shortcut icon' href='/public/static/home/images/favicon.ico' /> <script type='text/javascript' src='/public/static/home/js/bootstrap.min.js'></script> <script src='/public/static/home/js/jq.js'></script> <script src='/public/static/home/js/main.js'></script> <meta name='baidu-site-verification' content='meCYE1lTvN' /> </head> <body><header>";
        $html .= "<div class='header'> <div class='public-1'> <p class='header-paty-1'>欢迎光临深圳学历教育官网<span>联系电话：18128859004</span></p> </div> <div class='public-2'> <nav> <div class='nav-logo'> <a href='/'><img src='/public/static/home/img/logo.png' alt='立德树人是教育根本！'></a> </div> <div class='nav-menu'> <span></span> <span></span> <span></span> </div> <ul class='nav-list'> <h3>立人助学</h3> <li><a  href='/index.html' title='立人助学'>首页</a></li> <li> <a  href='/home-zsyx-index-catId-22.html' title='招生院校'>招生院校</a> </li> <li> <a  href='/home-zkzx-index-catId-13.html' title='招考资讯'>招考资讯</a> <ul class='menu'> <li><a href='/home-zkzx-index-catId-31.html' title='学习指引'>学习指引</a></li> <li><a href='/home-zkzx-index-catId-14.html' title='考试通知'>考试通知</a></li> <li><a href='/home-zkzx-index-catId-16.html' title='学历政策'>学历政策</a></li> <li><a href='/home-zkzx-index-catId-17.html' title='立人资讯'>立人资讯</a></li> <li><a href='/home-zkzx-index-catId-18.html' title='常见问题'>常见问题</a></li> </ul> </li> <li> <a class='selected' href='/about-19.html' title='立人承诺'>立人承诺</a> </li> <li> <a  href='/home-course-index-catId-30.html' title='在线课堂'>在线课堂</a> </li> <li> <a  href='/home-our-index-catId-26.html' title='关于我们'>关于我们</a> <ul class='menu'> <li><a href='/home-our-index-catId-29.html' title='公司简介'>公司简介</a></li> <li><a href='/home-our-index-catId-27.html' title='企业文化'>企业文化</a></li> <li><a href='/home-our-index-catId-24.html' title='大事记'>大事记</a></li> <li><a href='/home-our-index-catId-28.html' title='联系我们'>联系我们</a></li> <li><a href='/home-our-index-catId-25.html' title='法律声明'>法律声明</a></li> </ul> </li> </ul> <div class='nav_tel'><img src='/public/static/home/img/tel.png' /></div> </nav>  </div> </div> </header>";


        $html .="<div class='content'> <div class='map_main'> <div class='sitemap_con'> <div class='map_top'> <div class='site_r_link'> <a href='/sitemap.html'>HTM地图</a> | <a href='/sitemap.xml'> XML地图</a> </div> <div class='clear'> </div> </div> <div class='site_plc'> 您的位置： <a href='/' title='立人助学'>首页</a> &gt; 网站地图 </div>";











        $html .="<h4><a href='/' title='立人助学首页' target='_blank'>立人助学首页</a> </h4> <div class='b4'> <ul>";

        foreach ($data1 as $key => $value) {
            $html .="<li><a href='".$value['url']."' title='".$value['title']."' target='_blank'>".$value['title']."</a></li>";
        }
        

        $html .="</ul> <div class='clear'></div> </div>";


        $html .="<h4><a href='/' title='招生院校' target='_blank'>招生院校</a> </h4> <div class='b4'> <ul>";

        foreach ($data2 as $key => $value) {
            $html .="<li><a href='".$value['url']."' title='".$value['title']."' target='_blank'>".$value['title']."</a></li>";
        }
        $html .="</ul> <div class='clear'></div> </div>";

















        $html .= "</div></div></div><footer> <div class='link'> <div class='link-main'> <span>友情链接</span> <ul> <li><a href='http://www.jfrhsz.com/' rel='external' title='积分入户'>积分入户</a></li> <li><a href='http://www.chsi.com.cn/' rel='external' title='学信网'>学信网</a></li> <li><a href='http://www.eeagd.edu.cn' rel='external' title='广东省教育考试院'>广东省教育考试院</a></li> <li><a href='http://www.51a.gov.cn' rel='external' title='深圳招考网'>深圳招考网</a></li> <li><a href='http://022sanliedu.com' rel='external' title='天津拓展培训'>天津拓展培训</a></li> <li><a href='http://www.365youdan.com/' rel='external' title='友单传媒'>友单传媒</a></li> <li><a href='http://www.gdzp.org' rel='external' title='中鹏培训'>中鹏培训</a></li> </ul> </div> </div> <div class='footer'> <div class='footer-main'> <div class='footer-main-left'> <ul> <h3>帮助中心</h3> <li><a href='/home-register-index-catId-34.html'>立人注册</a></li> <li><a href='/home-register-index-catId-36.html'>资料提交说明</a></li> <li><a href='/home-register-index-catId-35.html'>学员政策</a></li> </ul> <ul> <h3>复习备考</h3> <li><a href='/home-register-index-catId-38.html'>考试必过技巧</a></li> </ul> <ul> <h3>关于我们</h3> <li ><a href='/home-our-index-catId-29.html' title='公司简介'>公司简介</a></li> <li ><a href='/home-our-index-catId-27.html' title='企业文化'>企业文化</a></li> <li ><a href='/home-our-index-catId-24.html' title='大事记'>大事记</a></li> <li ><a href='/home-our-index-catId-28.html' title='联系我们'>联系我们</a></li> <li ><a href='/home-our-index-catId-25.html' title='法律声明'>法律声明</a></li> </ul> <ul class='service-info'> <h3>服务热线</h3> <li><span>电话：18128859004</span></li> <li><span>邮箱：lirenjiaoyu@100.com</span></li> <li><span>QQ：1099026622</span></li> </ul> </div> <div class='footer-main-right'> <img src='/public/static/home/images/qcode.png' /> <span>微信关注<br />获得更多资讯</span> <p>地址：深圳市坂田五和南108号凯旋商业大厦五楼 （五号线：五和地铁站B出口直行100米）</p> </div> </div> <p>Copyright ©   2008-2018  深圳市立人教育中心 ALL RIGHT RESERVED</p> <p><a href='http://www.miitbeian.gov.cn/' style='color:#fff'>粤ICP备18030932号-1</a></p> <p><a href='/sitemap.html' target='_black' style='color:#fff'>网站地图</a></p> <div class='customer_service'> <div class='customer_service_1'> <img src='/public/static/home/images/qcode.png'> <p>微信关注<br />更多资讯</p> </div> <div class='customer_service_2'> <img src='/public/static/home/img/tel.svg'> <p><a href='https://lzt.zoosnet.net/LR/Chatpre.aspx?id=LZT28299655&cid=1524215053134506242337&lng=cn&sid=1524215053134506242337&p=http%3A//www.lirenjy.com/&r=http%3A//www.lirenjy.com/&msg=&d=1524215561397' target='_black'>通话</a></p> </div> <div class='customer_service_3'> <img src='/public/static/home/img/service.svg'> <p><a href='https://lzt.zoosnet.net/LR/Chatpre.aspx?id=LZT28299655&cid=1524215053134506242337&lng=cn&sid=1524215053134506242337&p=http%3A//www.lirenjy.com/&r=http%3A//www.lirenjy.com/&msg=&d=1524215561397' target='_black'>客服</a></p> </div> </div> </div> </footer> </body> </html>";

        file_put_contents('sitemap.html',$html);
        return ['code'=>1,'msg'=>'生成成功！'];       
    }
}