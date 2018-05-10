<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:63:"/www/web/lirenjy/public_html/app/user/view/index/signature.html";i:1524676566;s:64:"/www/web/lirenjy/public_html/app/user/view/common/loginHead.html";i:1524724888;}*/ ?>
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
.sign_title{}
.canvasDiv{
    margin: 0 auto;
    width: 98%;
    border: 1px solid #949494;
}
.imgDiv{
    margin: 20px auto;
    width: 80px;
    border: 1px solid #949494;
    height: 50px;
}
.btnDiv{
    text-align: center;
}

#canvasEdit{

	width: 100%;
}
 .contract_agree{ margin-top: 20px;width: 95%;    margin: 0 auto; }
</style>

<div class="sign_title">请在下面签名：</div>
<div class="canvasDiv">
	<div id="editing_area">
		<canvas id="canvasEdit"></canvas>
	</div>
</div>
<div class="btnDiv">
	<a id="sign_clear" class="weui-btn weui-btn_mini weui-btn_default">重置</a>
	<a id="sign_ok" class="weui-btn weui-btn_mini weui-btn_primary">预览</a>
</div>
<div class="imgDiv">
	<span id="sign_show"></span>
</div>
<div class="contract_agree"><a href="javascript:;" id="agree_sign" class="weui-btn weui-btn_disabled weui-btn_primary">生成合同</a></div>
<script type="text/javascript" src="/public/static/user/js/jquery.min.js"></script>
<script type="text/javascript" src="/public/static/user/js/esign.js"></script>

<script src="/public/static/user/js/jquery-weui.js"></script>


<script type="text/javascript">
$(function(){
	//初始化动作，根据DOM的ID不同进行自定义，如果不写则内部默认取这四个
	$().esign("canvasEdit", "sign_show", "sign_clear", "sign_ok");

		$("#sign_ok").click(function(res) { 
			$(".contract_agree a").removeClass("weui-btn_disabled");

		});
		$("#sign_clear").click(function(res) { 
			$(".contract_agree a").addClass("weui-btn_disabled");
		}); 
});

$("#agree_sign").click(function(){
	var img = $("#sign_show").find("img");
	var img_src = img[0].src;
	$.post('signature',{id:<?php echo $id; ?>,user_id:<?php echo $user_id; ?>,signature:img_src},function(res){
		if(res.code > 0){
			$.alert({
                        title: '提示消息',
                        text: res.msg,
                        onOK: function () {
                          $(window).attr('location','/user/index/signature_contract&id='+<?php echo $id; ?>);
                        }
                      });
		}

	});
});
</script>

</body>
</html>
