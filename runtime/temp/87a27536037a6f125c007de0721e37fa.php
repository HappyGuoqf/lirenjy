<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:64:"/www/web/lirenjy/public_html/app/admin/view/members/preview.html";i:1525860186;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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

<!-- 登记表预览 -->
<div class="admin-main layui-anim layui-anim-upbit">
    <fieldset class="layui-elem-field layui-field-title">
        <legend>登记表预览</legend>
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
                <br />
                <h3 style="text-align:center;font-size:24px; margin-bottom:10px; font-weight:bold;">立人教育  学员登记表</h3>

                <br />
                    <table style="margin:auto; font-size:12px; height:30px" width="800">
                        <tr border="0">
                            <td>填表日期：</td>
                            <td>学员编号：</td>
                        </tr>
                       </table>
                    <table style="margin:auto;font-size:12px;" width="800" border="1">
                        <tr height="10">
                            <td width="100" height="40" style="text-align:center">报考院校</td>
                            <td width="250" colspan="3">&nbsp;&nbsp;<?php echo $res['university']; ?></td>
                            <td width="100"  height="40" style="text-align:center">报考专业</td>
                            <td width="200" colspan="3">&nbsp;&nbsp;<?php echo $res['university_apply']; ?></td>
                            <td width="150" rowspan="4"><img style="width:90%;margin:0 auto;display:block;" onerror="this.src='/public/static/home/images/default_none.png'" src="/<?php echo $res['enregister_pic']; ?>"></td>
                        </tr>
                        <tr height="10">
                        <td width="100"  height="40" style="text-align:center">报读层次</td>
                        <td colspan="7" width="550">&nbsp;&nbsp;
                          <input type="checkbox" <?php if($res['university_course'] == '高升专'): ?>checked<?php endif; ?>>高升专&nbsp;
                          <input type="checkbox" <?php if($res['university_course'] == '高升本'): ?>checked<?php endif; ?>>高升本&nbsp;
                          <input type="checkbox" <?php if($res['university_course'] == '专升本'): ?>checked<?php endif; ?>>专升本&nbsp;
                          <input type="checkbox" <?php if($res['university_course'] == '本升本'): ?>checked<?php endif; ?>>本升本&nbsp;
                          <input type="checkbox" <?php if($res['university_course'] == '其他'): ?>checked<?php endif; ?>>专报本
                        </td>
                        </tr>
                        <tr>
                        <td width="100" height="40" style="text-align:center">学习类型</td>
                        <td colspan="7" width="550">&nbsp;&nbsp;
                          <input type="checkbox" <?php if($res['university_type'] == '网络教育'): ?>checked<?php endif; ?>>网络教育&nbsp;
                          <input type="checkbox" <?php if($res['university_type'] == '成人高考'): ?>checked<?php endif; ?>>成人高考&nbsp;
                          <input type="checkbox" <?php if($res['university_type'] == '开放教育'): ?>checked<?php endif; ?>>开放教育&nbsp;
                          <input type="checkbox" <?php if($res['university_type'] == '自学考试'): ?>checked<?php endif; ?>>自学考试&nbsp;
                          <input type="checkbox" <?php if($res['university_type'] == '其他'): ?>checked<?php endif; ?>>其他
                        </td>

                        </tr>

                        <tr>
                        <td width="100" height="40" style="text-align:center">姓名</td>
                        <td width="100">&nbsp;&nbsp;<?php echo $res['name']; ?></td>
                        <td width="40" height="40" style="text-align:center">性别</td>
                        <td width="80">&nbsp;&nbsp;
                          <input type="checkbox" <?php if($res['sex'] == 1): ?>checked<?php endif; ?>>男
                          <input type="checkbox" <?php if($res['sex'] == 2): ?>checked<?php endif; ?>>女
                        </td>
                        <td width="50" height="40" style="text-align:center">民族</td>
                        <td width="30">&nbsp;&nbsp;<?php echo $res['nation']; ?></td>
                        <td width="50" height="40" style="text-align:center">籍贯</td>
                        <td width="150">&nbsp;&nbsp;<?php echo $res['p_origin']; ?></td>
                        </tr>
                        <tr>
                        <td width="100" height="40" style="text-align:center">身份证号码</td>
                        <td colspan="4" width="">&nbsp;&nbsp;<?php echo $res['idcard']; ?></td>
                        <td width="100" height="40" style="text-align:center">公司及职位</td>
                        <td colspan="3" >&nbsp;&nbsp;<?php echo $res['company']; ?></td>
                        </tr>
                        <tr>
                        <td height="40" style="text-align:center">原毕业院校及专业</td>
                        <td colspan="3">&nbsp;&nbsp;<?php echo $res['old_school']; ?></td>
                        <td colspan="2" height="40" style="text-align:center">文化程度</td>
                        <td colspan="3">&nbsp;&nbsp;
                          <input type="checkbox" <?php if($res['education'] == '高中'): ?>checked<?php endif; ?>>高中&nbsp;
                          <input type="checkbox" <?php if($res['education'] == '中专'): ?>checked<?php endif; ?>>中专&nbsp;
                          <input type="checkbox" <?php if($res['education'] == '大专'): ?>checked<?php endif; ?>>大专&nbsp;
                          <input type="checkbox" <?php if($res['education'] == '本科'): ?>checked<?php endif; ?>>本科&nbsp;
                          <input type="checkbox" <?php if($res['education'] == '其他'): ?>checked<?php endif; ?>>其他
                        </td>
                        </tr>
                        <tr>
                        <td height="40" style="text-align:center">现住址</td>
                        <td colspan="8">&nbsp;&nbsp;<?php echo $res['address']; ?>&nbsp;&nbsp;&nbsp;&nbsp;(邮寄凭证使用)</td>
                        </tr>
                        <tr>
                        <td height="40" style="text-align:center">电话：</td>
                        <td colspan="3">&nbsp;&nbsp;<?php echo $res['tel']; ?></td>
                        <td colspan="5" height="40" style="text-align:left">&nbsp;&nbsp;紧急联系电话：<?php echo $res['em_tel']; ?><?php echo $res['em_name']; ?></td>
                        </tr>
                        <tr>
                        <td height="40" style="text-align:center">QQ</td>
                        <td colspan="3">&nbsp;&nbsp;<?php echo $res['qq']; ?></td>
                        <td colspan="5" height="40" style="text-align:left"></td>
                        </tr>
                        <tr>
                        <td colspan="9" height="40" style="text-align:left">
                          &nbsp;&nbsp;我学习的目的：&nbsp;&nbsp;<?php echo $res['study_md']; ?>
                          <!-- <input type="checkbox" if condition="$res.study_md eq '自我提升'"}checked{/if}>自我提升 &nbsp;&nbsp;                
                          <input type="checkbox" if condition="$res.study_md eq '岗位要求'"}checked{/if}>岗位要求       &nbsp;&nbsp;         
                          <input type="checkbox" if condition="$res.study_md eq '就业需求'"}checked{/if}>就业需求&nbsp;&nbsp;
                          <input type="checkbox" if condition="$res.study_md eq '入户需求'"}checked{/if}>入户需求&nbsp;&nbsp;
                          <input type="checkbox" if condition="$res.study_md eq '报考'"}checked{/if}>报考&nbsp;&nbsp;
                          <input type="checkbox" if condition="$res.study_md eq '其它'"}checked{/if}>其它&nbsp;&nbsp; -->
                        </td>
                        </tr>
                        <tr>
                        <td colspan="9" height="40" style="text-align:left">&nbsp;&nbsp;学费缴纳情况： 应收学费： &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;               实收学费：</td>
                        </tr>
                        <tr >
                        <td height="40" width="100" style="text-align:center">日期</td>
                        <td height="40" width="100" style="text-align:center">票具号码</td>
                        <td height="40" width="100" style="text-align:center">金额</td>
                        <td height="40" width="100" style="text-align:center">日期</td>
                        <td height="40" width="100" style="text-align:center">票具号码</td>
                        <td height="40" width="100" style="text-align:center">金额</td>
                        <td height="40" width="100" style="text-align:center">日期</td>
                        <td height="40" width="100" style="text-align:center">票具号码</td>
                        <td height="40" width="100" style="text-align:center">金额</td>
                        </tr>
                        <tr height="40" style="text-align:center">
                        <td><?php echo $res['f_date']; ?></td>
                        <td><?php echo $res['f_date_num']; ?></td>
                        <td><?php echo $res['f_money']; ?></td>
                        <td><?php echo $res['s_date']; ?></td>
                        <td><?php echo $res['s_date_num']; ?></td>
                        <td><?php echo $res['s_money']; ?></td>
                        <td><?php echo $res['t_date']; ?></td>
                        <td><?php echo $res['t_date_num']; ?></td>
                        <td><?php echo $res['t_money']; ?></td>
                        </tr>
<!--                         <tr>
                        <td height="40" colspan="4" rowspan="2">&nbsp;&nbsp;课程教学服务期限：<?php echo $res['study_yeah']; ?></td>
                        <td height="40" style="text-align:left" colspan="3">&nbsp;&nbsp;接待老师：<?php echo $res['teacher']; ?></td>
                        <td height="40" style="text-align:left" colspan="2">&nbsp;&nbsp;首次咨询时间：<?php echo $res['f_teacher_date']; ?></td>
                        </tr> -->
<!--                         <tr>

                        <td height="40" style="text-align:left" colspan="3">&nbsp;&nbsp;首次咨询老师：<?php echo $res['f_teacher']; ?></td>
                        <td height="40" style="text-align:left" colspan="2">&nbsp;&nbsp;首接来源渠道：<?php echo $res['f_soure']; ?></td>
                        </tr> -->
<!--                         <tr>
                        <td colspan="9" height="40" style="text-align:left">&nbsp;&nbsp;我对接待老师的评价： 
                              <input type="checkbox" <?php if($res['f_pingjia'] == 0): ?>checked<?php endif; ?>>不满意   &nbsp;
                              <input type="checkbox" <?php if($res['f_pingjia'] == 1): ?>checked<?php endif; ?>>一般  &nbsp;
                              <input type="checkbox" <?php if($res['f_pingjia'] == 2): ?>checked<?php endif; ?>>满意    &nbsp; 
                              <input type="checkbox" <?php if($res['f_pingjia'] == 3): ?>checked<?php endif; ?>>非常满意</td>
                        </tr> -->
                        <tr>
                        <td height="40" style="text-align:left" colspan="9">&nbsp;&nbsp;其他备注：<?php echo $res['other_remarks']; ?></td>
                        
                        </tr>
                        <tr>

                        <td colspan="9" style="font-size:0; padding:10px">
                        <img src="/<?php echo $res['idcard_pic']; ?>" onerror="this.src='/public/static/home/images/default_none.png'" style="border: none;   width: 20%;       height: 155px;" />
                        <img src="/<?php echo $res['f_idcard_pic']; ?>" onerror="this.src='/public/static/home/images/default_none.png'" style="border: none;   width: 20%;        height: 155px;" />
                        <img src="/<?php echo $res['graduate_pic']; ?>" onerror="this.src='/public/static/home/images/default_none.png'" style="border: none;   width: 20%;        height: 155px;" />
                        <img src="/<?php echo $res['verification_pic']; ?>" onerror="this.src='/public/static/home/images/default_none.png'" style="border: none;   width: 20%;       height: 155px;" />
                        <img src="/<?php echo $res['work_pic']; ?>" onerror="this.src='/public/static/home/images/default_none.png'" style="border: none;   width: 20%;        height: 155px;" />
                        </td>
                        
                        </tr>
                        </table>
                        <br />
                </div>

</div>




<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>













</body>
</html>