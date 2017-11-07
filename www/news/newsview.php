<?php
require "../inc/cn_newsview_core.php";
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
  
<h2 style="-webkit-margin-after: 1em;"><?=$onenews[title]?></h2> 
<?=$onenews[content];?>
<br><br>
 
<?php 
$strurl=explode(".",$onenews[url]);
if($strurl[1]=='mp3'){?>
<audio controls autoplay id="clickSound">
<source src="/upload/other/flash/<?=$onenews[url]?>" type="audio/mpeg">
Your browser does not support the audio tag.
</audio>

<script>
$(document).ready(function () {

var music = document.getElementById("clickSound");
if (music.paused) { 
music.play(); 
}


});
 

</script>
<?php }?>

  <div style="clear:both"></div>
  
  
    <div id="submenubox" style="height:40px;">
  
  <div id="wrapper_submenu" style="top:10px;">
	<div id="scroller_submenu">
		<ul id="thelist">
        
      <?	
 //取出所有fatherid为1的新闻目录
 $getnewsdir2=getnewsdir2(1);//取出新闻二级目录
 for($i=0;$i<sizeof($getnewsdir2);$i++){	?>
    <li><a href="/news/newslist.php/<?=$getnewsdir2[$i][id];?>/.html"><?=$getnewsdir2[$i][name]?></a> |</li>
 <? }?> 


		</ul>
	</div>
   </div>
  
  
  
  </div>


  
  
  

  </div><!-- /adpic -->








</div><!-- /content -->

<? require "../footer.php"; ?>  
    

</div><!-- /page -->

</body>
</html>