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
  <h2><?=$str[title];?></h2>
  <?=$str[content];?>  
  
  <div style="clear:both"></div>
  
  <div id="submenubox">
  
  <div id="wrapper_submenu">
	<div id="scroller_submenu">
		<ul id="thelist">
        
 <?
    $getallpagesetinfo=getallpagesetinfo(1,'3','title,id_pageset as id');//取所有版面1中文 （2只显示首页 1所有页）  0关闭 3只在内页
	for($i=0;$i<sizeof($getallpagesetinfo);$i++){
         //id为6文件名为CONTACT.PHP   ID=2案例展示 否则ABOUT.PHP
		$flienameurl='/about/about.php/'.$getallpagesetinfo[$i][id].'/.html';//默认关于我们
		if($getallpagesetinfo[$i][id]==2){$flienameurl='/news/news.php';}//新闻
		if($getallpagesetinfo[$i][id]==19){$flienameurl='/product/product.php';}//我们的产品
		if($getallpagesetinfo[$i][id]==24){$flienameurl='/about/feedback.php/24/.html';}//留言反馈
	?>  
      <li><a href="<?=$flienameurl;?>"><?=$getallpagesetinfo[$i][title]?></a> |</li>
         <? }?>


		</ul>
	</div>
   </div>
  
  
  
  </div>
  
  
  
  
  </div><!-- /onepageview -->




</div><!-- /content -->


<? require "../footer.php"; ?>   
    

</div><!-- /page -->

</body>
</html>