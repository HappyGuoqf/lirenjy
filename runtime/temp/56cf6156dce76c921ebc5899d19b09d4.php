<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:70:"/www/web/lirenjy/public_html/app/user/view/index/contract_content.html";i:1525763799;s:64:"/www/web/lirenjy/public_html/app/user/view/common/loginHead.html";i:1524724888;s:61:"/www/web/lirenjy/public_html/app/user/view/common/footer.html";i:1523437223;}*/ ?>
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
    .contract_title{ text-align: center; font-size:20px; margin-top:10px;  font-weight: normal;}
    .contract_contant{text-indent: 2em;    font-size: 14px;    padding: 15px;}
    .contract_agree{ margin-top: 20px; }
    .signature_content{border: 1px solid #e8e8e8;}
    .signature_y{ border-top:1px solid #e8e8e8; border-bottom:1px solid #e8e8e8;  }
    .signature_j ul li img,.signature_y ul li img{width: 200px;  }
    .signature_j ul li,.signature_y ul li{padding: 5px 15px;}
    .signature_date{padding: 5px 15px;}
    .signature_num{padding: 0 15px 5px 15px;}
    .contract_contant p{ text-align: justify; }
</style>
<h1 class="contract_title"><?php echo $contract['title']; ?></h1>

<div class="contract_contant">
<?php echo $contract['content']; ?>
</div>



<div class="signature_content">
	<div class="signature_j">
		<ul>
			<li>甲方(盖章):</li>
			<li><center><img src="/public/<?php echo $contract['pic']; ?>"></center></li>
			<li>甲方签字:<?php echo $contract['company_name']; ?></li>
		</ul>
	</div>
	<div class="signature_y">
		<ul>
			<li>乙方(签字):</li>
			<li><center><img src="<?php echo $list['signature']; ?>"></center></li>
		</ul>
	</div>
	<div class="signature_date">日期：<?php echo toDate($list['addtime'],'Y-m-d'); ?></div>
	<div class="signature_num">合同编号：<?php echo $list['signature_num']; ?></div>
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




</body>
</html>