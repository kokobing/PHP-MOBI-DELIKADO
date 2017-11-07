<?php
require "../inc/config.php";
require "../inc/function.class.php";


$arr="";

$page=$_REQUEST[pagenum];//get page
$start=$page*$setinfo[productnum];// 1*10  2*10 起始位置

if($_REQUEST[pdir1]==0 && $_REQUEST[pdir2]==0){
//如果为0查所有中文目录产品	
$strSQL = "select a.title,a.intro,a.id_prodinfo as pid,b.lang,b.name,b.fatherid,a.id_proddir from 
           productinfo as a left join productdir as b on a.id_proddir=b.id_proddir
		   where a.dele=1 and b.lang=1 
		   order by a.ordernum asc limit $start,$setinfo[productnum]" ;
}

if($_REQUEST[pdir1]!=0 && $_REQUEST[pdir2]==0){
//一级目录存在 二级目录不存在 则查找一级目录下的所有产品
$strSQL = "select a.title,a.intro,a.id_prodinfo as pid,b.lang,b.fatherid,a.id_proddir from 
           productinfo as a left join productdir as b on a.id_proddir=b.id_proddir
		   where a.dele=1 and b.lang=1 and b.fatherid=$_REQUEST[pdir1]
		   order by a.ordernum asc limit $start,$setinfo[productnum]" ;	
}



if($_REQUEST[pdir2]!=0){
//指定二级目录的所有产品
$strSQL = "select title,intro,id_prodinfo as pid,id_proddir from productinfo  where dele=1 and id_proddir=$_REQUEST[pdir2] order by ordernum desc limit $start,$setinfo[productnum]" ;	
}

if( isset($_REQUEST[keysearch]) && trim($_REQUEST[keysearch])!=''){
//指定SEARCHKEY的所有产品
$strSQL = "select  a.title,a.tag,a.intro,a.id_prodinfo as pid,b.lang,a.id_proddir from productinfo as a left join productdir as b on a.id_proddir=b.id_proddir where a.tag like '%$_REQUEST[keysearch]%' and a.dele='1' and b.lang='1' order by a.ordernum desc  limit $start,$setinfo[productnum]" ;	
}



$objDB->Execute($strSQL);
$arrproducts=$objDB->GetRows();

$arr[info]='';
for($i=0;$i<sizeof($arrproducts);$i++){
  $getpic=getproductpic($arrproducts[$i][pid]);//产品图片	



$arr[info].='<li data-corners="false" data-shadow="false" data-iconshadow="true" data-wrapperels="div" data-icon="arrow-r" data-iconpos="right" data-theme="a" class="ui-btn ui-btn-icon-right ui-li-has-arrow ui-li ui-li-has-thumb ui-btn-up-a"><div class="ui-btn-inner ui-li"><div class="ui-btn-text"><a href="/product/productview.php/'.$arrproducts[$i][pid].'/'.$arrproducts[$i][id_proddir].'/.html" class="ui-link-inherit"><p class="ui-li-aside ui-li-desc"><strong>'.$arrproducts[$i][name].'</strong></p><img src="/upload/product/'.$getpic.'" class="ui-li-thumb"><h2 class="ui-li-heading">'.$arrproducts[$i][title].'</h2><p class="ui-li-desc">'.$arrproducts[$i][intro].'</p></a></div><span class="ui-icon ui-icon-arrow-r ui-icon-shadow">&nbsp;</span></div></li>';


  
}   

$arr[pagenum]=$page+1;

$myjson= json_encode($arr);
echo $myjson;

?>

