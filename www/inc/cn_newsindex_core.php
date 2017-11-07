<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用 重复调用 如果买个页都涉及 可以写到这里



$ndir=$getvars[1];//获取伪静态传递参数
if($ndir==''){$ndir=2;}

//取出所有中文新闻 fatherid=1
$strSQL = "select a.title,a.id_newsinfo as id,b.lang,a.id_newsdir,a.newsdate,a.intro
           from newsinfo as a left join newsdir as b on a.id_newsdir=b.id_newsdir 
		   where a.dele=1 and b.lang=1 and b.fatherid='1' 
		   order by a.ordernum desc limit 0,$setinfo[newsnum]" ;
$objDB->Execute($strSQL);
$arrnews=$objDB->GetRows();


$pageid=2;//版面管理新闻默认PAGEID=2
$str=getpagesetinfo($pageid,'title,content,intro,pagetitle,keywords,description');//获得版面管理的内容 标题 页面标题 等


?>