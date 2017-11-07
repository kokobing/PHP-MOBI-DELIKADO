<?php
require "../inc/cn_about_core.php";
?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php if($str[pagetitle]!=''){echo $str[pagetitle];}else{echo $setinfo[title];}?></title>
<meta name="keywords" content="<?php if($str[keywords]!=''){echo $str[keywords];}else{echo $setinfo[keywords];}?>" />
<meta name="description" content="<?php if($str[description]!=''){echo $str[description];}else{echo $setinfo[description];}?>" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<link rel="stylesheet" type="text/css" href="/inc/css/jquery.mobile.theme-1.3.1.css"><!-- chang theme here -->
<link rel="stylesheet" type="text/css" href="/inc/css/jquery.mobile.structure-1.3.1.css">
<link rel="stylesheet" type="text/css" href="/inc/css/resetui.css">

<script src="/inc/js/jquery-1.9.1.min.js"></script>
<script src="/inc/js/slider.min.js"></script>
<script src="/inc/js/iscroll.js"></script>
<script src="/inc/js/custom.js"></script>
<script src="/inc/js/jquery.mobile-1.3.1.min.js"></script>


<?php if($setinfo[otherheader]!=''){echo $setinfo[otherheader];}?>
<?php if(trim($setinfo[statistics])!=''){echo $setinfo[statistics];}//统计代码?>
</head>


<body <?php if($setinfo[iscopy]=='1'){echo ' oncontextmenu="return false" onselectstart="return false" ondragstart="return false" onbeforecopy="return false"';}?>>
<div data-role="page" id="about" class="webapp" >

<? require "../header.php"; ?>   




<div data-role="content"  data-theme="a" >

<? require "../menu.php"; ?>  


  <div style="position:relative">

  <div class="innerslider" >
          <ul class="slides" id="bannerslide">
            <? $getpicnuminfo=getpagesetpicnuminfo($pageid,9,'opicname as pic');//抽取版面图片
               for($i=0;$i<sizeof($getpicnuminfo);$i++){
              ?>	
              <li  data-thumb="/upload/layout/<?=$getpicnuminfo[$i][pic]?>"><img src="/upload/layout/<?=$getpicnuminfo[$i][pic]?>" /></li>
            <? }?>
          </ul>
</div>
  
  
  </div>



  <div id="onepageview">

 
 <div class="container no-bottom" >
    	<h4 class="list-pencil">电话 </h4>
        <p><input id="tel" type="text"  data-role="none"  style="width:100%;border: 1px solid #000; height:30px;"></p>
        <h4 class="list-pencil">内容 </h4>
        <p><textarea id="contentmsg"  data-role="none"  style="width:100%;border: 1px solid #000; height:130px;"></textarea></p>
        <h4 class="list-pencil">姓名 </h4>
        <p><input id="name" type="text"  data-role="none"   style="width:100%;border: 1px solid #000; height:30px;"></p>
        <h4 class="list-pencil">邮箱 </h4>
        <p><input id="email" type="text"  data-role="none"  style="width:100%;border: 1px solid #000; height:30px;"></p>
        


        <input type="button"  onclick="sendmsg()" value="发送留言">
	</div>

 
  
  <div style="clear:both"></div>
  
  
  
  
  
  </div><!-- /onepageview -->




</div><!-- /content -->



<script language="JavaScript">
function sendmsg() {
						if($.trim($("#tel").val())==''){alert('请输入您的电话号码');return false;}	
						if($.trim($("#contentmsg").val())==''){alert('请输入您的留言信息');return false;}	
						if($.trim($("#name").val())==''){alert('请输入您的姓名');return false;}
						
						$.post('/about/ajax_feedback.php',{tel:$("#tel").val(),content:$("#contentmsg").val(),name:$("#name").val(),email:$("#email").val()},function(data) {
                               var myjson = '';eval('myjson=' + data + ';');
                               alert(myjson.info);
							   window.location.href='/';
                         });

}
</script>  




<? require "../footer.php"; ?>   
    

</div><!-- /page -->

</body>
</html>