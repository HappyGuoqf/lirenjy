<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:65:"/www/web/lirenjy/public_html/app/admin/view/members/contract.html";i:1525498813;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo config('sys_name'); ?>后台管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/public/static/plugins/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="/public/static/admin/css/global.css" media="all">
    <link rel="stylesheet" href="/public/static/common/css/font.css" media="all">
</head>
<body class="skin-<?php if(!empty($_COOKIE['skin'])){echo $_COOKIE['skin'];}else{echo '0';setcookie('skin','0');}?>">




<style type="text/css">
    .print-btn{
        height: 38px;
        display: block;
    }
    .print-btn-right{
        display: inline-block;
        right: 0;
        position: absolute;
    }
</style>
<div class="print-btn">
    <div class="print-btn-right">
        <input type="button" class="layui-btn" value="打印"onclick="javascript:window.print();" />
        <input type="button" class="layui-btn" value="打印预览" onclick="preview(1)"/>
    </div>
</div>
<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>


</div>



<!-- 登记表预览 -->
<div class="admin-main layui-anim layui-anim-upbit">
    <fieldset class="layui-elem-field layui-field-title">
        <legend>合同预览</legend>
    </fieldset>
<script>
    function preview(oper)
        {
        if (oper<10)
            {
                    bdhtml=window.document.body.innerHTML;//获取当前页的html代码
                    var print_content= document.getElementById("print_content").innerHTML; 
                    window.document.body.innerHTML=print_content;
                    window.print(print_content);
                } else {
                    window.print();
            }
        }
</script>
                <div id="print_content">
                <div style="width: 842px; margin:0 auto">
                <div style="    font-size: 8px; border-bottom: 1px solid #6d6d6d;color: #6d6d6d;">合同编号：<?php echo $list['signature_num']; ?></div><br />
                      <div style="font-size: 24px; font-weight:bold;font-family: '华文中宋';text-align: center;"><?php echo $list['contract_title']; ?></div>
                      <br /><br /><br />
                      <div style="font-size: 16px;font-family: '华文中宋';">
                        <div style="height: 130px;">
                          <div style="width: 45%; float: left;">
                            <span style="display: block; line-height: 38px;">甲方：<?php echo $list['company_name']; ?></span>
                            <span style="display: block; line-height: 38px;;">地址：<?php echo $list['company_addr']; ?></span>
                          </div>
                          <div style="width: 45%; float: right;">
                            <span style="display: block;line-height: 38px;">乙方：<?php echo $list['name']; ?> </span>
                            <span style="display: block;line-height: 38px;">身份证号：<?php echo $list['idcard']; ?></span>
                            <span style="display: block;line-height: 38px;">地址：<?php echo $list['address']; ?></span>
                          </div>
                        </div>
                      </div>
                      <?php echo $list['company_content']; ?>
                      <div style="font-size: 16px;font-family: '华文中宋';">
                        <div style="height: 130px;">
                          <div style="width: 45%; float: left;">
                            <span style="display: block; line-height: 38px;">甲方</span>
                            <span style="display: block; line-height: 38px;;">盖章：<img src="<?php echo $list['signature']; ?>" style="position:absolute; width:80px;" /></span>
                            <span style="display: block; line-height: 38px;;">联系方式：<?php echo $list['company_phone']; ?></span>
                            <span style="display: block; line-height: 38px;;">签字时间：<?php echo toDate($list['addtime'],'Y年m月d日'); ?></span>
                          </div>
                          <div style="width: 45%; float: right;">
                            <span style="display: block; line-height: 38px;">乙方</span>
                            <span style="display: block; line-height: 38px;;">代表签字：<img src="<?php echo $list['signature']; ?>" style="position:absolute; width:80px;" /></span>
                            <span style="display: block; line-height: 38px;;">联系方式：<?php echo $list['tel']; ?></span>
                            <span style="display: block; line-height: 38px;;">签字时间：<?php echo toDate($list['addtime'],'Y年m月d日'); ?></span>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                </div>

</div>







<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


















</body>
</html>