<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用 重复调用 如果买个页都涉及 可以写到这里

$newsid=$getvars[1];//获取伪静态传递参数
$ndir=$getvars[2];//获取伪静态传递参数



$pageid=2;//版面管理新闻默认PAGEID=2
$str=getpagesetinfo($pageid,'title,content,intro,pagetitle,keywords,description');//获得版面管理的内容 标题 页面标题 等

//新闻内容
$strSQL = "select title,content,url from newsinfo where id_newsinfo='".$newsid."'  " ;
$objDB->Execute($strSQL);
$onenews=$objDB->fields();


?>