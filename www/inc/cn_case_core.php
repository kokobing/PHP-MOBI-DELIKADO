<?php
require "../inc/config.php";
require "../inc/function.class.php";
require "../inc/cn_header_core.php";//页头 页脚调用 重复调用 如果买个页都涉及 可以写到这里

$pageid=$getvars[1];//获取伪静态传递参数
if(trim($pageid)==''){$pageid=1;}
$str=getpagesetinfo($pageid,'title,content,intro,pagetitle,keywords,description');//获得版面管理的内容 标题 页面标题 等


//根据目录查找最大数量99新闻案例 案例展示=17
$strSQL = "select title,intro,id_newsinfo as id,id_newsdir from newsinfo  where dele=1 and id_newsdir=17 order by ordernum desc limit 0,99" ;
$objDB->Execute($strSQL);
$arrnews=$objDB->GetRows();



?>