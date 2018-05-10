<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:63:"/www/web/lirenjy/public_html/app/admin/view/members/photos.html";i:1525419230;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;}*/ ?>
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
<div class="admin-main layui-anim layui-anim-upbit ng-scope" ng-app="hd" ng-controller="ctrl">

    <fieldset class="layui-elem-field layui-field-title">

        <legend>证件列表</legend>

    </fieldset>
    
    <div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1" style=" ">
   <div class="layui-table-box">
    <div class="layui-table-header">
     <table cellspacing="0" cellpadding="0" border="0" class="layui-table">
      <thead>
       <tr>
        <th data-field="id">
         <div class="layui-table-cell laytable-cell-1-id">
          <span>证件名称</span>
         </div></th>
        <th data-field="mobile">
         <div class="layui-table-cell laytable-cell-1-mobile">
          <span>路径</span>
         </div></th>
        <th data-field="5">
         <div class="layui-table-cell laytable-cell-1-5" align="center">
          <span></span>
         </div></th>
       </tr>
      </thead>
     </table>
    </div>
    <div class="layui-table-body layui-table-main">
     <table cellspacing="0" cellpadding="0" border="0" class="layui-table">
      <tbody>

       <tr data-index="0" class="">
        <td>
         <div class="layui-table-cell laytable-cell-1-id">
          登记照
         </div></td>
        <td>
         <div class="layui-table-cell laytable-cell-1-mobile">
          <?php echo $info['enregister_pic']; ?><span style="color:#ef0000;"><?php if($info['enregister_state'] == 1): ?>(审核中)<?php elseif($info['enregister_state'] == 2): ?>(审核通过)<?php elseif($info['enregister_state'] == 3): ?>(审核不通过)<?php else: ?>(未提交)<?php endif; ?></span>
         </div></td>
        <td data-field="5" align="center" data-off="true">
         <div class="layui-table-cell laytable-cell-1-5"> 
          <a id="adopt1" type="enregister_" class="layui-btn layui-btn-normal layui-btn-xs">通过</a> 
          <a id="fail1" type="enregister_" class="layui-btn layui-btn-normal layui-btn-xs">未通过</a>  
          <a href="<?php echo url('Members/cat'); ?>?id=<?php echo $info['user_id']; ?>&type=enregister_pic" class="layui-btn layui-btn-danger layui-btn-xs">查看</a> 
         </div></td>
       </tr>
      <tr data-index="0" class="">
        <td>
         <div class="layui-table-cell laytable-cell-1-id">
          身份证正面
         </div></td>
        <td>
         <div class="layui-table-cell laytable-cell-1-mobile">
          <?php echo $info['idcard_pic']; ?><span style="color:#ef0000;"><?php if($info['idcard_state'] == 1): ?>(审核中)<?php elseif($info['idcard_state'] == 2): ?>(审核通过)<?php elseif($info['idcard_state'] == 3): ?>(审核不通过)<?php else: ?>(未提交)<?php endif; ?></span>
         </div></td>
        <td data-field="5" align="center" data-off="true">
         <div class="layui-table-cell laytable-cell-1-5"> 
          <a id="adopt2" type="idcard_" class="layui-btn layui-btn-normal layui-btn-xs">通过</a> 
          <a id="fail2" type="idcard_" class="layui-btn layui-btn-normal layui-btn-xs">未通过</a>  
          <a href="<?php echo url('Members/cat'); ?>?id=<?php echo $info['user_id']; ?>&type=idcard_pic" class="layui-btn layui-btn-danger layui-btn-xs">查看</a> 
         </div></td>
       </tr>
      <tr data-index="0" class="">
        <td>
         <div class="layui-table-cell laytable-cell-1-id">
          身份证反面
         </div></td>
        <td>
         <div class="layui-table-cell laytable-cell-1-mobile">
          <?php echo $info['f_idcard_pic']; ?><span style="color:#ef0000;"><?php if($info['f_idcard_state'] == 1): ?>(审核中)<?php elseif($info['f_idcard_state'] == 2): ?>(审核通过)<?php elseif($info['f_idcard_state'] == 3): ?>(审核不通过)<?php else: ?>(未提交)<?php endif; ?></span>
         </div></td>
        <td data-field="5" align="center" data-off="true">
         <div class="layui-table-cell laytable-cell-1-5"> 
          <a id="adopt3" type="f_idcard_" class="layui-btn layui-btn-normal layui-btn-xs">通过</a> 
          <a id="fail3" type="f_idcard_" class="layui-btn layui-btn-normal layui-btn-xs">未通过</a> 
          <a href="<?php echo url('Members/cat'); ?>?id=<?php echo $info['user_id']; ?>&type=f_idcard_pic" class="layui-btn layui-btn-danger layui-btn-xs">查看</a> 
         </div></td>
       </tr>
       <tr data-index="0" class="">
        <td>
         <div class="layui-table-cell laytable-cell-1-id">
          毕业证照片
         </div></td>
        <td>
         <div class="layui-table-cell laytable-cell-1-mobile">
          <?php echo $info['graduate_pic']; ?><span style="color:#ef0000;"><?php if($info['graduate_state'] == 1): ?>(审核中)<?php elseif($info['graduate_state'] == 2): ?>(审核通过)<?php elseif($info['graduate_state'] == 3): ?>(审核不通过)<?php else: ?>(未提交)<?php endif; ?></span>
         </div></td>
        <td data-field="5" align="center" data-off="true">
         <div class="layui-table-cell laytable-cell-1-5"> 
          <a id="adopt4" type="graduate_" class="layui-btn layui-btn-normal layui-btn-xs">通过</a> 
          <a id="fail4" type="graduate_" class="layui-btn layui-btn-normal layui-btn-xs">未通过</a>  
          <a href="<?php echo url('Members/cat'); ?>?id=<?php echo $info['user_id']; ?>&type=graduate_pic" class="layui-btn layui-btn-danger layui-btn-xs">查看</a> 
         </div></td>
       </tr>
      <tr data-index="0" class="">
        <td>
         <div class="layui-table-cell laytable-cell-1-id">
          验证报告
         </div></td>
        <td>
         <div class="layui-table-cell laytable-cell-1-mobile">
          <?php echo $info['verification_pic']; ?><span style="color:#ef0000;"><?php if($info['verification_state'] == 1): ?>(审核中)<?php elseif($info['verification_state'] == 2): ?>(审核通过)<?php elseif($info['verification_state'] == 3): ?>(审核不通过)<?php else: ?>(未提交)<?php endif; ?></span>
         </div></td>
        <td data-field="5" align="center" data-off="true">
         <div class="layui-table-cell laytable-cell-1-5"> 
          <a id="adopt5" type="verification_" class="layui-btn layui-btn-normal layui-btn-xs">通过</a> 
          <a id="fail5" type="verification_" class="layui-btn layui-btn-normal layui-btn-xs">未通过</a>  
          <a href="<?php echo url('Members/cat'); ?>?id=<?php echo $info['user_id']; ?>&type=verification_pic" class="layui-btn layui-btn-danger layui-btn-xs">查看</a> 
         </div></td>
       </tr>
        <tr data-index="0" class="">
        <td>
         <div class="layui-table-cell laytable-cell-1-id">
          居住证明
         </div></td>
        <td>
         <div class="layui-table-cell laytable-cell-1-mobile">
          <?php echo $info['work_pic']; ?><span style="color:#ef0000;"><?php if($info['work_state'] == 1): ?>(审核中)<?php elseif($info['work_state'] == 2): ?>(审核通过)<?php elseif($info['work_state'] == 3): ?>(审核不通过)<?php else: ?>(未提交)<?php endif; ?></span>
         </div></td>
        <td data-field="5" align="center" data-off="true">
         <div class="layui-table-cell laytable-cell-1-5"> 
          <a id="adopt6" type="work_" class="layui-btn layui-btn-normal layui-btn-xs">通过</a> 
          <a id="fail6" type="work_" class="layui-btn layui-btn-normal layui-btn-xs">未通过</a> 
          <a href="<?php echo url('Members/cat'); ?>?id=<?php echo $info['user_id']; ?>&type=work_pic" class="layui-btn layui-btn-danger layui-btn-xs">查看</a> 
         </div></td>
       </tr>

      </tbody>
     </table>
    </div>

   </div>
  
   <style>.laytable-cell-1-0{ width: 48px; }.laytable-cell-1-id{ width: 200px; }.laytable-cell-1-mobile{ width: 500px; }.laytable-cell-1-reg_time{ width: 200px; }.laytable-cell-1-5{ width: 280px; }</style>
  </div>
</div>
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.bootcss.com/layer/3.1.0/layer.js"></script>
<script type="text/javascript">
  $('#adopt1').click(function(){
    var type = $("#adopt1").attr("type");
    adopt(type);
  });
  $('#fail1').click(function(){
    var type = $("#fail1").attr("type");
    fail(type);
  });
  $('#adopt2').click(function(){
    var type = $("#adopt2").attr("type");
    adopt(type);
  });
  $('#fail2').click(function(){
    var type = $("#fail2").attr("type");
    fail(type);
  });
  $('#adopt3').click(function(){
    var type = $("#adopt3").attr("type");
    adopt(type);
  });
  $('#fail3').click(function(){
    var type = $("#fail3").attr("type");
    fail(type);
  });
  $('#adopt4').click(function(){
    var type = $("#adopt4").attr("type");
    adopt(type);
  });
  $('#fail4').click(function(){
    var type = $("#fail4").attr("type");
    fail(type);
  });
  $('#adopt5').click(function(){
    var type = $("#adopt5").attr("type");
    adopt(type);
  });
  $('#fail5').click(function(){
    var type = $("#fail5").attr("type");
    fail(type);
  });
  $('#adopt6').click(function(){
    var type = $("#adopt6").attr("type");
    adopt(type);
  });
  $('#fail6').click(function(){
    var type = $("#fail6").attr("type");
    fail(type);
  });
  function adopt(type){
    $.post("<?php echo url('members/state'); ?>",{'user_id':<?php echo $info['user_id']; ?>,'state':2,'type':type},function(res){
      if(res.code > 0){
        layer.msg(res.msg);
      }else{
        layer.msg('操作失败！');
      }
    })
  }
  function fail(type){
    $.post("<?php echo url('members/state'); ?>",{'user_id':<?php echo $info['user_id']; ?>,'state':3,'type':type},function(res){
      if(res.code > 0){
        layer.msg(res.msg);
      }else{
        layer.msg('操作失败！');
      }
    })
  }
</script>

</body>
</html>