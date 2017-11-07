<?php
session_start();
ob_start();

//调用文件
require_once("db_mysql.class.php");//数据库

//数据库

$db_hostname="localhost"; //服务器
$db_username="root"; //用户名
$db_password="123456"; //密码
$db_database="delikado_m"; //数据库
$db_pre="";//数据库表前缀 

require "oem.php"; 

?>
