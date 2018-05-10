<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:63:"/www/web/lirenjy/public_html/app/user/view/index/education.html";i:1524563837;s:64:"/www/web/lirenjy/public_html/app/user/view/common/loginHead.html";i:1524724888;s:61:"/www/web/lirenjy/public_html/app/user/view/common/footer.html";i:1523437223;}*/ ?>
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
</style>
     <div class="weui-tab">
      <div class="weui-navbar">
        <div class="weui-navbar__item weui-bar__item--on" href="#tab1">
          基础信息
        </div>
        <div class="weui-navbar__item" href="#tab2">
          学籍信息
        </div>
      </div>
      <div class="weui-tab__bd">
        <div id="tab1" class="weui-tab__bd-item weui-tab__bd-item--active">
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>照片</p>
                    </div>
                    <div class="weui-cell__ft"><img src="/public/static/user/images/avatar/default.png" width="60"></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>姓名</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['name']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>性别</p>
                    </div>
                    <div class="weui-cell__ft"><?php if($list['sex'] == 1): ?>男<?php else: ?>女<?php endif; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>民族</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['nation']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>身份证</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['idcard']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>入学时间</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['enrol_date']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>预计毕业时间</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['graduation_date']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>毕业证发放时间</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['grant_date']; ?></div>
                </div>

        </div>
        <div id="tab2" class="weui-tab__bd-item">
          
                              
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>毕业学校名称</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['university']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>层次</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['university_course']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>专业名称</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['university_apply']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>学习形式</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['university_type']; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>学制</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['study_yeah']; ?>年</div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>毕业状态</p>
                    </div>
                    <div class="weui-cell__ft"><?php if($list['state'] == 2): ?>未毕业<?php else: ?>已毕业<?php endif; ?></div>
                </div>
                <div class="weui-cell weixin-info">
                    <div class="weui-cell__bd">
                        <p>学籍状态</p>
                    </div>
                    <div class="weui-cell__ft"><?php echo $list['school_status']; ?></div>
                </div>
                
        </div>
      </div>
    </div>












<!-- <div class="fly-home" style="background-image: url();">
    <?php if($userInfo['avatar']): ?>
    <img src="<?php echo imgUrl($userInfo['avatar']); ?>" alt="<?php echo $userInfo['username']; ?>">
    <?php else: ?>
    <img src="/public/static/user/images/avatar/default.png" alt="<?php echo $userInfo['username']; ?>">
    <?php endif; ?>
    <h1>
        <?php echo $userInfo['username']; if($userInfo['sex'] == 1): ?>
        <i class="iconfont icon-nan"></i>
        <?php else: ?>
        <i class="iconfont icon-nv"></i>
        <?php endif; ?>
    </h1>
    <p class="fly-home-info">
        <i class="iconfont icon-shijian"></i><span><?php echo toDate($userInfo['reg_time'],'Y-m-d'); ?> 加入</span>
        <?php if($userInfo['city']): ?>
        <i class="iconfont icon-chengshi"></i><span><?php echo toCity($userInfo['city']); ?></span>
        <?php endif; ?>
    </p>
    <?php if($userInfo['motto']): ?>
    <p class="fly-home-sign">（ <?php echo $userInfo['motto']; ?>）</p>
    <?php endif; ?>
</div>-->

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
  });
</script>