<div id="menubox">
  
  <div id="wrapper_menu">
	<div id="scroller_menu">
		<ul id="thelist">
        
             <? 
			  $getpicnuminfo=getlayoutpicnuminfo(18,99,'title,url');//抽取LAYOUT的图片
               for($i=0;$i<sizeof($getpicnuminfo);$i++){
              ?>	
       <li><a href="<?=$getpicnuminfo[$i][url]?>"><?=$getpicnuminfo[$i][title]?></a></li>
         <? }?>


		</ul>
	</div>
   </div>
  
  
  
  </div>