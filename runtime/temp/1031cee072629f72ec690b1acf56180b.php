<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:59:"/www/web/lirenjy/public_html/app/user/view/index/index.html";i:1525859099;s:64:"/www/web/lirenjy/public_html/app/user/view/common/loginHead.html";i:1524724888;s:61:"/www/web/lirenjy/public_html/app/user/view/common/footer.html";i:1523437223;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo $title; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="<?php echo $title; ?>">
    <meta name="description" content="<?php echo $title; ?>">

    <link rel="stylesheet" href="/public/static/user/lib/weui.min.css">
    <link rel="stylesheet" href="/public/static/user/css/jquery-weui.css">


</head>
<body>

<style type="text/css">
body, html {
  height: 100%;
  -webkit-tap-highlight-color: transparent;
  color: #333;
}
.weixin-block_10{ height: 15px; background-color: #f0efed;  border-bottom: 1px solid #e5e5e5; border-top:1px solid #e5e5e5;}
.block_10{ height: 10px; background-color: #f0efed;  border-bottom: 1px solid #e5e5e5;}
.weixin-header{ position: fixed; z-index: 10000; left: 0; top: 0; width: 100%; height: 30px; border-bottom: 1px solid #dddddd;background-color: #f0efed;}
.weixin-header p{ font-size:  12px; margin: 0 10px; line-height: 32px;  }
.weixin-h30{ height: 30px;  background: #f0efed; }
.weixin-h20{ height: 20px;  background: #f0efed; }
.weixin-h10{ height: 10px;  background: #f0efed; }
.weixin-bg{background: #f0efed;}
.weixin-basicinfo{ margin-top: 30px;
    height: 90px;
   }
.basicinfo_1{ width: 30%;
    float: left;
    display: inline-block; }
.basicinfo_1 img{    border-radius: 100px;
    width: 70px;
    margin: 10px auto;
    display: block;}
.basicinfo_2{ width: 70%; display: inline-block; margin-top: 20px;}

.basicinfo_2 h3{
    font-weight: initial;}



.my-info,.messages{ height: 46px;line-height: 46px;
    font-weight: normal;}
.my-info img{ margin: 11px 5px 0 15px;
    width: 20px;
    float: left;}
.messages img{ margin: 13px 5px 0 15px;
    width: 20px;
    float: left;}
.messages span{    font-size: 14px;}
.my-infos ul li{ margin: 0px 40px;
    list-style: none;
    font-size: 12px;
    line-height: 24px;
    height: 24px; }
.messages{ color: red; }
.messages_num span{    background-color: red;
    color: #fff;
    width: 25px;
    display: block;
    text-align: center;
    border-radius: 15px; }
.weui-cell:before{ border: none; }
.fun-list a{ border-bottom: 1px solid #ddd; }
.fun-list a img{width: 20px;    margin-right: 10px;} 
.join-info{}
.join_shijian{     background: url(/public/static/user/img/time.svg) 0 4px no-repeat;
    background-size: 14px;
    padding-left: 20px; font-size: 14px; color: #ccc; display: inline-block; }
    .dingwei{     background: url(/public/static/user/img/seat.svg) 0 3px no-repeat;
    background-size: 14px;
    padding-left: 20px; font-size: 14px; color: #ccc; display: inline-block; }
    .weixin-footer{ margin-top: 30px; }
</style>


<div class="weixin-block_10"></div>
<div class="fun-list">
    <a class="weui-cell weui-cell_access" href="/user/index/messages">
    <div class="weui-cell__hd"><img src="/public/static/user/img/message.svg"></div>
    <div class="weui-cell__bd">
      <p>消息通知</p>
    </div>
    <div class="weui-cell__ft messages_num"><span><?php echo $num; ?></span></div>
    </a>
</div>

<div class="fun-list">
    <a class="weui-cell weui-cell_access" href="/user/index/education_list">
    <div class="weui-cell__hd"><img src="/public/static/user/img/education.svg"></div>
    <div class="weui-cell__bd">
      <p>学历查询</p>
    </div>
    <div class="weui-cell__ft"></div>
    </a>
    <a class="weui-cell weui-cell_access" href="/user/index/pay">
    <div class="weui-cell__hd"><img src="/public/static/user/img/pay.svg"></div>
    <div class="weui-cell__bd">
      <p>缴费信息</p>
    </div>
    <div class="weui-cell__ft"></div>
    </a>
    <a class="weui-cell weui-cell_access" href="/user/index/contract_content_list">
    <div class="weui-cell__hd"><img src="/public/static/user/img/contract.svg"></div>
    <div class="weui-cell__bd">
      <p>服务合同</p>
    </div>
    <div class="weui-cell__ft"></div>
    </a>
</div>
<div class="block_10"></div>
<div class="fun-list">
    <a class="weui-cell weui-cell_access" href="/user/index/photos">
    <div class="weui-cell__hd"><img src="/public/static/user/img/photos.svg"></div>
    <div class="weui-cell__bd">
      <p>证件照片</p>
    </div>
    <div class="weui-cell__ft"></div>
    </a>
</div>
<div class="block_10"></div>













<!-- <div class="fly-home" style="background-image: url();">
    <?php if($userInfo['avatar']): ?>
    <img src="<?php echo imgUrl($userInfo['avatar']); ?>" alt="<?php echo $userInfo['username']; ?>">
    <?php else: ?>
    <img src="/public/static/user/images/avatar/default.png" alt="<?php echo $userInfo['username']; ?>">
    <?php endif; ?>
    <h1>
        <?php echo $userInfo['username']; if($userInfo['sex'] == 1): ?>
        <i class="iconfont icon-nan"></i>
        <?php else: ?>
        <i class="iconfont icon-nv"></i>
        <?php endif; ?>
    </h1>
    <p class="fly-home-info">
        <i class="iconfont icon-shijian"></i><span><?php echo toDate($userInfo['reg_time'],'Y-m-d'); ?> 加入</span>
        <?php if($userInfo['city']): ?>
        <i class="iconfont icon-chengshi"></i><span><?php echo toCity($userInfo['city']); ?></span>
        <?php endif; ?>
    </p>
    <?php if($userInfo['motto']): ?>
    <p class="fly-home-sign">（ <?php echo $userInfo['motto']; ?>）</p>
    <?php endif; ?>
</div>-->

<div class="weui-footer weixin-footer">
  <p class="weui-footer__links">
    <a href="javascript:void(0);" class="weui-footer__link">立人助学</a>
  </p>
  <p class="weui-footer__text">Copyright © 2008-2016 lirenjy.com</p>
</div>
<script src="/public/static/user/lib/jquery-2.1.4.js"></script>
<script src="/public/static/user/lib/fastclick.js"></script>
<script src="/public/static/user/js/jquery-weui.js"></script>


    <script>
      $('.delete-swipeout').click(function () {
        $(this).parents('.weui-cell').remove()
      })
      $('.close-swipeout').click(function () {
        $(this).parents('.weui-cell').swipeout('close')
      })
    </script>
    </body>
</html>



