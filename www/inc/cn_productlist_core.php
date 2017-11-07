<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用 重复调用 如果买个页都涉及 可以写到这里

$pdir1=$getvars[2];//获取伪静态传递参数
$pdir2=$getvars[1];//获取伪静态传递参数

$pageid=19;//版面管理新闻默认PAGEID=19
$str=getpagesetinfo($pageid,'title,content,intro,pagetitle,keywords,description');//获得版面管理的内容 标题 页面标题 等


//根据2级目录搜索产品	
$strSQL = "select  title,intro,id_prodinfo as pid,id_proddir from productinfo where id_proddir=$pdir2 and dele='1' order by ordernum asc  limit 0,$setinfo[productnum]" ;
$objDB->Execute($strSQL);
$arrprod=$objDB->GetRows();	
/**/

?>