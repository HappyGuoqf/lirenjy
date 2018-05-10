<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:59:"/www/web/lirenjy/public_html/app/user/view/login/index.html";i:1525856639;s:64:"/www/web/lirenjy/public_html/app/user/view/common/loginHead.html";i:1524724888;s:61:"/www/web/lirenjy/public_html/app/user/view/common/footer.html";i:1523437223;}*/ ?>
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

<style type="text/css">
.login-main{ width: 100%;
    height: 100%;
    background: url(/public/static/user/img/login-bg.png) no-repeat center;
    background-size: 100% 100%; position: relative;}
form{top: 60%;
    position: absolute;
    -moz-transform: translateY(-50%);
    -webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
    left: 50%;
    margin-left: -145px;
    width: 290px;}
#submit{border-radius: 40px;    background: #fff;    color: #000;    margin-top: 20px;}
.weui-footer__links a{ color: #969696; }
</style>
<div class="login-main">
  <form>
    <div class="weui-cells_form">
      <div class="weui-cell" style="border: 1px solid #fff; border-radius: 40px; background: #fff;">
        <div class="weui-cell__hd"><label class="weui-label" style="width:66px"><img src="/public/static/user/img/tel.png" style="width: 24px; margin: 0 auto;"></label></div>
        <div class="weui-cell__bd">
          <input class="weui-input" type="text" name="mobile" id="mobile"  placeholder="请输入您的手机号码">
        </div>
      </div>
    </div>
    <div class="weixin-join-btn">
    <a href="javascript:;" class="weui-btn weui-btn_primary" id="submit" style="letter-spacing: 6px;">点击提交</a>
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



  </form>
</div>
<script>
  $(function() {
    FastClick.attach(document.body);
      $('#submit').click(function() {
          var d = {};
          var t = $('form').serializeArray();
          $.each(t, function() {
            d[this.name] = this.value;
          });
          console.log(d);
          if(d.mobile == '' ){
            $.toast("手机号不能为空", "text");
            return false;
          }
          if(d.mobile.length !== 11){
            $.toast("手机号不正确", "text");
            return false;
          }         
          $.post('/user/login/index',d,function(res){
            if(res.code > 0){
              $.showLoading();
              setTimeout(function() {
                $.hideLoading();
                window.location.href = res.url;
              }, 2000)

            }
            
          });
      });
  });
</script>