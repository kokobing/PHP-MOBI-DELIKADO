        
<div data-role="header" data-theme="a">
   <div id="logo"><a href="/"><img src="/upload/layout/<?=getlayoutpic(15,0);?>" width="130" ></a></div>


 <div id="menu" data-role="header" data-theme="a"> 
 <a href="#left-panel" data-icon="bars" data-iconpos="notext" data-shadow="false" data-iconshadow="false"></a> 
 <a href="#right-panel"data-icon="bars" data-iconpos="" data-shadow="false" data-iconshadow="false"><? $getlayoutinfo=getlayoutinfo(23,'intro');echo nl2br($getlayoutinfo[intro]);?></a></p>
  </div>
 
 
</div><!-- /header -->


<div data-role="panel" id="right-panel" data-display="overlay" data-position="right" data-theme="a">

<div style="padding:10px;color:#fff; font-weight:bold; font-size:14px;"><? echo nl2br($getlayoutinfo[intro]);?></div>

<div id="pro">
 <ul data-role="listview" data-inset="true" >
 
      <? $getpicnuminfo=getlayoutpicnuminfo(23,99,'opicname as pic,title,url');//抽取LAYOUT的图片
               for($i=0;$i<sizeof($getpicnuminfo);$i++){
      ?>	
    <li><a href="<?=$getpicnuminfo[$i][url]?>" >
        <img src="/upload/layout/<?=$getpicnuminfo[$i][pic]?>">
        <h2><?=$getpicnuminfo[$i][title]?></h2>
        </a>
    </li>
 <? }?>
</ul>
</div><!-- /pro -->


</div><!-- /panel -->