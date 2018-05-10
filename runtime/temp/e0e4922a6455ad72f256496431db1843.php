<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:58:"/www/web/lirenjy/public_html/app/user/view/index/join.html";i:1525859810;s:64:"/www/web/lirenjy/public_html/app/user/view/common/loginHead.html";i:1524724888;s:61:"/www/web/lirenjy/public_html/app/user/view/common/footer.html";i:1523437223;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo $title; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="<?php echo $title; ?>">
    <meta name="description" content="<?php echo $title; ?>">

    <link rel="stylesheet" href="/public/static/user/lib/weui.min.css">
    <link rel="stylesheet" href="/public/static/user/css/jquery-weui.css">


</head>
<body>

<style type="text/css">
body, html {
  height: 100%;
  -webkit-tap-highlight-color: transparent;
  color: #333;
}
.weixin-block_10{ height: 15px; background-color: #f0efed;  border-bottom: 1px solid #e5e5e5; border-top:1px solid #e5e5e5;}
.block_10{ height: 10px; background-color: #f0efed;  border-bottom: 1px solid #e5e5e5;}
.weixin-header{ position: fixed; z-index: 10000; left: 0; top: 0; width: 100%; height: 30px; border-bottom: 1px solid #dddddd;background-color: #f0efed;}
.weixin-header p{ font-size:  12px; margin: 0 10px; line-height: 32px;  }
.weixin-h30{ height: 30px;  background: #f0efed; }
.weixin-h20{ height: 20px;  background: #f0efed; }
.weixin-h10{ height: 10px;  background: #f0efed; }
.weixin-bg{background: #f0efed;}
.weixin-basicinfo{ margin-top: 30px;
    height: 90px;
   }
.basicinfo_1{ width: 30%;
    float: left;
    display: inline-block; }
.basicinfo_1 img{    border-radius: 100px;
    width: 70px;
    margin: 10px auto;
    display: block;}
.basicinfo_2{ width: 70%; display: inline-block; margin-top: 20px;}

.basicinfo_2 h3{
    font-weight: initial;}



.my-info,.messages{ height: 46px;line-height: 46px;
    font-weight: normal;}
.my-info img{ margin: 11px 5px 0 15px;
    width: 20px;
    float: left;}
.messages img{ margin: 13px 5px 0 15px;
    width: 20px;
    float: left;}
.messages span{    font-size: 14px;}
.my-infos ul li{ margin: 0px 40px;
    list-style: none;
    font-size: 12px;
    line-height: 24px;
    height: 24px; }
.messages{ color: red; }
.messages_num span{    background-color: red;
    color: #fff;
    width: 25px;
    display: block;
    text-align: center;
    border-radius: 15px; }
.weui-cell:before{ border: none; }
.fun-list a{ border-bottom: 1px solid #ddd; }
.fun-list a img{width: 20px;    margin-right: 10px;} 
.join-info{}
.join_shijian{     background: url(/public/static/user/img/time.svg) 0 4px no-repeat;
    background-size: 14px;
    padding-left: 20px; font-size: 14px; color: #ccc; display: inline-block; }
    .dingwei{     background: url(/public/static/user/img/seat.svg) 0 3px no-repeat;
    background-size: 14px;
    padding-left: 20px; font-size: 14px; color: #ccc; display: inline-block; }
    .weixin-footer{ margin-top: 30px; }
</style>

<style>
.weixin-info{     border-bottom: 1px solid #ddd; }
.weixin-join-btn{ padding: 15px; }
.open-popup{ color: #888888;}
.close-popup{margin: 10px 10px 20px 10px;}
.join_contract_content{ position: relative; }
.join_contract_a{ position: absolute;top: 10px;    right: 10px; }
</style>
<form>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">真实姓名</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="text" name="name"  placeholder="请填写真实姓名">
    </div>
  </div>
</div>
<div class="weui-cell">
        <div class="weui-cell__hd"><label class="weui-label">性别</label></div>
        <div class="weui-cell__bd">
          <input class="weui-input" id="sex" type="text" name="sex" placeholder="请选择">
        </div>
</div>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">身份证号码</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="text" name="idcard"  placeholder="请填写身份证号码">
    </div>
  </div>
</div>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">民族</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="text" name="nation" placeholder="请填写民族">
    </div>
  </div>
</div>

<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">职业</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" id="company" type="text" name="company" placeholder="请选择">
    </div>
  </div>
</div>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">原毕业院校及专业</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="text" name="old_school"  placeholder="请填写原毕业院校及专业">
    </div>
  </div>
</div>
<div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">文化程度</label></div>
        <div class="weui-cell__bd">
          <input class="weui-input" id="culture" type="text" name="education" placeholder="请选择" readonly="">
        </div>
</div>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">报考院校</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="text" name="university"  placeholder="请填写学校名称">
    </div>
  </div>
</div>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">报考专业</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="text" name="university_apply"  placeholder="请填写专业名称">
    </div>
  </div>
</div>
<div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">报读层次</label></div>
        <div class="weui-cell__bd">
          <input class="weui-input" id="course" type="text" name="university_course" placeholder="请选择" readonly="">
        </div>
</div>
<div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">学习类型</label></div>
        <div class="weui-cell__bd">
          <input class="weui-input" id="type" type="text" name="university_type" placeholder="请选择" readonly="">
        </div>
</div>
<div class="weui-cell">
        <div class="weui-cell__hd"><label for="name" class="weui-label">学习目的</label></div>
        <div class="weui-cell__bd">
          <input class="weui-input" id="study_md" type="text" name="study_md" placeholder="请选择" readonly="">
        </div>
</div>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">邮寄地址</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="text" name="address"  placeholder="邮寄地址">
    </div>
  </div>
</div>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">手机号</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="number" name="tel"  placeholder="手机号">
    </div>
  </div>
</div>
<div class="weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__hd"><label class="weui-label">QQ</label></div>
    <div class="weui-cell__bd">
      <input class="weui-input" type="number" name="qq" pattern="[0-9]*"  placeholder="QQ">
    </div>
  </div>
</div>
</div>    
  </div>
</div>
<div class="weui-cells__title">备注</div>
<div class="weui-cells weui-cells_form">
  <div class="weui-cell">
    <div class="weui-cell__bd">
      <textarea class="weui-textarea" name="other_remarks" placeholder="请输入文本" rows="3"></textarea>
      <div class="weui-textarea-counter"><span>0</span>/200</div>
    </div>
  </div>
</div>
  <div class="weui-cells_checkbox">
        <?php if(is_array($contract) || $contract instanceof \think\Collection || $contract instanceof \think\Paginator): $i = 0; $__LIST__ = $contract;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>          
          <div class="join_contract_content">
            <label class="weui-cell weui-check__label">
                <div class="weui-cell__hd">
                    <input type="radio" class="weui-check" value="<?php echo $vo['title']; ?>" name="contract">
                    <i class="weui-icon-checked"></i>
                </div>
                <div class="weui-cell__bd">
                    <p><?php echo $vo['title']; ?>，阅读并同意</p>
                </div>
            </label>
            <div class="weui-cell__bd join_contract_a">
                    <a href="<?php echo url('index/cat_contract',array('id'=>$vo['contract_id'])); ?>">《相关条款》</a>
            </div>
          </div>
        <?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
<div class="weui-cells__tips">底部说明文字底部说明文字</div>
<div class="weixin-join-btn">
<input class="weui-input" type="hidden" name="user_id" value="<?php echo $user_id; ?>">
<a href="javascript:;" class="weui-btn weui-btn_primary contract_agree" id="submit">提交</a>
</form>
</div>
<div class="weui-footer weixin-footer">
  <p class="weui-footer__links">
    <a href="javascript:void(0);" class="weui-footer__link">立人助学</a>
  </p>
  <p class="weui-footer__text">Copyright © 2008-2016 lirenjy.com</p>
</div>
<script src="/public/static/user/lib/jquery-2.1.4.js"></script>
<script src="/public/static/user/lib/fastclick.js"></script>
<script src="/public/static/user/js/jquery-weui.js"></script>


    <script>
      $('.delete-swipeout').click(function () {
        $(this).parents('.weui-cell').remove()
      })
      $('.close-swipeout').click(function () {
        $(this).parents('.weui-cell').swipeout('close')
      })
    </script>
    </body>
</html>



<script>
  $(function() {
    FastClick.attach(document.body);
      $('#submit').click(function() {
          var d = {};
          var t = $('form').serializeArray();
          $.each(t, function() {
            d[this.name] = this.value;
          });
          //console.log(d);
          if(d.name == '' ){
            $.toast("姓名不能为空", "text");
            return false;
          }
          if(d.sex == '' ){
            $.toast("性别不能为空", "text");
            return false;
          }
          if(d.idcard == '' ){
            $.toast("身份证不能为空", "text");
            return false;
          }
          if(d.nation == '' ){
            $.toast("民族不能为空", "text");
            return false;
          }
          if(d.company == '' ){
            $.toast("职业不能为空", "text");
            return false;
          }
          if(d.old_school == '' ){
            $.toast("毕业院校不能为空", "text");
            return false;
          }
          if(d.education == '' ){
            $.toast("文化程度不能为空", "text");
            return false;
          }
          if(d.university == '' ){
            $.toast("报考院校不能为空", "text");
            return false;
          }
          if(d.university_apply == '' ){
            $.toast("报考专业不能为空", "text");
            return false;
          }
          if(d.university_course == '' ){
            $.toast("报读层次不能为空", "text");
            return false;
          }
          if(d.university_type == '' ){
            $.toast("学习类型不能为空", "text");
            return false;
          }
          if(d.study_md == '' ){
            $.toast("学习目的不能为空", "text");
            return false;
          }
          if(d.address == '' ){
            $.toast("邮寄地址不能为空", "text");
            return false;
          }
          if(d.tel == '' ){
            $.toast("手机号不能为空", "text");
            return false;
          }
          if(!d.contract){
            $.toast("请选择合同", "text");
            return false;
          }
          $.post('/user/index/join',d,function(res){
            if(res.code > 0){
              $.alert({
                        title: '提交成功',
                        text: '跳转到签名',
                        onOK: function () {
                          $(window).attr('location','/user/index/contract');
                        }
                      });
            }
            
          });
      });
  });
</script>
<script type="text/javascript">
$("#sex").picker({
  title: "性别",
  cols: [
    {
      textAlign: 'center',
      values: ['男', '女']
    }
  ]
});
$("#culture").picker({
  title: "文化程度",
  cols: [
    {
      textAlign: 'center',
      values: ['高中', '中专', '大专','本科','其他']
    }
  ]
});
$("#company").picker({
  title: "职业",
  cols: [
    {
      textAlign: 'center',
      values: ['文职', '管理', '销售','柜面','教师', '设计','财务','法务', '医护','工人','其他']
    }
  ]
});
$("#course").picker({
  title: "报读层次",
  cols: [
    {
      textAlign: 'center',
      values: ['高升专','高升本','专升本','本升本','其他']
    }
  ]
});
$("#type").picker({
  title: "学习类型",
  cols: [
    {
      textAlign: 'center',
      values: ['成人高考', '网络教育', '开放教育', '自学考试','其他']
    }
  ]
});
$("#study_md").picker({
  title: "学习目的",
  cols: [
    {
      textAlign: 'center',
      values: ['自我提升', '岗位要求', '就业需求', '入户需求','报考','其他']
    }
  ]
});
// $("#contract").picker({
//   title: "服务合同",
//   cols: [
//     {
//       textAlign: 'center',
//       values: <?php echo $contract_data; ?>
//     }
//   ]
// });
// 
</script>