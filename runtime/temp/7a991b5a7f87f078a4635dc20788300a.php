<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:66:"/www/web/lirenjy/public_html/app/user/view/index/graduate_pic.html";i:1525229948;s:64:"/www/web/lirenjy/public_html/app/user/view/common/loginHead.html";i:1524724888;s:61:"/www/web/lirenjy/public_html/app/user/view/common/footer.html";i:1523437223;}*/ ?>
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

<style type="text/css">
.photos_info{    width: 90%;
    margin: 20px auto;
    display: block;}
.photos_info img{ width: 100%; }
.photos_info span{ display: block; text-align: center; color: #ef0000; }
</style>
<?php if($info['graduate_state'] == 1): ?>
<div class="photos_info">
    <img src="/<?php echo $info['graduate_pic']; ?>" />
    <span>(<?php echo $info['graduate_state_title']; ?>)</span>
</div>
<?php elseif($info['graduate_state'] == 2): ?>
<div class="photos_info">
    <img src="/<?php echo $info['graduate_pic']; ?>" />
    <span>(<?php echo $info['graduate_state_title']; ?>)</span>
</div>
<?php elseif($info['graduate_state'] == 3): ?>
    <div class="photos_info">
        <img src="/<?php echo $info['graduate_pic']; ?>" />
        <span>(<?php echo $info['graduate_state_title']; ?>)</span>
    </div>
    <div class="weui-cells weui-cells_form">
      <div class="weui-cell">
        <div class="weui-cell__bd">
          <div class="weui-uploader">
            <div class="weui-uploader__hd">
              <p class="weui-uploader__title">上传</p>
              <div class="weui-uploader__info">0/1</div>
            </div>
            <div class="weui-uploader__bd">
              <ul class="weui-uploader__files" id="uploaderFiles">
              </ul>
              <div class="weui-uploader__input-box">
                <input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*" multiple="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<?php else: ?>
    <div class="weui-cells weui-cells_form">
      <div class="weui-cell">
        <div class="weui-cell__bd">
          <div class="weui-uploader">
            <div class="weui-uploader__hd">
              <p class="weui-uploader__title">上传</p>
              <div class="weui-uploader__info">0/1</div>
            </div>
            <div class="weui-uploader__bd">
              <ul class="weui-uploader__files" id="uploaderFiles">
              </ul>
              <div class="weui-uploader__input-box">
                <input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*" multiple="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<?php endif; ?>
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/fastclick/1.0.6/fastclick.min.js"></script>
<script>
  $(function() {
    FastClick.attach(document.body);
  });
</script>
<script src="https://cdn.bootcss.com/jquery-weui/1.2.0/js/jquery-weui.min.js"></script>
<script>
  $(function () {  
    // 允许上传的图片类型  
    var allowTypes = ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'];  
    // 1024KB，也就是 1MB  
    var maxSize = 2048 * 2048;  
    // 图片最大宽度  
    var maxWidth = 10000;  
    // 最大上传图片数量  
    var maxCount = 1;  
    $('#uploaderInput').on('change', function (event) {  
      var files = event.target.files;  
      //console.log(files);return false;
        // 如果没有选中文件，直接返回  
        if (files.length === 0) {  
          return;  
        }  
        
        for (var i = 0, len = files.length; i < len; i++) {  
          var file = files[i];  
          var reader = new FileReader();  
          
            // 如果类型不在允许的类型范围内  
            if (allowTypes.indexOf(file.type) === -1) {  
              
                $.alert("该类型不允许上传！", "警告！");              
              continue;  
            }  
            
            if (file.size > maxSize) {  
              //$.weui.alert({text: '图片太大，不允许上传'});
                $.alert("图片太大，不允许上传", "警告！");              
              continue;  
            }  
            
            if ($('.weui-uploader__file').length >= maxCount) {  
              $.weui.alert({text: '最多只能上传' + maxCount + '张图片'});  
              return;  
            }  
            reader.readAsDataURL(file);  
            reader.onload = function (e) {
                //console.log(e);
              var img = new Image(); 
                img.src = e.target.result;         
                img.onload = function () {  
                    // 不要超出最大宽度  
                    var w = Math.min(maxWidth, img.width);  
                    // 高度按比例计算  
                    var h = img.height * (w / img.width);  
                    var canvas = document.createElement('canvas');  
                    var ctx = canvas.getContext('2d');  
                    // 设置 canvas 的宽度和高度  
                    canvas.width = w;  
                    canvas.height = h;  
                    ctx.drawImage(img, 0, 0, w, h); 
　　　　　　　　　　　　
                    var base64 = canvas.toDataURL('image/jpeg',0.8);  
                   //console.log(base64);
                    // 插入到预览区  
                    var $preview = $('<li class="weui-uploader__file weui-uploader__file_status" style="background-image:url(' + img.src + ')"><div class="weui-uploader__file-content">0%</div></li>');  
                    $('#uploaderFiles').append($preview);  
                    var num = $('.weui-uploader__file').length;  
                    $('.weui-uploader__info').text(num + '/' + maxCount);  
                    
                   
                     var formData = new FormData();
 
                    formData.append("images", base64);
                    //console.log(img.src);
                         $.ajax({
     
                                    url: "<?php echo url('index/graduate_pic'); ?>",
                                     
                                    type: 'POST',
                                     
                                    data: formData,
                                                                                     
                                    contentType:false,
                                                                                    
                                    processData:false,
                                    
                                    success: function(data){
                                    
                                    $preview.removeClass('weui-uploader__file_status');
                                            $.toast("上传成功", function(){
                                                $(".weui-uploader__input-box").remove();
                                                //console.log('close');
                                            });
                                },
                                error: function(xhr, type){
                                    alert('Ajax error!')
                                }
                                    });
        
                      };  
                      
                                    
                    };  
                    
                  }  
                });  
  }); 
</script>
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



