<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:60:"/www/web/lirenjy/public_html/app/home/view/article_show.html";i:1523346664;s:59:"/www/web/lirenjy/public_html/app/home/view/common_head.html";i:1522462194;s:61:"/www/web/lirenjy/public_html/app/home/view/common_footer.html";i:1522652358;}*/ ?>
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
<div class="news-fluid">
	<div class="news-ad"><img src="/public/static/home/images/news-ad.png" /></div>
</div>
<div class="show-info">
	<div class="show-main">
		<div class="show-main-nav"><span>当前位置：</span><i><a href="/">首页</a></i> > <i><a href="home-zkzx-index-catId-<?php echo $info['catid']; ?>.html"><?php echo $catname; ?></a></i> > <i><?php echo $info['title']; ?></i> > 正文</div>
		<div class="show-content">
			<div class="show-title">
				<h3 style="<?php echo $info['title_color']; ?>;<?php echo $info['title_weight']; ?>"><?php echo $info['title']; ?></h3>
				<span>发布时间：<?php echo toDate($info['createtime'],'Y-m-d'); ?> </span>
				<div class="content"><?php echo $info['content']; ?></div>
			</div>
		</div>
		<div class="show-tuijian">
			<h3>相关推荐</h3>
			<ul>
    				<?php $result = db("article")->alias("a")->join("lz_category c","a.catid = c.id","left")
            ->where("posid = 2 and catid=$info[catid]")
            ->field("a.*,c.catdir")
            ->limit(6)
            ->order("listorder asc,createtime desc")
            ->select();foreach ($result as $k=>$vo):?>
                    <li><a href="<?php echo url('home/'.$vo['catdir'].'/info',array('id'=>$vo['id'],'catId'=>$vo['catid'])); ?>" title="<?php echo $vo['title']; ?>"><?php echo $vo['title']; ?></a></li>
                    <?php endforeach ?>
			</ul>
		</div>
	</div>
	<div class="show-right">
		<a href="#"><img src="/public/static/home/images/show-1.png"  /></a>
		<a href="#"><img src="/public/static/home/images/show-2.png"  /></a>
		<a href="#"><img src="/public/static/home/images/show-3.png"  /></a>
	</div>
</div>
<div style="clear:both;"></div>
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