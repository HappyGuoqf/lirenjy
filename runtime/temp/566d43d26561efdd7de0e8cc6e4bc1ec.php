<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:63:"/www/web/lirenjy/public_html/app/admin/view/contract/index.html";i:1525057808;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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

        <legend>合同管理</legend>

    </fieldset>

    <div class="demoTable">

        <a href="<?php echo url('add'); ?>" class="layui-btn" style="float:right;"><i class="fa fa-plus" aria-hidden="true"></i><?php echo lang('add'); ?>合同</a>

        <div style="clear: both;"></div>

    </div>

    <table class="layui-table" id="list" lay-filter="list"></table>

</div>

<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>



<script type="text/html" id="title">

   {{d.title}}

</script>

<script type="text/html" id="open">

    <input type="checkbox" name="open" value="{{d.contract_id}}" lay-skin="switch" lay-text="开启|关闭" lay-filter="open" {{ d.open == 1 ? 'checked' : '' }}>

</script>

<script type="text/html" id="action">
    <a href="<?php echo url('cat'); ?>?contract_id={{d.contract_id}}" class="layui-btn layui-btn-xs">查看样式</a>

    <a href="<?php echo url('edit'); ?>?contract_id={{d.contract_id}}" class="layui-btn layui-btn-xs">编辑</a>
    
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>

</script>

<script>

    layui.use(['table','form'], function() {

        var table = layui.table,form = layui.form,$ = layui.jquery;

        var tableIn = table.render({

            id: 'contract',

            elem: '#list',

            url: '<?php echo url("index"); ?>',

            method: 'post',

            page:true,

            cols: [[

                {field: 'contract_id', title: '<?php echo lang("id"); ?>', width: 80, fixed: true},

                {field: 'title', title: '名称', width: 400,templet: '#title'},

                {field: 'open', align: 'center', title: '<?php echo lang("status"); ?>', width: 100, toolbar: '#open'},

                {width: 260, align: 'center', toolbar: '#action'}

            ]]

        });

        form.on('switch(open)', function(obj){

            loading =layer.load(1, {shade: [0.1,'#fff']});

            var id = this.value;

            var open = obj.elem.checked===true?1:0;

            $.post('<?php echo url("editState"); ?>',{'id':id,'open':open},function (res) {

                layer.close(loading);

                if (res.status==1) {

                    tableIn.reload();

                }else{

                    layer.msg(res.msg,{time:1000,icon:2});

                    return false;

                }

            })

        });


        table.on('tool(list)', function(obj) {

            var data = obj.data;

            if (obj.event === 'del'){

                layer.confirm('您确定要删除吗？', function(index){

                    var loading = layer.load(1, {shade: [0.1, '#fff']});

                    $.post("<?php echo url('del'); ?>",{contract_id:data.contract_id},function(res){

                        layer.close(loading);

                        if(res.code===1){

                            layer.msg(res.msg,{time:1000,icon:1});

                            tableIn.reload();

                        }else{

                            layer.msg('操作失败！',{time:1000,icon:2});

                        }

                    });

                    layer.close(index);

                });

            }

        });

    })

</script>