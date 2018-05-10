<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:62:"/www/web/lirenjy/public_html/app/admin/view/contract/form.html";i:1525057335;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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
<style>
    .edui-editor{z-index: 1!important;}
</style>
<script>
    var ADMIN = '/public/static/admin';
    var UPURL = "/admin/UpFiles/upImages.html";
    var PUBLIC = "/public";
    var imgClassName,fileClassName;
</script>
<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>


<script src="/public/static/common/js/jquery.2.1.1.min.js"></script>
<script>
    var edittext=new Array();
</script>
<script src="/public/static/ueditor/ueditor.config.js" type="text/javascript"></script>
<script src="/public/static/ueditor/ueditor.all.min.js" type="text/javascript"></script>
<div class="admin-main layui-anim layui-anim-upbit" ng-app="hd" ng-controller="ctrl">

    <fieldset class="layui-elem-field layui-field-title">

        <legend><?php echo $title; ?></legend>

    </fieldset>

    <form class="layui-form layui-form-pane">

        <div class="layui-form-item">

            <label class="layui-form-label">标题</label>

            <div class="layui-input-4">

                <input type="text" name="title" ng-model="field.title" lay-verify="required" placeholder="<?php echo lang('pleaseEnter'); ?>标题" class="layui-input">

            </div>

        </div>

        <div class="layui-form-item">

            <label class="layui-form-label">甲方</label>

            <div class="layui-input-4">

                <input type="text" name="company_name" ng-model="field.company_name" lay-verify="required" placeholder="<?php echo lang('pleaseEnter'); ?>甲方名称" class="layui-input">

            </div>

        </div>

        <div class="layui-form-item">

            <label class="layui-form-label">甲方地址</label>

            <div class="layui-input-4">

                <input type="text" name="company_addr" ng-model="field.company_addr" lay-verify="required" placeholder="<?php echo lang('pleaseEnter'); ?>甲方地址" class="layui-input">

            </div>

        </div>

        <div class="layui-form-item">

            <label class="layui-form-label">甲方电话</label>

            <div class="layui-input-4">

                <input type="text" name="company_phone" ng-model="field.company_phone" lay-verify="required" placeholder="<?php echo lang('pleaseEnter'); ?>甲方电话" class="layui-input">

            </div>

        </div>

        <div class="layui-form-item">

            <label class="layui-form-label">合同章</label>

            <input type="hidden" name="pic" id="pic" value="{{field.pic}}">

            <div class="layui-input-block">

                <div class="layui-upload">

                    <button type="button" class="layui-btn layui-btn-primary" id="adBtn"><i class="icon icon-upload3"></i>点击上传</button>

                    <div class="layui-upload-list">

                        <img class="layui-upload-img" id="adPic">

                        <p id="demoText"></p>

                    </div>

                </div>

            </div>

        </div>

<!--         <div class="layui-form-item layui-form-text">

            <label class="layui-form-label">内容</label>

            <div class="layui-input-block">

                <textarea ng-model="field.content" placeholder="请输广告内容" name="content" class="layui-textarea"></textarea>

            </div>

        </div> -->

                <div class="layui-form-item">
                    <label class="layui-form-label">内容</label>
                    <div class="layui-input-4" id="box_content">
                        <input type="hidden" id="editType" value="1"><textarea name="content" class="content" id="content">{{field.content}}</textarea><script>var editor = new UE.ui.Editor();editor.render("content");</script>                    </div>
                </div>

        <div class="layui-form-item">

            <div class="layui-input-block">

                <button type="button" class="layui-btn" lay-submit="" lay-filter="submit"><?php echo lang('submit'); ?></button>

                <a href="<?php echo url('index'); ?>" class="layui-btn layui-btn-primary"><?php echo lang('back'); ?></a>

            </div>

        </div>

    </form>

</div>

<script src='/public/static/plugins/spectrum/spectrum.js'></script>
<script src='/public/static/admin/js/edit.js'></script>
<script src='/public/static/common/js/layui-mz-min.js'></script>

<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>



<script src="/public/static/common/js/angular.min.js"></script>

<script>

    var m = angular.module('hd',[]);

    m.controller('ctrl',['$scope',function($scope) {

        $scope.field = '<?php echo $info; ?>'!='null'?<?php echo $info; ?>:{contract_id:'',company_name:'',company_addr:'',company_phone:'',open:1,pic:'',content:''};

        layui.use(['form', 'layer','upload'], function () {

            var form = layui.form, $ = layui.jquery, upload = layui.upload;

            if($scope.field.pic){

                adPic.src = "/public"+ $scope.field.pic;

            }

            form.on('submit(submit)', function (data) {

                // 提交到方法 默认为本身

                data.field.contract_id = $scope.field.contract_id;

                var loading = layer.load(1, {shade: [0.1, '#fff']});

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

            });

            //普通图片上传

            var uploadInst = upload.render({

                elem: '#adBtn'

                ,url: '<?php echo url("UpFiles/upload"); ?>'

                ,before: function(obj){

                    //预读本地文件示例，不支持ie8

                    obj.preview(function(index, file, result){

                        $('#adPic').attr('src', result); //图片链接（base64）

                    });

                },

                done: function(res){

                    if(res.code>0){

                        $('#pic').val(res.url);

                    }else{

                        //如果上传失败

                        return layer.msg('上传失败');

                    }

                }

                ,error: function(){

                    //演示失败状态，并实现重传

                    var demoText = $('#demoText');

                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');

                    demoText.find('.demo-reload').on('click', function(){

                        uploadInst.upload();

                    });

                }

            });

        });

    }]);

</script>