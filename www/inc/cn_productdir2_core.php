<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用 重复调用 如果买个页都涉及 可以写到这里


$pdir1=$getvars[1];//获取伪静态传递参数

$pageid=19;//版面管理新闻默认PAGEID=19
$str=getpagesetinfo($pageid,'title,content,intro,pagetitle,keywords,description');//获得版面管理的内容 标题 页面标题 等

/* 重置所有产品的ORDERNUM为产品当前ID  改ORDERNUM   改目录  

$strSQL = "select * from  productinfo " ;
$objDB->Execute($strSQL);
$arrprod1=$objDB->GetRows();

for($i=0;$i<sizeof($arrprod1);$i++){
	
//$strSQL = "UPDATE  `mobi09`.`productinfo` SET  `ordernum` =  '".$arrprod1[$i][id_prodinfo]."' WHERE  `productinfo`.`id_prodinfo` =".$arrprod1[$i][id_prodinfo]." LIMIT 1 ;" ;//改ORDERNUM

$strSQL = "UPDATE  `mobi09`.`productinfo` SET  `id_proddir` =  '3' WHERE  `productinfo`.`id_prodinfo` =".$arrprod1[$i][id_prodinfo]." LIMIT 1 ;" ;//改目录

$objDB->Execute($strSQL);	
}
*/


?>