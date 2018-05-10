<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:60:"/www/web/lirenjy/public_html/app/admin/view/apply/index.html";i:1525767849;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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

        <legend>报名申请</legend>

    </fieldset>

    <blockquote class="layui-elem-quote">

        <button type="button" class="layui-btn layui-btn-sm layui-btn-danger" id="delAll">批量删除</button>

    </blockquote>

    <table class="layui-table" id="list" lay-filter="list"></table>

</div>

<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>



<script type="text/html" id="action">

    <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="cat">查看</a>

    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>

</script>

<script>


    layui.use(['table','form'], function() {

        var table = layui.table,form = layui.form, $ = layui.jquery;

        var tableIn = table.render({

            id: 'apply',

            elem: '#list',

            url: '<?php echo url("index"); ?>',

            method: 'post',

            cols: [[

                {checkbox: true, fixed: true},

                {field: 'id', title: '<?php echo lang("id"); ?>', width: 80, fixed: true, sort: true},

                {field: 'user', title: '登录手机号', width: 200},

                {field: 'name', title: '姓名', width: 200},

                {field: 'tel', title: '电话', width: 300},

                {field: 'addtime', title: '<?php echo lang("add"); ?><?php echo lang("time"); ?>', width: 150,sort: true},

                {width: 160, align: 'center', toolbar: '#action'}

            ]]

        });

        table.on('tool(list)', function(obj) {
            var data = obj.data;
            //console.log(data);
            if(obj.event === 'cat'){
                      layer.open({
                            type: 1
                            ,title: false //不显示标题栏
                            ,closeBtn: false
                            ,area: '800px;'
                            ,shade: 0.8
                            ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                            ,btn: ['审核', '关闭']
                            ,btnAlign: 'c'
                            ,moveType: 1 //拖拽模式，0或者1
                            ,content: '<table class="layui-table"lay-even=""lay-skin="row"><colgroup><col width="150"><col width="150"><col width="200"><col></colgroup><thead><tr><th>真实姓名</th><th>'+data.name+'</th><th>身份证号码</th><th>'+data.idcard+'</th></tr></thead><tbody><tr><td>性别</td><td>'+data.sex+'</td><td>籍贯</td><td>'+data.p_origin+'</td></tr><tr><td>民族</td><td>'+data.nation+'</td><td>服务合同</td><td>'+data.contract+'</td></tr><tr><td>手机号</td><td>'+data.tel+'</td><td>QQ</td><td>'+data.qq+'</td></tr><tr><td>公司及职位</td><td>'+data.company+'</td><td>原毕业院校及专业</td><td>'+data.old_school+'</td></tr><tr><td>文化程度</td><td>'+data.education+'</td><td>报考院校</td><td>'+data.university+'</td></tr><tr><td>报考专业</td><td>'+data.university_apply+'</td><td>报读课程</td><td>'+data.university_course+'</td></tr><tr><td>报读类型</td><td>'+data.university_type+'</td><td>邮寄地址</td><td>'+data.address+'</td></tr><tr><td>备注</td><td>'+data.other_remarks+'</td><td></td><td></td></tr></tbody></table>'
                            ,success: function(layero){
                              var btn = layero.find('.layui-layer-btn');
                              btn.find('.layui-layer-btn0').click(function(){
                                $.post('change_state?id='+data.id,function(res){
                                    if(res.code ===1){
                                        layer.msg(res.msg,{time:1000,icon:1});
                                    }else{
                                        layer.msg(res.msg,{time:1000,icon:2});
                                    }
                                });
                              })
                            }
                          });
            }
            if(obj.event === 'del'){

                layer.confirm('您确定要删除该信息吗？', function(index){

                    var loading = layer.load(1, {shade: [0.1, '#fff']});

                    $.post("<?php echo url('del'); ?>",{id:data.id},function(res){

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