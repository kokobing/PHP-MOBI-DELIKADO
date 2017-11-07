<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用 重复调用 如果买个页都涉及 可以写到这里


$pid=$getvars[1];//获取伪静态传递参数    产品ID
$pdir2=$getvars[2];//获取伪静态传递参数  产品相关目录ID

$pageid=19;//版面管理新闻默认PAGEID=19
$str=getpagesetinfo($pageid,'title,content,intro,pagetitle,keywords,description');//获得版面管理的内容 标题 页面标题 等


//产品内容
$strSQL = "select title,intro,content from productinfo where id_prodinfo='".$pid."'  " ;
$objDB->Execute($strSQL);
$oneproduct=$objDB->fields();


?>