<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:59:"/www/web/lirenjy/public_html/app/home/view/index_index.html";i:1522652100;s:59:"/www/web/lirenjy/public_html/app/home/view/common_head.html";i:1522462194;s:61:"/www/web/lirenjy/public_html/app/home/view/common_footer.html";i:1522652358;}*/ ?>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <title><?php if($info['title']): ?><?php echo $info['title']; elseif($title): ?><?php echo $title; else: ?><?php echo $sys['title']; endif; ?></title>
        <meta name="keywords" content="<?php if($info['keywords']): ?><?php echo $info['keywords']; elseif($keywords): ?><?php echo $keywords; else: ?><?php echo $sys['key']; endif; ?>" />
        <meta name="description" content="<?php if($info['description']): ?><?php echo $info['description']; elseif($description): ?><?php echo $description; else: ?><?php echo $sys['des']; endif; ?>" />
        <!--public start-->
        <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
        <link rel="stylesheet" href="/public/static/home/css/bootstrap.min.css" />
        <link rel="stylesheet" href="/public/static/home/css/style.css" />
        <link rel="stylesheet" href="/public/static/home/css/media.css" />
        <script type="text/javascript" src="/public/static/home/js/bootstrap.min.js"></script>
        <script src="/public/static/home/js/jq.js"></script>
        <script src="/public/static/home/js/main.js"></script>
        <!--public end-->
    </head>

    <body>
        <header>
            <div class="header">
                <div class="public-1">
                    <p class="header-paty-1">立德树人是教育根本！<span>联系电话：18128859004</span></p>
                </div>
                <div class="public-2">
                    <nav>
                        <!-- logo -->
                        <div class="nav-logo">
                            <a href="/"><img src="/public/static/home/img/logo.png" alt=""></a>
                        </div>

                        <!-- 控制menu -->
                        <div class="nav-menu">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>

                        <!-- 菜单 -->
                        <ul class="nav-list">
                            <h3>立人助学</h3>
                                <li><a <?php if($controller == 'index'): ?>class="active"<?php endif; ?> href="<?php echo url('home/index/index'); ?>" title="立人助学">首页</a></li>
                                <?php if(is_array($category) || $category instanceof \think\Collection || $category instanceof \think\Paginator): $i = 0; $__LIST__ = $category;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                                <li>
                                    <a <?php if($controller == $vo['catdir']): ?>class="selected"<?php endif; ?> href="<?php echo url('home/'.$vo['catdir'].'/index',['catId'=>$vo['id']] ); ?>" title="<?php echo $vo['catname']; ?>"><?php echo $vo['catname']; ?></a>
                                    <?php if($vo['child'] == 1): ?>
                                    <ul class="menu">
                                        <?php if(is_array($vo['sub']) || $vo['sub'] instanceof \think\Collection || $vo['sub'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['sub'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
                                            <li><a href="<?php echo url('home/'.$vo['catdir'].'/index',['catId'=>$v['id']] ); ?>" title="<?php echo $v['catname']; ?>"><?php echo $v['catname']; ?></a></li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    </ul>
                                    <?php endif; ?>
                                </li>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                        <div class="nav_tel"><img src="/public/static/home/img/tel.png" /></div>
                    </nav>

                    <script>
                        $(document).click(function() {
                            $('.nav-list').removeClass('open')
                        })
                        $('.nav-menu,.nav-list').click(function(e) {
                            e.stopPropagation()
                        })
                        $('nav').find('.nav-menu').click(function(e) {
                            $('.nav-list').toggleClass('open')
                        })
                    </script>
                </div>
            </div>
        </header>
<!-- header end here -->
                <div class="cd-hero">
                    <ul class="cd-hero-slider">
                        <li class="selected" id="banner-1">
                            <div class="cd-full-width">
                                    <div class="cd-btn slide-1 banner-1-1">
                                        <p>零基础，没时间也可以上大学! </p>
                                        <span>我们给你<i>会偷懒</i>的学历！</span>
                                    </div>
                            </div>

                        </li>
                        <li id="banner-2">
                            <div class="cd-full-width">
                                <div class="cd-btn">
                                    <img src="/public/static/home/images/banner-2-2.png"/>
                                </div>
                            </div>

                        </li>
                        <li id="banner-3">
                            <div class="cd-full-width">
                                <div style=" height: 500px;">
                                    <img src="/public/static/home/images/banner-3-2.png"/>
                                </div>
                            </div>
                        </li>
                        <li id="banner-4">
                            <div class="cd-full-width">
                                <div class="cd-btn">
                                <img src="/public/static/home/images/banner-4-2.png"/>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="cd-slider-nav">
                        <div class="nav">
                            <span class="cd-marker item-1"></span>
                            <ul>
                                <li class="selected">
                                    <a href="javascript:"></a>
                                </li>
                                <li>
                                    <a href="javascript:"></a>
                                </li>
                                <li>
                                    <a href="javascript:"></a>
                                </li>
                                <li>
                                    <a href="javascript:"></a>
                                </li>
                            </ul>
                        </div>
                    </div>        
                    <!--学历查询登录框-->
                    <div class="login-index">
                        <h3>———<span>学历查询</span>———</h3>
                        <form>
                            <div class="card-num"><input class="card-num-input" type="text" placeholder="输入身份证号" /></div>
                            <div class="telphone"><input class="telphone-input" type="text" placeholder="输入手机号" /></div>
                            <div class="yanzhengma"><input class="yanzhengma-input" type="text" placeholder="输入验证码" /></div>
                            <button class="button-index">查询</button>
                            <a href="" class="help-index">请求帮助>></a>
                        </form>
                    </div>
                    <!--学历查询登录框-->
                </div>

<script type="text/javascript">
var t;
var index = 0;
/////自动播放
t = setInterval(play, 5000);
$(function(){  
                $(".cd-hero").on({  
                    mouseover : function(){  
                        clearInterval(t);
                    } ,  
                    mouseout : function(){  
                        t = setInterval(play, 3000)
                    }   
                }) ;  
            }) ;  
function play() {
    index++;
    if (index > 3) {
        index = 0
    }
    $(".cd-hero-slider").find("li").eq(index-1).removeClass("selected");
    $(".cd-hero-slider").find("li").eq(index-1).addClass("move-left");
    $(".cd-hero-slider").find("li").eq(index).addClass("selected from-right");
    if(index == 0){
        $(".cd-hero-slider").find("li").removeClass();
        $(".cd-hero-slider").find("li").eq(index).addClass("selected");
        
    }
    $(".nav").find("li").eq(index).addClass("selected");
    $(".nav").find("li").removeClass("selected");
    $(".nav").find("li").eq(2).addClass("selected");
    if(index == 0){
        $(".nav").find("span").removeClass("item-4");
    }else{
        $(".nav").find("span").removeClass("item-"+(index));
    }
    $(".nav").find("span").addClass("item-"+(index+1));
};
</script>












<!--最新动态-->
<script type="text/javascript" src="/public/static/home/js/scroll.js"></script>
<style>
.myscroll { height: 145px; margin: 0 auto; line-height: 21px; overflow: hidden; font-size:14px;}
.myscroll li { height: 21px; margin-left: 25px; color: #fff;}
</style>
<script type="text/javascript">
$(function(){
    $('.myscroll').myScroll({
        speed: 80, //数值越大，速度越慢
        rowHeight: 30 //li的高度
    });
});
</script>
            <div class="index-news">
                <div class="index-news-main">
                    <h3><span>最新动态</span></h3>
                    <div class="index-news-left">
                        <div class="index-news-left-blue">
                            
                            <h4>通&nbsp;&nbsp;&nbsp;&nbsp;<img src="/public/static/home/img/notice.svg" /> &nbsp;&nbsp;&nbsp;&nbsp;知</h4>
                            <ul>
                                <?php $result = db("article")->where("catId=14")->limit(5)->order("id desc")->select();foreach ($result as $k=>$vo):?>
                                <li><a href="<?php echo url('home/zkzx/info',array('id'=>$vo['id'],'catId'=>$vo['catid'])); ?>"><?php echo $vo['title']; ?></a></li>
                                <?php endforeach ?>
                            </ul>
                        </div>
                        <div class="index-news-left-blue-line"></div>
                    </div>
                    <div class="index-news-right">
                        <div class="index-news-left-yellow">
                            
                            <h4>毕&nbsp;&nbsp;业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/public/static/home/img/student.svg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;单</h4>
                            <div class="myscroll">
                                <ul>
                                    <?php $result = db("student")->where("")->limit(15)->order("id desc")->select();foreach ($result as $k=>$vo):?>
                                    <li><?php echo $vo['title']; ?><?php echo $vo['content']; ?></li>
                                    <?php endforeach ?>
                                </ul>
                            </div>
                        </div>
                        <div class="index-news-left-yellow-line"></div>
                    </div>
                </div>
            </div>















<!--最新动态-->
<!--主推院校-->
    <div class="index-Colleges-bg">
        <div class="index-Colleges">
        <h3><span>主推院校</span></h3>
        <div class="index-Colleges-main">
            <ul>
                <?php $result = db("colleges")->where("posid = 1 and catId = 22")->limit(6)->order("id desc")->select();foreach ($result as $k=>$vo):?>
                <li>
                    <a href="<?php echo url('home/zsyx/info',array('id'=>$vo['id'],'catId'=>$vo['catid'])); ?>">
                        <img src="/public/<?php echo $vo['college_img']; ?>"  />
                        <span><?php echo $vo['title']; ?></span>
                        <p><?php echo $vo['description']; ?></p>
                    </a>
                </li>
                <?php endforeach ?>

            </ul>
        </div>
        </div>
    </div>
<!--主推院校-->
            
<!--主推院校-->
    <div class="index-Colleges-bg">
        <div class="index-Colleges">
        <h3><span>教育资讯</span></h3>
        <div class="index-info-main">
                <div class="index-info">
                    <h2>各院校报名时间</h2>
                    <div class="index-info-bg"></div>
                    <div class="index-info-more"><a href="/home-exam-info-id-103-catId-39.html">点击查看</a></div>
                </div>
        </div>
                
                
                
                
            <div class="index-info-b">
                <div class="index-info-bl">
                    <h2>2018最新考试动态</h2>
                    <ul>
                        <?php $result = db("article")->where("posid = 1 and catId=14")->limit(5)->order("id desc")->select();foreach ($result as $k=>$vo):?>
                            <li><a href="<?php echo url('home/zkzx/info',array('id'=>$vo['id'],'catId'=>$vo['catid'])); ?>"><?php echo $vo['title']; ?></a></li>
                        <?php endforeach ?>
                    </ul>
                    <div class="index-info-bl-more"><a href="/home-zkzx-index-catId-14">点击查看</a></div>
                </div>
                <div class="index-info-br">
                    <h2>学历政策</h2>
                    <ul>
                        <?php $result = db("article")->where("posid = 1 and catId=16")->limit(5)->order("id desc")->select();foreach ($result as $k=>$vo):?>
                            <li><a href="<?php echo url('home/zkzx/info',array('id'=>$vo['id'],'catId'=>$vo['catid'])); ?>"><?php echo $vo['title']; ?></a></li>
                        <?php endforeach ?>
                    </ul>
                    <div class="index-info-br-more"><a href="/home-zkzx-index-catId-16">点击查看</a></div>
                </div>
                <div class="index-info-bbl">
                    <h2>教育新闻</h2>
                    <ul>
                        <?php $result = db("article")->where("posid = 1 and catId=17")->limit(5)->order("id desc")->select();foreach ($result as $k=>$vo):?>
                            <li><a href="<?php echo url('home/zkzx/info',array('id'=>$vo['id'],'catId'=>$vo['catid'])); ?>"><?php echo $vo['title']; ?></a></li>
                        <?php endforeach ?>
                    </ul>
                    <div class="index-info-bbl-more"><a href="/home-zkzx-index-catId-17">点击查看</a></div>
                </div>
                <div class="index-info-bbr">
                    <h2>增值服务</h2>
                    <ul>
                        <?php $result = db("article")->where("posid = 1 and catId=18")->limit(5)->order("id desc")->select();foreach ($result as $k=>$vo):?>
                            <li><a href="<?php echo url('home/zkzx/info',array('id'=>$vo['id'],'catId'=>$vo['catid'])); ?>"><?php echo $vo['title']; ?></a></li>
                        <?php endforeach ?>
                    </ul>
                    <div class="index-info-bbr-more"><a href="/home-zkzx-index-catId-18">点击查看</a></div>
                </div>
                <div class="index-info-yellow"></div>
                <div class="index-info-green"></div>
            </div>
        </div>
    </div>
<!--主推院校--> 
<!-- footer start here -->
<footer>
<!--友情链接-->
<div class="link">
    <div class="link-main">
        <span>友情链接</span>
        <ul>
                <?php if(is_array($linkList) || $linkList instanceof \think\Collection || $linkList instanceof \think\Paginator): $i = 0; $__LIST__ = $linkList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <li><a href="<?php echo $vo['url']; ?>" rel="external" title="<?php echo $vo['name']; ?>"><?php echo $vo['name']; ?></a></li>
                <?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
    </div>
</div>
<!--友情链接-->
<div class="footer">
    <div class="footer-main">
        <div class="footer-main-left">
            <ul>
                <h3>帮助中心</h3>
                <li><a href="/home-register-index-catId-34.html">立人注册</a></li>
                <li><a href="/home-register-index-catId-36.html">资料提交说明</a></li>
                <li><a href="/home-register-index-catId-35.html">学员政策</a></li>
            </ul>
            <ul>
                <h3>复习备考</h3>
                <li><a href="/home-register-index-catId-38.html">考试必过技巧</a></li>
            </ul>
            <ul>
                <h3>关于我们</h3>
            <?php if(is_array($category) || $category instanceof \think\Collection || $category instanceof \think\Paginator): $i = 0; $__LIST__ = $category;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;if($vo['id'] == 26): if(is_array($vo['sub']) || $vo['sub'] instanceof \think\Collection || $vo['sub'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['sub'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
                        <li <?php if(input('catId') == $v['id']): ?>class="selected"<?php endif; ?>><a href="<?php echo url('home/'.$vo['catdir'].'/index',['catId'=>$v['id']] ); ?>" title="<?php echo $v['catname']; ?>"><?php echo $v['catname']; ?></a></li>
                    <?php endforeach; endif; else: echo "" ;endif; endif; endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <ul class="service-info">
                <h3>服务热线</h3>
                <li><span>电话：18128859004</span></li>
                <li><span>邮箱：lirenjiaoyu@100.com</span></li>
                <li><span>QQ：1099026622</span></li>
            </ul>
        </div>
        <div class="footer-main-right">
            <img src="/public/static/home/images/qcode.png" />
            <span>微信关注<br />获得更多资讯</span>
            <p>地址：深圳市坂田街道五和大道南108号凯旋商业大厦五楼 （五号线：五和地铁站B出口直行100米）</p>
        </div>
    </div>
    <p>Copyright ©   2008-2018  深圳市立人教育中心 ALL RIGHT RESERVED</p>
    <p><a href="http://www.miitbeian.gov.cn/" style="color:#fff">粤ICP备18030932号-1</a></p>

    <!-- 客服代码 -->
    <div class="customer_service">
        <div class="customer_service_1">
            <img src="/public/static/home/images/qcode.png">
            <p>微信关注<br />更多资讯</p>
        </div>
        <div class="customer_service_2">
            <img src="/public/static/home/img/tel.svg">
            <p><a href="#">通话</a></p>
        </div>
        <div class="customer_service_3">
            <img src="/public/static/home/img/service.svg">
            <p><a href="">客服</a></p>
        </div>
    </div>




</div>
</footer>





    </body>

</html>