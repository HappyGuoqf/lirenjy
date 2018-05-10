<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:62:"/www/web/lirenjy/public_html/app/admin/view/messages/form.html";i:1523605947;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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

<div class="admin-main layui-anim layui-anim-upbit" ng-app="hd" ng-controller="ctrl">

    <fieldset class="layui-elem-field layui-field-title">

        <legend><?php echo $title; ?></legend>

    </fieldset>

    <form class="layui-form layui-form-pane">

        <div class="layui-form-item">

            <label class="layui-form-label">消息标题</label>

            <div class="layui-input-4">

                <input type="text" name="title" ng-model="field.name" lay-verify="required" placeholder="<?php echo lang('pleaseEnter'); ?>标题" class="layui-input">

            </div>

        </div>

        <div class="layui-form-item">

            <label class="layui-form-label">消息内容</label>

            <div class="layui-input-4">

                <textarea rows="3" cols="20" name="contant" lay-verify="required" placeholder="<?php echo lang('pleaseEnter'); ?>消息内容" class="layui-textarea"></textarea>

            </div>

        </div>

        <div class="layui-form-item">

            <div class="layui-input-block">

                <button type="button" class="layui-btn" lay-submit="" lay-filter="submit">发送</button>

                <a href="<?php echo url('index'); ?>" class="layui-btn layui-btn-primary"><?php echo lang('back'); ?></a>

            </div>

        </div>

    </form>

</div>

<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>



<script src="/public/static/common/js/angular.min.js"></script>

<script>

    var m = angular.module('hd',[]);

    m.controller('ctrl',['$scope',function($scope) {

        $scope.field = '<?php echo $info; ?>'!='null'?<?php echo $info; ?>:{message_id:'',title:'',contant:''};

        layui.use(['form', 'layer'], function () {

            var form = layui.form, $ = layui.jquery;

            form.on('submit(submit)', function (data) {

                // 提交到方法 默认为本身

                var loading = layer.load(1, {shade: [0.1, '#fff']});

                data.field.link_id = $scope.field.link_id;

                $.post("", data.field, function (res) {

                    layer.close(loading);

                    if (res.code > 0) {

                        layer.msg(res.msg, {time: 1800, icon: 1}, function () {

                            location.href = res.url;

                        });

                    } else {

                        layer.msg(res.msg, {time: 1800, icon: 2});

                    }

                });

            })

        });

    }]);

</script>