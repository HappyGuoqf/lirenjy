<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:57:"/www/web/lirenjy/public_html/app/user/view/index/msg.html";i:1525689415;s:64:"/www/web/lirenjy/public_html/app/user/view/common/loginHead.html";i:1524724888;s:61:"/www/web/lirenjy/public_html/app/user/view/common/footer.html";i:1523437223;}*/ ?>
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

<div class="weui-msg">
  <div class="weui-msg__icon-area"><i class="weui-icon-waiting weui-icon_msg"></i></div>
  <div class="weui-msg__text-area">
    <h2 class="weui-msg__title">审核中...</h2>
    <p class="weui-msg__desc"></p>
  </div>
  <div class="weui-msg__opr-area">
    <p class="weui-btn-area">
      <a href="/" class="weui-btn weui-btn_primary">回首页</a>
    </p>
  </div>
</div>
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



