<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:66:"/www/web/lirenjy/public_html/app/admin/view/members/list_info.html";i:1524466122;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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
        <legend><?php echo lang('member'); ?>报考</legend>
    </fieldset>
    
    <table class="layui-table" id="list" lay-filter="list"></table>



  <div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1" style=" ">
   <div class="layui-table-box">
    <div class="layui-table-body layui-table-main">
    <table cellspacing="0" cellpadding="0" border="0" class="layui-table">
      <thead>
       <tr>
        <th data-field="id">
         <div class="layui-table-cell laytable-cell-1-id">
          <span>编号</span>
         </div></th>
        <th data-field="university">
         <div class="layui-table-cell laytable-cell-1-university">
          <span>报考院校</span>
         </div></th>
        <th data-field="university_apply">
         <div class="layui-table-cell laytable-cell-1-university_apply">
          <span>报考专业</span>
         </div></th>
        <th data-field="university_course">
         <div class="layui-table-cell laytable-cell-1-university_course">
          <span>报读层次</span>
         </div></th>
        <th data-field="university_type">
         <div class="layui-table-cell laytable-cell-1-university_type">
          <span>学习形式</span>
         </div></th>
        <th data-field="addtime">
         <div class="layui-table-cell laytable-cell-1-addtime">
          <span>最后修改时间</span>
         </div></th>
         <th>
         <div style="width:160px;">
          <span></span>
         </div></th>
       </tr>
      </thead>
     </table>
     <table cellspacing="0" cellpadding="0" border="0" class="layui-table">
      <tbody>
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "未查询到数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
       <tr>
        <td>
         <div class="layui-table-cell laytable-cell-1-id">
          <?php echo $vo['id']; ?>
         </div></td>
        <td data-field="university">
         <div class="layui-table-cell laytable-cell-1-university">
          <?php echo $vo['university']; ?>
         </div></td>
        <td data-field="university_apply">
         <div class="layui-table-cell laytable-cell-1-university_apply">
          <?php echo $vo['university_apply']; ?>
         </div></td>
        <td data-field="university_type">
         <div class="layui-table-cell laytable-cell-1-university_type">
          <?php echo $vo['university_type']; ?>
         </div></td>
        <td data-field="university_course">
         <div class="layui-table-cell laytable-cell-1-university_course">
          <?php echo $vo['university_course']; ?>
         </div></td>
        <td data-field="addtime">
         <div class="layui-table-cell laytable-cell-1-addtime">
          <?php echo $vo['addtime']; ?>
         </div></td>
        <td data-field="7" align="center" data-off="true">
         <div class="layui-table-cell laytable-cell-1-7"> 
          <a href="/admin/Members/see.html?id=<?php echo $vo['id']; ?>" class="layui-btn layui-btn-normal layui-btn-xs">查看</a> 
          <a href="/admin/Members/contract.html?id=<?php echo $vo['id']; ?>" class="layui-btn layui-btn-xs">合同</a> 
         </div></td>
       </tr>
        <?php endforeach; endif; else: echo "未查询到数据" ;endif; ?>
      </tbody>
     </table>
    </div>
   </div>
   <style>.laytable-cell-1-0{ width: 48px; }.laytable-cell-1-id{ width: 80px; }.laytable-cell-1-university{ width: 120px; }.laytable-cell-1-university_apply{ width: 100px; }.laytable-cell-1-university_type{ width: 250px; }.laytable-cell-1-university_course{ width: 250px; }.laytable-cell-1-addtime{ width: 150px; }.laytable-cell-1-7{ width: 160px; }</style>
  </div>
</div>
<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>


</body>
</html>