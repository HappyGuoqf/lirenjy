<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:63:"/www/web/lirenjy/public_html/app/admin/view/messages/index.html";i:1525009604;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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

        <legend>站内信息</legend>

    </fieldset>

    <blockquote class="layui-elem-quote">

        <a href="<?php echo url('add'); ?>" class="layui-btn layui-btn-sm"><?php echo lang('add'); ?>站内信息</a>

        <button type="button" class="layui-btn layui-btn-sm layui-btn-danger" id="delAll">批量删除</button>

    </blockquote>

    <table class="layui-table" id="list" lay-filter="list"></table>

</div>

<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>



<script type="text/html" id="action">

    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>

</script>

<script>

    layui.use(['table','form'], function() {

        var table = layui.table,form = layui.form, $ = layui.jquery;

        var tableIn = table.render({

            id: 'messages',

            elem: '#list',

            url: '<?php echo url("index"); ?>',

            method: 'post',

            cols: [[

                {checkbox: true, fixed: true},

                {field: 'message_id', title: '<?php echo lang("id"); ?>', width: 80, fixed: true, sort: true},

                {field: 'title', title: '链接名称', width: 200},

                {field: 'contant', title: '内容', width: 500},

                {field: 'addtime', title: '<?php echo lang("add"); ?><?php echo lang("time"); ?>', width: 150,sort: true},

                {width: 160, align: 'center', toolbar: '#action'}

            ]]

        });


        table.on('tool(list)', function(obj) {

            var data = obj.data;

            if(obj.event === 'del'){

                layer.confirm('您确定要删除该信息吗？', function(index){

                    var loading = layer.load(1, {shade: [0.1, '#fff']});

                    $.post("<?php echo url('del'); ?>",{message_id:data.message_id},function(res){

                        layer.close(loading);

                        if(res.code===1){

                            layer.msg(res.msg,{time:1000,icon:1});

                            obj.del();

                        }else{

                            layer.msg('操作失败！',{time:1000,icon:2});

                        }

                    });

                    layer.close(index);

                });

            }

        });

        $('#delAll').click(function(){

            layer.confirm('确认要删除选中信息吗？', {icon: 3}, function(index) {

                layer.close(index);

                var checkStatus = table.checkStatus('messages'); //test即为参数id设定的值

                var ids = [];

                $(checkStatus.data).each(function (i, o) {

                    ids.push(o.message_id);

                });

                var loading = layer.load(1, {shade: [0.1, '#fff']});

                $.post("<?php echo url('delall'); ?>", {ids: ids}, function (data) {
                    
                    layer.close(loading);

                    if (data.code === 1) {

                        layer.msg(data.msg, {time: 1000, icon: 1});

                        table.reload('messages');

                    } else {

                        layer.msg(data.msg, {time: 1000, icon: 2});

                    }

                });

            });

        })

    })
</script>