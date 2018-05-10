<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:62:"/www/web/lirenjy/public_html/app/admin/view/members/index.html";i:1525236875;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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
        <legend><?php echo lang('member'); ?><?php echo lang('list'); ?></legend>
    </fieldset>
    <div class="demoTable">
        <div class="layui-inline">
            <input class="layui-input" name="key" id="key" placeholder="<?php echo lang('pleaseEnter'); ?>关键字">
        </div>
        <button class="layui-btn" id="search" data-type="reload">搜索</button>
        <a href="<?php echo url('index'); ?>" class="layui-btn">显示全部</a>
        <!-- <button type="button" class="layui-btn layui-btn-danger" id="delAll">批量删除</button> -->
    </div>
    <table class="layui-table" id="list" lay-filter="list"></table>
</div>
<script type="text/html" id="action">
    <a href="<?php echo url('photos'); ?>?id={{d.id}}" class="layui-btn layui-btn-normal layui-btn-xs">证件列表</a>
    <a href="<?php echo url('list_info'); ?>?id={{d.id}}" class="layui-btn layui-btn-normal layui-btn-xs">查看</a>
    <a data-userid={{d.id}} class="layui-btn layui-btn-danger layui-btn-xs" lay-event="message">发消息</a>
</script>
<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>


<script>
    layui.use(['table','form'], function() {
        var table = layui.table,form = layui.form, $ = layui.jquery;
        var tableIn = table.render({
            id: 'user',
            elem: '#list',
            url: '<?php echo url("index"); ?>',
            method: 'post',
            page: true,
            cols: [[
                {checkbox:true,fixed: true},
                {field: 'id', title: '<?php echo lang("id"); ?>', width: 200, fixed: true},
                {field: 'mobile', title: '手机号', width: 150},
                {field: 'level_name', title: '会员等级', width: 200},
                {field: 'reg_time', title: '注册时间', width: 200},
                {width: 280, align: 'center', toolbar: '#action'}
            ]],
            limit: 10 //每页默认显示的数量
        });
        form.on('switch(is_lock)', function(obj){
            loading =layer.load(1, {shade: [0.1,'#fff']});
            var id = this.value;
            var is_lock = obj.elem.checked===true?0:1;
            $.post('<?php echo url("usersState"); ?>',{'id':id,'is_lock':is_lock},function (res) {
                layer.close(loading);
                if (res.status==1) {
                    tableIn.reload();
                }else{
                    layer.msg(res.msg,{time:1000,icon:2});
                    return false;
                }
            })
        });
        //搜索
        $('#search').on('click', function() {
            var key = $('#key').val();
            if($.trim(key)==='') {
                layer.msg('<?php echo lang("pleaseEnter"); ?>关键字！',{icon:0});
                return;
            }
            tableIn.reload({
                where: {key: key}
            });
        });
        table.on('tool(list)', function(obj) {
            var data = obj.data;
            if (obj.event === 'message') {
                var user_id = $(this).attr("data-userid");
                    layer.open({
                      type: 1
                      ,title: false //不显示标题栏
                      ,closeBtn: false
                      ,area: '300px;'
                      ,shade: 0.8
                      ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                      ,resize: false
                      ,btn: ['发送', '关闭']
                      ,btnAlign: 'c'
                      ,moveType: 1 //拖拽模式，0或者1
                      ,content: '<div style="line-height: 22px;padding:10px; background-color: #ffffff; font-weight: 300;"><div style="background-color:dfdfdf;border-bottom:1px solid #ccc;">信息内容</div><div><textarea style="width:100%;height:80px;margin-top: 10px; border: 1px solid #ccc;" id="message_content"></textarea></div></div>'
                      ,success: function(layero){
                        var btn = layero.find('.layui-layer-btn');
                        btn.find('.layui-layer-btn0').click(function(res){
                            var message_content = $("#message_content").val();
                             $.post("<?php echo url('usermessage'); ?>",{contant:message_content,user_id:user_id},function(res){
                                    if(res.code > 0){
                                        layer.msg(res.msg,{time:1000,icon:1});
                                        tableIn.reload();
                                    }else{
                                        layer.msg(res.msg,{time:1000,icon:2});
                                    }
                                });
                        });
                      }
                    });
            }
        });

        $('#delAll').click(function(){
            layer.confirm('确认要删除选中信息吗？', {icon: 3}, function(index) {
                layer.close(index);
                var checkStatus = table.checkStatus('user'); //test即为参数id设定的值
                var ids = [];
                $(checkStatus.data).each(function (i, o) {
                    ids.push(o.id);
                });
                var loading = layer.load(1, {shade: [0.1, '#fff']});
                $.post("<?php echo url('delall'); ?>", {ids: ids}, function (data) {
                    layer.close(loading);
                    if (data.code === 1) {
                        layer.msg(data.msg, {time: 1000, icon: 1});
                        tableIn.reload();
                    } else {
                        layer.msg(data.msg, {time: 1000, icon: 2});
                    }
                });
            });
        })
    });
</script>
</body>
</html>