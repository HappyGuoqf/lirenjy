<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:63:"/www/web/lirenjy/public_html/app/admin/view/sitemaps/index.html";i:1524911909;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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

<div class="admin-main layui-anim layui-anim-upbit">

    <fieldset class="layui-elem-field layui-field-title">

        <legend>sitemap</legend>

    </fieldset>

    <blockquote class="layui-elem-quote">

        <a onclick="make()" class="layui-btn layui-btn-sm">生成sitemap</a><span style="float: right;    height: 30px; line-height: 30px;">最后生成时间：<?php echo $time; ?></span>

    </blockquote>

    <table class="layui-table" id="list" lay-filter="list"></table>

</div>

<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.bootcss.com/layer/3.1.0/layer.js"></script>
<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>


<script>

function make(){
    $.post("<?php echo url('make'); ?>",function(res){
        console.log(res);
        if(res.code > 0){
            layer.msg(res.msg,{time:1000,icon:1});
        }
    })
}

</script>