<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:60:"/www/web/lirenjy/public_html/app/admin/view/members/see.html";i:1525859352;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/head.html";i:1521426174;s:60:"/www/web/lirenjy/public_html/app/admin/view/common/foot.html";i:1521426174;}*/ ?>
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
    .print-btn-right a{
            border: 1px solid #009688;
    background-color: #009689;
    font-size: 14px;
    color: #fff;
    display: block;
    line-height: 38px;
    width: 100px;
    height: 38px;
    text-align: center;
    }
</style>
<div class="print-btn">
    <div class="print-btn-right">
        <a href="<?php echo url('preview'); ?>?id=<?php echo $res['id']; ?>"/>查看登记表</a>
    </div>
</div>
<div class="admin-main layui-anim layui-anim-upbit">
    <fieldset class="layui-elem-field layui-field-title">
        <legend><?php echo lang('member'); ?>照片</legend>
    </fieldset>

<!--     <div class="layui-inline">
      <label class="layui-form-label">登记照片</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="reg_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/public/<?php echo $res['reg_img']; ?>">
            <p id="regText"></p>
        </div>
            <button type="button" class="layui-btn" id="reg_img">上传图片</button>
        </div>
    </div>

    <div class="layui-inline">
      <label class="layui-form-label">身份证扫描件(正面)</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="f_idcard_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/public/<?php echo $res['f_idcard_img']; ?>">
            <p id="f_idcardText"></p>
        </div>
            <button type="button" class="layui-btn" id="f_idcard_img">上传图片</button>
        </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">身份证扫描件(反面)</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="r_idcard_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/public/<?php echo $res['r_idcard_img']; ?>">
            <p id="r_idcardText"></p>
        </div>
            <button type="button" class="layui-btn" id="r_idcard_img">上传图片</button>
        </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">学历证书扫描件</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="dip_scans_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/public/<?php echo $res['dip_scans_img']; ?>">
            <p id="dip_scansText"></p>
        </div>
            <button type="button" class="layui-btn" id="dip_scans_img">上传图片</button>
        </div>
    </div> -->

    <div class="layui-inline">
      <label class="layui-form-label">登记照</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="dip_scans_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/<?php echo $res['enregister_pic']; ?>">
            <p id="dip_scansText"></p>
        </div>
        </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">身份证正面</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="dip_scans_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/<?php echo $res['idcard_pic']; ?>">
            <p id="dip_scansText"></p>
        </div>
        </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">身份证反面</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="dip_scans_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/<?php echo $res['f_idcard_pic']; ?>">
            <p id="dip_scansText"></p>
        </div>
        </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">毕业证照片</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="dip_scans_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/<?php echo $res['graduate_pic']; ?>">
            <p id="dip_scansText"></p>
        </div>
        </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">验证报告</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="dip_scans_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/<?php echo $res['verification_pic']; ?>">
            <p id="dip_scansText"></p>
        </div>
        </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">居住证明</label>
      <div class="layui-input-inline">
        <div class="layui-upload-list">
            <img class="layui-upload-img" id="dip_scans_img_src" onerror="this.src='/public/static/home/images/default_none.png'" src="/<?php echo $res['work_pic']; ?>">
            <p id="dip_scansText"></p>
        </div>
        </div>
    </div>
</div>

<style type="text/css">
 .layui-input, .layui-textarea{ border: none; border-bottom: 1px solid #ccc; }
</style>

<!-- 学员信息 -->
<div class="admin-main layui-anim layui-anim-upbit">
    <fieldset class="layui-elem-field layui-field-title">
        <legend><?php echo lang('member'); ?><?php echo lang('info'); ?></legend>
    </fieldset>
<form class="layui-form" action="">
  <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-inline">
          <input type="text" name="name" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['name']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-inline">
          <input type="radio" name="sex" value="1" title="男" <?php if($res['sex'] == 1): ?>checked<?php endif; ?>>
          <input type="radio" name="sex" value="2" title="女" <?php if($res['sex'] == 2): ?>checked<?php endif; ?>>
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">民族</label>
        <div class="layui-input-inline">
          <input type="text" name="nation" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['nation']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">身份证号码</label>
        <div class="layui-input-inline">
          <input type="text" name="idcard" placeholder="" autocomplete="off" class="layui-input" value="<?php echo $res['idcard']; ?>">
        </div>
      </div>
      <div class="layui-inline">
      <label class="layui-form-label">文化程度</label>
            <div class="layui-input-inline">
                      <select name="education">
                        <option value=""></option>
                        <option value="高中" <?php if($res['education'] == '高中'): ?>selected<?php endif; ?>>高中</option>
                        <option value="中专" <?php if($res['education'] == '中专'): ?>selected<?php endif; ?>>中专</option>
                        <option value="大专" <?php if($res['education'] == '大专'): ?>selected<?php endif; ?>>大专</option>
                        <option value="本科" <?php if($res['education'] == '本科'): ?>selected<?php endif; ?>>本科</option>
                        <option value="其他" <?php if($res['education'] == '其他'): ?>selected<?php endif; ?>>其他</option>
                      </select>
            </div>

    </div>
      <div class="layui-inline">
        <label class="layui-form-label">籍贯</label>
        <div class="layui-input-inline">
          <input type="text" name="p_origin" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['p_origin']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">电话</label>
        <div class="layui-input-inline">
          <input type="tel" name="tel" autocomplete="off" class="layui-input" value="<?php echo $res['tel']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">紧急联系人姓名</label>
        <div class="layui-input-inline">
          <input type="text" name="em_name" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['em_name']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">紧急联系电话</label>
        <div class="layui-input-inline">
          <input type="tel" name="em_tel" autocomplete="off" class="layui-input" value="<?php echo $res['em_tel']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">Emeil</label>
        <div class="layui-input-inline">
          <input type="text" name="email" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['email']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">QQ</label>
        <div class="layui-input-inline">
          <input type="text" name="qq" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['qq']; ?>">
        </div>
      </div>
<!--       <div class="layui-inline">
        <label class="layui-form-label">微信</label>
        <div class="layui-input-inline">
          <input type="text" name="wechat" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['wechat']; ?>">
        </div>
      </div> -->
  </div>
  <div class="layui-form-item">
        <div class="layui-block">
        <label class="layui-form-label">职业</label>
        <div class="layui-input-block">
  <select name="company">
    <option value=""></option>
    <option value="文职" <?php if($res['company'] == '文职'): ?>selected<?php endif; ?>>文职</option>
    <option value="管理" <?php if($res['company'] == '管理'): ?>selected<?php endif; ?>>管理</option>
    <option value="销售" <?php if($res['company'] == '销售'): ?>selected<?php endif; ?>>销售</option>
    <option value="柜面" <?php if($res['company'] == '柜面'): ?>selected<?php endif; ?>>柜面</option>
    <option value="教师" <?php if($res['company'] == '教师'): ?>selected<?php endif; ?>>教师</option>
    <option value="设计" <?php if($res['company'] == '设计'): ?>selected<?php endif; ?>>设计</option>
    <option value="财务" <?php if($res['company'] == '财务'): ?>selected<?php endif; ?>>财务</option>
    <option value="法务" <?php if($res['company'] == '法务'): ?>selected<?php endif; ?>>法务</option>
    <option value="医护" <?php if($res['company'] == '医护'): ?>selected<?php endif; ?>>医护</option>
    <option value="技术" <?php if($res['company'] == '技术'): ?>selected<?php endif; ?>>技术</option>
    <option value="工人" <?php if($res['company'] == '工人'): ?>selected<?php endif; ?>>工人</option>
    <option value="其他" <?php if($res['company'] == '其他'): ?>selected<?php endif; ?>>其他</option>
  </select>
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-block">
        <label class="layui-form-label">原毕业院校及专业</label>
        <div class="layui-input-block">
          <input type="text" name="old_school" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['old_school']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-block">
        <label class="layui-form-label">现住址</label>
        <div class="layui-input-block">
          <input type="text" name="address" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['address']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">学习类型</label>
        <div class="layui-input-inline">
                      <select name="university_type">
                        <option value=""></option>
                        <option value="成人高考" <?php if($res['university_type'] == '成人高考'): ?>selected<?php endif; ?>>成人高考</option>
                        <option value="网络教育" <?php if($res['university_type'] == '网络教育'): ?>selected<?php endif; ?>>网络教育</option>
                        <option value="开放教育" <?php if($res['university_type'] == '开放教育'): ?>selected<?php endif; ?>>开放教育</option>
                        <option value="自学考试" <?php if($res['university_type'] == '自学考试'): ?>selected<?php endif; ?>>自学考试</option>
                        <option value="其他" <?php if($res['university_type'] == '其他'): ?>selected<?php endif; ?>>其他</option>
                      </select>
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">报考院校</label>
        <div class="layui-input-inline">
          <input type="text" name="university" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['university']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">报考专业</label>
        <div class="layui-input-inline">
          <input type="text" name="university_apply" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['university_apply']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">报读层次</label>
        <div class="layui-input-inline">
                      <select name="university_course">
                        <option value=""></option>
                        <option value="高升专" <?php if($res['university_course'] == '高升专'): ?>selected<?php endif; ?>>高升专</option>
                        <option value="高升本" <?php if($res['university_course'] == '高升本'): ?>selected<?php endif; ?>>高升本</option>
                        <option value="专升本" <?php if($res['university_course'] == '专升本'): ?>selected<?php endif; ?>>专升本</option>
                        <option value="本升本" <?php if($res['university_course'] == '本升本'): ?>selected<?php endif; ?>>本升本</option>
                        <option value="其他" <?php if($res['university_course'] == '其他'): ?>selected<?php endif; ?>>其他</option>
                      </select>
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">学费缴纳情况</label>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">应收学费</label>
        <div class="layui-input-inline">
          <input type="text" name="tuition" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['tuition']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-block">
        <label class="layui-form-label">了解途径</label>
        <div class="layui-input-block">
          <input type="text" name="understand_way" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['understand_way']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">我学习的目的:</label>
        <div class="layui-input-inline">
                      <select name="study_md">
                        <option value=""></option>
                        <option value="自我提升" <?php if($res['study_md'] == '自我提升'): ?>selected<?php endif; ?>>自我提升</option>
                        <option value="岗位要求" <?php if($res['study_md'] == '岗位要求'): ?>selected<?php endif; ?>>岗位要求</option>
                        <option value="就业需求" <?php if($res['study_md'] == '就业需求'): ?>selected<?php endif; ?>>就业需求</option>
                        <option value="入户需求" <?php if($res['study_md'] == '入户需求'): ?>selected<?php endif; ?>>入户需求</option>
                        <option value="报考" <?php if($res['study_md'] == '报考'): ?>selected<?php endif; ?>>报考</option>
                        <option value="其他" <?php if($res['study_md'] == '其他'): ?>selected<?php endif; ?>>其他</option>
                      </select>
        </div>
      </div>
  </div>
    <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">入学时间</label>
        <div class="layui-input-inline">
          <input type="date" name="enrol_date" class="layui-input" value="<?php echo $res['enrol_date']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">预计毕业时间</label>
        <div class="layui-input-inline">
          <input type="date" name="graduation_date" class="layui-input" value="<?php echo $res['graduation_date']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">毕业证发放时间</label>
        <div class="layui-input-inline">
          <input type="date" name="grant_date" class="layui-input" value="<?php echo $res['grant_date']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">毕业状态:</label>
        <div class="layui-input-inline">
                      <select name="state">
                        <option value=""></option>
                        <option value="1" <?php if($res['state'] == 1): ?>selected<?php endif; ?>>已毕业</option>
                        <option value="2" <?php if($res['state'] == 2): ?>selected<?php endif; ?>>未毕业</option>
                      </select>
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">学籍状态:</label>
        <div class="layui-input-inline">
                      <select name="school_status">
                        <option value=""></option>
                        <option value="注册学籍" <?php if($res['school_status'] == '注册学籍'): ?>selected<?php endif; ?>>注册学籍</option>
                        <option value="已离校" <?php if($res['school_status'] == '已离校'): ?>selected<?php endif; ?>>已离校</option>
                        <option value="保留学籍" <?php if($res['school_status'] == '保留学籍'): ?>selected<?php endif; ?>>保留学籍</option>
                      </select>
        </div>
      </div>
  </div>
<hr />
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">日期</label>
        <div class="layui-input-inline">
          <input type="date" name="f_date" class="layui-input" value="<?php echo $res['f_date']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">票具号码</label>
        <div class="layui-input-inline">
          <input type="text" name="f_date_num" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['f_date_num']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">金额</label>
        <div class="layui-input-inline">
          <input type="text" name="f_money" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['f_money']; ?>">
        </div>
      </div>
  </div>
  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">日期</label>
        <div class="layui-input-inline">
          <input type="date" name="s_date" class="layui-input" value="<?php echo $res['s_date']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">票具号码</label>
        <div class="layui-input-inline">
          <input type="text" name="s_date_num" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['s_date_num']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">金额</label>
        <div class="layui-input-inline">
          <input type="text" name="s_money" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['s_money']; ?>">
        </div>
      </div>
  </div>
    <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">日期</label>
        <div class="layui-input-inline">
          <input type="date" name="t_date" class="layui-input" value="<?php echo $res['t_date']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">票具号码</label>
        <div class="layui-input-inline">
          <input type="text" name="t_date_num" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['t_date_num']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">金额</label>
        <div class="layui-input-inline">
          <input type="text" name="t_money" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['t_money']; ?>">
        </div>
      </div>
  </div>
<hr />

  <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">学制：</label>
        <div class="layui-input-inline">
          <input type="text" name="study_yeah" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['study_yeah']; ?>">
        </div>
      </div>
<!--       <div class="layui-inline">
        <label class="layui-form-label">接待老师：</label>
        <div class="layui-input-inline">
          <input type="text" name="teacher" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['teacher']; ?>">
        </div>
      </div> -->
  </div>
<!--   <div class="layui-form-item">
        <div class="layui-block">
        <label class="layui-form-label">我对接待老师的评价：</label>
        <div class="layui-input-block">
          <input type="radio" name="f_pingjia" value="0" title="不满意" <?php if($res['f_pingjia'] == 0): ?>checked<?php endif; ?>>
          <input type="radio" name="f_pingjia" value="1" title="一般" <?php if($res['f_pingjia'] == 1): ?>checked<?php endif; ?>>
          <input type="radio" name="f_pingjia" value="2" title="满意" <?php if($res['f_pingjia'] == 2): ?>checked<?php endif; ?>>
          <input type="radio" name="f_pingjia" value="3" title="非常满意" <?php if($res['f_pingjia'] == 3): ?>checked<?php endif; ?>>
        </div>
      </div>
  </div> -->
<!--     <div class="layui-form-item">
        <div class="layui-inline">
        <label class="layui-form-label">首次咨询老师：</label>
        <div class="layui-input-inline">
          <input type="text" name="f_teacher" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['f_teacher']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">首次咨询时间：</label>
        <div class="layui-input-inline">
          <input type="date" name="f_teacher_date" class="layui-input" value="<?php echo $res['f_teacher_date']; ?>">
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">首接来源渠道：</label>
        <div class="layui-input-inline">
          <input type="text" name="f_soure" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['f_soure']; ?>">
        </div>
      </div>
  </div> -->
  <div class="layui-form-item">
        <div class="layui-block">
        <label class="layui-form-label">其他备注：</label>
        <div class="layui-input-block">
          <input type="text" name="other_remarks" placeholder="请输入" autocomplete="off" class="layui-input" value="<?php echo $res['other_remarks']; ?>">
        </div>
      </div>
  </div>
<input type="hidden" name="id" value="<?php echo $res['id']; ?>">
<input type="hidden" name="reg_img" id="real_reg_img" value="<?php echo $res['reg_img']; ?>">
<input type="hidden" name="f_idcard_img" id="real_f_idcard_img" value="<?php echo $res['f_idcard_img']; ?>">
<input type="hidden" name="r_idcard_img" id="real_r_idcard_img" value="<?php echo $res['r_idcard_img']; ?>">
<input type="hidden" name="dip_scans_img" id="real_dip_scans_img" value="<?php echo $res['dip_scans_img']; ?>">

  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="form_btn">保存</button>
      
    </div>
  </div>

</form>
 


<!-- 学员信息 -->

<script type="text/javascript" src="/public/static/plugins/layui/layui.js"></script>



</div>
<script type="text/javascript" src="/public/static/admin/js/jquery-3.3.1-min.js"></script>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(form_btn)', function(data){
    // layer.msg(JSON.stringify(data.field));
    $.post("/admin/members/from_data",data.field,function(res){
      return layer.msg(res.message);
    },'json');
    return false;
  });
});

layui.use('upload', function(){
  var $ = layui.jquery
  ,upload = layui.upload;
  
  //普通图片上传
  var uploadInst = upload.render({
    elem: '#reg_img'
    ,url: '/admin/members/upload'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#reg_img_src').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
      $("#real_reg_img").val(res.src);
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#regText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });

    var uploadInst = upload.render({
    elem: '#f_idcard_img'
    ,url: '/admin/members/upload'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#f_idcard_img_src').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
      $("#real_f_idcard_img").val(res.src);
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#f_idcardText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });

    var uploadInst = upload.render({
    elem: '#r_idcard_img'
    ,url: '/admin/members/upload'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#r_idcard_img_src').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
      $("#real_r_idcard_img").val(res.src);
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#r_idcardText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });

    var uploadInst = upload.render({
    elem: '#dip_scans_img'
    ,url: '/admin/members/upload'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#dip_scans_img_src').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
      $("#real_dip_scans_img").val(res.src);
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#dip_scansText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });

});



</script>
</body>
</html>