-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 11 月 07 日 06:13
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `delikado_m`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `backmenu`
-- 

CREATE TABLE `backmenu` (
  `id_backmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `remark` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_backmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

-- 
-- 导出表中的数据 `backmenu`
-- 

INSERT INTO `backmenu` VALUES (1, 1, '产品系统', '', 'product', 0, 1, 2, 1);
INSERT INTO `backmenu` VALUES (3, 1, '信息系统', '', 'news', 0, 1, 3, 1);
INSERT INTO `backmenu` VALUES (4, 1, '人事系统', '', 'hr', 0, 1, 4, 1);
INSERT INTO `backmenu` VALUES (5, 1, '权限系统', '', 'perm', 0, 1, 5, 1);
INSERT INTO `backmenu` VALUES (6, 1, '数据库备份', '', 'dbase', 0, 1, 6, 0);
INSERT INTO `backmenu` VALUES (9, 1, '产品管理', '', '/admin/product/product_manage.php', 1, 2, 9, 1);
INSERT INTO `backmenu` VALUES (8, 1, '产品分类', '', '/admin/product/product_dir.php', 1, 2, 8, 1);
INSERT INTO `backmenu` VALUES (47, 1, '区块管理', '', '/admin/siteset/layout.php', 44, 2, 47, 1);
INSERT INTO `backmenu` VALUES (15, 1, '信息分类', '', '/admin/news/news_dir.php', 3, 2, 15, 1);
INSERT INTO `backmenu` VALUES (16, 1, '信息管理', '', '/admin/news/news_manage.php', 3, 2, 16, 1);
INSERT INTO `backmenu` VALUES (17, 1, '员工档案', '', '/admin/hr/hr_staff.php', 4, 2, 17, 1);
INSERT INTO `backmenu` VALUES (18, 1, 'test', '', '/admin/hr/hr_exam.php', 4, 2, 18, 0);
INSERT INTO `backmenu` VALUES (19, 1, 'test2', '', '/admin/hr/hr_job.php', 4, 2, 19, 0);
INSERT INTO `backmenu` VALUES (20, 1, '系统菜单', '', '/admin/perm/perm_menu.php', 5, 2, 20, 1);
INSERT INTO `backmenu` VALUES (21, 1, '权限管理', '', '/admin/perm/perm_manage.php', 5, 2, 21, 1);
INSERT INTO `backmenu` VALUES (22, 1, '数据库备份', '', '/phpMyAdmin/', 6, 2, 22, 1);
INSERT INTO `backmenu` VALUES (48, 1, '版面管理', '', '/admin/siteset/pageset.php', 44, 2, 48, 1);
INSERT INTO `backmenu` VALUES (49, 1, '前台菜单', '', '/admin/siteset/webmenu.php', 44, 2, 49, 0);
INSERT INTO `backmenu` VALUES (39, 1, '信息回收站', '', '/admin/news/newsrecycle.php', 3, 2, 39, 1);
INSERT INTO `backmenu` VALUES (41, 1, '产品回收站', '', '/admin/product/productrecycle.php', 1, 2, 41, 1);
INSERT INTO `backmenu` VALUES (46, 1, '站点设定', '', '/admin/siteset/siteset.php', 44, 2, 46, 1);
INSERT INTO `backmenu` VALUES (44, 1, '站点管理', '', 'siteset', 0, 1, 1, 1);
INSERT INTO `backmenu` VALUES (50, 1, '留言反馈', '', '/admin/news/news_manage.php?&searchselect=4', 3, 2, 50, 0);
INSERT INTO `backmenu` VALUES (51, 1, '留言反馈', '', '/admin/news/feedback.php', 3, 2, 51, 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `dept`
-- 

CREATE TABLE `dept` (
  `id_dept` int(11) NOT NULL auto_increment,
  `dept` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_dept`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- 导出表中的数据 `dept`
-- 

INSERT INTO `dept` VALUES (36, '111', 1);
INSERT INTO `dept` VALUES (35, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `exam`
-- 

CREATE TABLE `exam` (
  `id_exam` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `level` varchar(1) NOT NULL,
  `examdate` date NOT NULL,
  PRIMARY KEY  (`id_exam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- 导出表中的数据 `exam`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `hr`
-- 

CREATE TABLE `hr` (
  `id_hr` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `sex` int(1) NOT NULL default '1',
  `birthday` date NOT NULL,
  `hrcode` varchar(10) NOT NULL,
  `dept` int(11) NOT NULL,
  `iswork` int(1) NOT NULL default '1',
  `idcard` varchar(28) NOT NULL,
  `ismarry` int(1) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `native` varchar(30) NOT NULL,
  `register` varchar(60) NOT NULL,
  `inwork` date NOT NULL,
  `education` varchar(20) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `school` varchar(40) NOT NULL,
  `political` varchar(20) NOT NULL,
  `post` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `hometel` varchar(20) NOT NULL,
  `mobi` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `hjqk` text NOT NULL,
  `cfqk` text NOT NULL,
  `gwbd` text NOT NULL,
  `ldht` text NOT NULL,
  `sbjn` text NOT NULL,
  `remark` text NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `logindate` datetime NOT NULL,
  `loginip` varchar(16) NOT NULL,
  PRIMARY KEY  (`id_hr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

-- 
-- 导出表中的数据 `hr`
-- 

INSERT INTO `hr` VALUES (1, 1, 'administrator', 1, '0000-00-00', '', 36, 1, '', 0, '', '', '', '2011-01-29', '', '', '', '', 9, 15, '', '', '', '', '', '', '', '', '', '', 'admin', 'admin888', 1, 1, '2011-01-29 18:08:13', '2012-12-22 09:31:36', '0000-00-00 00:00:00', '2014-04-12 10:56:36', '101.85.41.203');

-- --------------------------------------------------------

-- 
-- 表的结构 `layout`
-- 

CREATE TABLE `layout` (
  `id_layout` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `url` text NOT NULL,
  `intro` text NOT NULL,
  `icon` text NOT NULL,
  `content` text NOT NULL,
  `openstat` int(1) NOT NULL default '1',
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- 导出表中的数据 `layout`
-- 

INSERT INTO `layout` VALUES (2, 1, '中文-首页Banner图', '', '', '', '', 0, 3);
INSERT INTO `layout` VALUES (10, 1, '中文-全局页脚文字', '', '© 2014 吉麗嘉多物资有限公司 版权所有\r\nEmail:luisagao@unimasa.cn\r\n电话:86-519-82447866', '', '', 0, 10);
INSERT INTO `layout` VALUES (17, 1, '全局-分享图标', '', '<a class="jiathis_button_qzone"></a>\r\n<a class="jiathis_button_tsina"></a>\r\n<a class="jiathis_button_tqq"></a>\r\n<a class="jiathis_button_renren"></a>\r\n<a class="jiathis_button_kaixin001"></a>\r\n<a class="jiathis_button_feixin"></a>\r\n<a class="jiathis_button_douban"></a>\r\n<a class="jiathis_button_taobao"></a>\r\n<a class="jiathis_button_tieba"></a>\r\n<a class="jiathis_button_cqq"></a>\r\n<a class="jiathis_button_t163"></a>\r\n<a class="jiathis_button_msn"></a>\r\n<a class="jiathis_button_baidu"></a>\r\n<a class="jiathis_button_xiaoyou"></a>\r\n<a class="jiathis_button_meilishuo"></a>\r\n<a class="jiathis_button_hi"></a>\r\n<a class="jiathis_button_mogujie"></a>\r\n<a class="jiathis_button_qq"></a>\r\n<a class="jiathis_button_139"></a>\r\n<a class="jiathis_button_tuita"></a>\r\n<a class="jiathis_button_xianguo"></a>\r\n<a class="jiathis_button_tpeople"></a>\r\n<a class="jiathis_button_tianya"></a>\r\n<a class="jiathis_button_mop"></a>\r\n<a class="jiathis_button_huaban"></a>\r\n<a class="jiathis_button_youdao"></a>\r\n<a class="jiathis_button_ifensi"></a>\r\n<a class="jiathis_button_hotmail"></a>\r\n<a class="jiathis_button_thexun"></a>\r\n<a class="jiathis_button_toeeee"></a>\r\n<a class="jiathis_button_kansohu"></a>\r\n<a class="jiathis_button_renjian"></a>\r\n<a class="jiathis_button_189cn"></a>\r\n<a class="jiathis_button_ganniu"></a>\r\n<a class="jiathis_button_ifengkb"></a>\r\n<a class="jiathis_button_caimi"></a>\r\n<a class="jiathis_button_189mail"></a>\r\n<a class="jiathis_button_google"></a>\r\n<a class="jiathis_button_139"></a>\r\n<a class="jiathis_button_139mail"></a>\r\n<a class="jiathis_button_51"></a>\r\n<a class="jiathis_button_fb"></a>\r\n<a class="jiathis_button_i139"></a>\r\n<a class="jiathis_button_cnfol"></a>\r\n<a class="jiathis_button_tyaolan"></a>\r\n<a class="jiathis_button_qingsina"></a>\r\n<a class="jiathis_button_duitang"></a>\r\n<a class="jiathis_button_buzz"></a>\r\n<a class="jiathis_button_115"></a>\r\n<a class="jiathis_button_hexun"></a>\r\n<a class="jiathis_button_txinhua"></a>\r\n<a class="jiathis_button_gmw"></a>\r\n<a class="jiathis_button_gmail"></a>\r\n<a class="jiathis_button_pinterest"></a>\r\n<a class="jiathis_button_miliao"></a>\r\n<a class="jiathis_button_fanfou"></a>\r\n<a class="jiathis_button_translate"></a>\r\n<a class="jiathis_button_jcrb"></a>\r\n<a class="jiathis_button_dream163"></a>\r\n<a class="jiathis_button_masar"></a>\r\n<a class="jiathis_button_digu"></a>\r\n<a class="jiathis_button_faxianla"></a>\r\n<a class="jiathis_button_leihou"></a>\r\n<a class="jiathis_button_tifeng"></a>\r\n<a class="jiathis_button_iwo"></a>\r\n<a class="jiathis_button_sdonote"></a>\r\n<a class="jiathis_button_twitter"></a>\r\n<a class="jiathis_button_googleplus"></a>\r\n<a class="jiathis_button_189share"></a>\r\n<a class="jiathis_button_qingbiji"></a>\r\n<a class="jiathis_button_youshi"></a>\r\n<a class="jiathis_button_ydnote"></a>\r\n<a class="jiathis_button_diandian"></a>\r\n<a class="jiathis_button_waakee"></a>\r\n<a class="jiathis_button_binzhi"></a>\r\n<a class="jiathis_button_mingdao"></a>\r\n<a class="jiathis_button_plurk"></a>\r\n<a class="jiathis_button_douban9dian"></a>\r\n<a class="jiathis_button_chouti"></a>\r\n<a class="jiathis_button_tumblr"></a>\r\n<a class="jiathis_button_yijee"></a>\r\n<a class="jiathis_button_baohe"></a>\r\n<a class="jiathis_button_tianji"></a>\r\n<a class="jiathis_button_cyzone"></a>\r\n<a class="jiathis_button_evernote"></a>\r\n<a class="jiathis_button_wong"></a>\r\n<a class="jiathis_button_linkedin"></a>\r\n<a class="jiathis_button_leshou"></a>\r\n<a class="jiathis_button_poco"></a>\r\n<a class="jiathis_button_wealink"></a>\r\n<a class="jiathis_button_dig24"></a>\r\n<a class="jiathis_button_myshare"></a>\r\n<a class="jiathis_button_99earth"></a>\r\n<a class="jiathis_button_funp"></a>\r\n<a class="jiathis_button_phonefavs"></a>\r\n<a class="jiathis_button_netlog"></a>\r\n<a class="jiathis_button_reddit"></a>\r\n<a class="jiathis_button_stumbleupon"></a>\r\n<a class="jiathis_button_fwisp"></a>\r\n<a class="jiathis_button_mixx"></a>\r\n<a class="jiathis_button_delicious"></a>\r\n<a class="jiathis_button_netvibes"></a>\r\n<a class="jiathis_button_plaxo"></a>\r\n<a class="jiathis_button_pdfonline"></a>\r\n<a class="jiathis_button_myspace"></a>\r\n<a class="jiathis_button_digg"></a>\r\n<a class="jiathis_button_friendfeed"></a>\r\n<a class="jiathis_button_instapaper"></a>\r\n<a class="jiathis_button_bitly"></a>\r\n<a class="jiathis_button_w3c"></a>\r\n<a class="jiathis_button_pingfm"></a>\r\n<a class="jiathis_button_readitlater"></a>\r\n<a class="jiathis_button_diigo"></a>\r\n<a class="jiathis_button_mailru"></a>\r\n<a class="jiathis_button_printfriendly"></a>\r\n<a class="jiathis_button_ishare"></a>\r\n<a class="jiathis_button_ujian"></a>\r\n<a class="jiathis_button_weixin"></a>\r\n<a class="jiathis_button_tsohu"></a>\r\n<a class="jiathis_button_print"></a>\r\n<a class="jiathis_button_fav"></a>\r\n<a class="jiathis_button_copy"></a>\r\n<a class="jiathis_button_email"></a>', '', '', 0, 23);
INSERT INTO `layout` VALUES (15, 1, '中文-全局LOGO', '', '', '', '', 0, 2);
INSERT INTO `layout` VALUES (18, 1, '中文-全局横向滚动MENU', '', '', '', '', 0, 12);
INSERT INTO `layout` VALUES (23, 1, '中文-全局新品推荐', '', '新品推荐', '', '', 0, 15);

-- --------------------------------------------------------

-- 
-- 表的结构 `layoutpic`
-- 

CREATE TABLE `layoutpic` (
  `id_layoutpic` int(11) NOT NULL auto_increment,
  `id_layout` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_layoutpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=218 ;

-- 
-- 导出表中的数据 `layoutpic`
-- 

INSERT INTO `layoutpic` VALUES (212, 24, 1, 'Contact', '', '/en/about/about.php/12/.html', 'nopic.gif', '', 1, 'GIF', '2013-06-05 15:38:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 212);
INSERT INTO `layoutpic` VALUES (213, 15, 1, '', '', '', '1392173906.png', '', 1, 'PNG', '2014-02-12 10:58:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 213);
INSERT INTO `layoutpic` VALUES (204, 13, 1, 'American Coffee', '', '', '1370417660.jpg', '', 1, 'JPG', '2013-06-05 15:34:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 204);
INSERT INTO `layoutpic` VALUES (205, 13, 1, 'Caffè latte', '', '', '1370417679.jpg', '', 1, 'JPG', '2013-06-05 15:34:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 205);
INSERT INTO `layoutpic` VALUES (206, 24, 1, 'Home', '', '/en/', 'nopic.gif', '', 1, 'GIF', '2013-06-05 15:36:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 206);
INSERT INTO `layoutpic` VALUES (185, 18, 1, '发送邮件', '', 'mailto:luisagao@unimasa.cn', 'nopic.gif', '', 1, 'GIF', '2013-06-04 14:43:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 185);
INSERT INTO `layoutpic` VALUES (186, 18, 1, '留言反馈', '', '/about/feedback.php', 'nopic.gif', '', 1, 'GIF', '2013-06-04 14:44:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 186);
INSERT INTO `layoutpic` VALUES (187, 18, 1, '地图位置', '', '/about/map.php', 'nopic.gif', '', 1, 'GIF', '2013-06-04 14:44:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 187);
INSERT INTO `layoutpic` VALUES (188, 18, 1, '分享网站', '', '/about/share.php', 'nopic.gif', '', 1, 'GIF', '2013-06-04 14:44:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 188);
INSERT INTO `layoutpic` VALUES (189, 18, 1, '联系我们', '', '/about/about.php/6/.html', 'nopic.gif', '', 1, 'GIF', '2013-06-04 14:45:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 189);
INSERT INTO `layoutpic` VALUES (183, 18, 1, '网站首页', '', '/', 'nopic.gif', '', 1, 'GIF', '2013-06-04 14:42:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 183);
INSERT INTO `layoutpic` VALUES (184, 18, 1, '拨打电话', '', 'tel:051982447866', 'nopic.gif', '', 1, 'GIF', '2013-06-04 14:43:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 184);
INSERT INTO `layoutpic` VALUES (199, 16, 1, '', '', '', '1370417229.png', '', 1, 'PNG', '2013-06-05 15:27:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 199);
INSERT INTO `layoutpic` VALUES (209, 24, 1, 'Feedback', '', '/en/about/feedback.php', 'nopic.gif', '', 1, 'GIF', '2013-06-05 15:38:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 209);
INSERT INTO `layoutpic` VALUES (210, 24, 1, 'Map', '', '/en/about/map.php', 'nopic.gif', '', 1, 'GIF', '2013-06-05 15:38:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 210);
INSERT INTO `layoutpic` VALUES (211, 24, 1, 'Share', '', '/en/about/share.php', 'nopic.gif', '', 1, 'GIF', '2013-06-05 15:38:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 211);
INSERT INTO `layoutpic` VALUES (203, 13, 1, 'Espresso', '', '#', '1370417629.jpg', '', 1, 'JPG', '2013-06-05 15:33:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 203);
INSERT INTO `layoutpic` VALUES (202, 9, 1, '', '', '', '1370417348.jpg', '', 1, 'JPG', '2013-06-05 15:29:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 202);
INSERT INTO `layoutpic` VALUES (201, 9, 1, '', '', '', '1370417339.jpg', '', 1, 'JPG', '2013-06-05 15:28:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 201);
INSERT INTO `layoutpic` VALUES (200, 9, 1, '', '', '', '1370417332.jpg', '', 1, 'JPG', '2013-06-05 15:28:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 200);
INSERT INTO `layoutpic` VALUES (190, 23, 1, 'Espresso  浓缩咖啡', '', '/product/productview.php/39/5/.html', '1370330329.jpg', '', 1, 'JPG', '2013-06-04 15:18:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 190);
INSERT INTO `layoutpic` VALUES (191, 23, 1, 'American Coffee  美式咖啡', '', '/product/productview.php/40/5/.html', '1370330348.jpg', '', 1, 'JPG', '2013-06-04 15:19:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 191);
INSERT INTO `layoutpic` VALUES (192, 23, 1, 'Caffè latte  拿铁', '', '', '1370330362.jpg', '', 1, 'JPG', '2013-06-04 15:19:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 192);
INSERT INTO `layoutpic` VALUES (193, 23, 1, 'Cappuccino  卡布奇诺', '', '', '1370330380.jpg', '', 1, 'JPG', '2013-06-04 15:19:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 193);
INSERT INTO `layoutpic` VALUES (194, 23, 1, 'Caffè Mocha  摩卡', '', '', '1370330393.jpg', '', 1, 'JPG', '2013-06-04 15:19:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 194);
INSERT INTO `layoutpic` VALUES (195, 23, 1, '柠檬红/绿茶', '', '', '1370330465.jpg', '', 1, 'JPG', '2013-06-04 15:21:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 195);
INSERT INTO `layoutpic` VALUES (196, 23, 1, '意大利浓缩咖啡', '', '', '1370330486.jpg', '', 1, 'JPG', '2013-06-04 15:21:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 196);
INSERT INTO `layoutpic` VALUES (197, 23, 1, '手磨蓝山咖啡', '', '', '1370330519.jpg', '', 1, 'JPG', '2013-06-04 15:21:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 197);
INSERT INTO `layoutpic` VALUES (198, 23, 1, '摩卡朱古力咖啡', '', '', '1370330555.jpg', '', 1, 'JPG', '2013-06-04 15:22:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 198);
INSERT INTO `layoutpic` VALUES (207, 24, 1, 'Tel', '', 'tel:021-81234567', 'nopic.gif', '', 1, 'GIF', '2013-06-05 15:37:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 207);
INSERT INTO `layoutpic` VALUES (208, 24, 1, 'Email', '', 'mailto:test@tes.com', 'nopic.gif', '', 1, 'GIF', '2013-06-05 15:37:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 208);
INSERT INTO `layoutpic` VALUES (214, 2, 1, '', '', '', '1392345248.jpg', '', 1, 'JPG', '2014-02-14 10:34:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 214);
INSERT INTO `layoutpic` VALUES (215, 2, 1, '', '', '', '1392345253.jpg', '', 1, 'JPG', '2014-02-14 10:34:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 215);
INSERT INTO `layoutpic` VALUES (216, 2, 1, '', '', '', '1392345260.jpg', '', 1, 'JPG', '2014-02-14 10:34:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 216);
INSERT INTO `layoutpic` VALUES (217, 2, 1, '', '', '', '1392345266.jpg', '', 1, 'JPG', '2014-02-14 10:34:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 217);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsdir`
-- 

CREATE TABLE `newsdir` (
  `id_newsdir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsdir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- 
-- 导出表中的数据 `newsdir`
-- 

INSERT INTO `newsdir` VALUES (1, 1, '信息中心', '', 1, 0, 1, 2);
INSERT INTO `newsdir` VALUES (2, 1, '公司新闻', '公司最新信息', 1, 1, 2, 2);
INSERT INTO `newsdir` VALUES (3, 1, '留言反馈', '', 1, 0, 1, 1);
INSERT INTO `newsdir` VALUES (4, 1, '留言反馈', '', 1, 3, 2, 4);
INSERT INTO `newsdir` VALUES (5, 1, '行业新闻', '行业最新文章', 1, 1, 2, 5);
INSERT INTO `newsdir` VALUES (7, 1, '产品新闻', '我们的新产品发布', 1, 1, 2, 7);
INSERT INTO `newsdir` VALUES (13, 1, '案例展示', '', 0, 12, 2, 13);
INSERT INTO `newsdir` VALUES (12, 1, '案例展示', '', 0, 0, 1, 12);
INSERT INTO `newsdir` VALUES (15, 1, '新品介绍', '公司最新研发产品', 1, 1, 2, 15);
INSERT INTO `newsdir` VALUES (20, 1, '录音展示', '', 1, 1, 2, 20);
INSERT INTO `newsdir` VALUES (17, 1, '案例展示', '', 0, 1, 2, 17);

-- --------------------------------------------------------

-- 
-- 表的结构 `newsinfo`
-- 

CREATE TABLE `newsinfo` (
  `id_newsinfo` int(11) NOT NULL auto_increment,
  `id_newsdir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `url` varchar(255) NOT NULL,
  `newsdate` date NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_newsinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

-- 
-- 导出表中的数据 `newsinfo`
-- 

INSERT INTO `newsinfo` VALUES (6, 2, 0, 1, 'Adobe的HTML5实验', '尽管HTML5技术差不多已经将Adobe的Flash逼上了绝路', '<div  >\r\n	<strong>摘要：</strong>尽管HTML5技术差不多已经将Adobe的Flash逼上了绝路，但这并不意味着Adobe要始终与HTML5为敌。相反，Adobe现在也是HTML5技术的主要支持者之一。</div>\r\n<div  >\r\n	<p >\r\n		<strong>Adobe的Web平台团队正在实施一些<a href="http://blogs.adobe.com/webplatform/2012/10/17/the-graphical-web-experiment/"  target="_blank">新的图形特性</a>，并在一个网页中通过讲故事的形式展示出来，</strong>你可以直接在<a href="http://thegraphicalweb.com/"  target="_blank">thegraphicalweb.com</a>中观看，也可以通过<a href="http://www.youtube.com/watch?v=P2Yj-8zGa3U"  target="_blank">这个视频</a>来观看。</p>\r\n	<p >\r\n		<strong>该项目使用到的技术主要包括：</strong></p>\r\n	<p >\r\n		<strong>1.SVG（Scalable Vector Graphics，可缩放矢量图形）</strong></p>\r\n	<p >\r\n		由于SVG的扩展性以及易于与CSS/ JavaScript操作特性，该技术被贯穿使用在<a href="http://thegraphicalweb.com/"  target="_blank">thegraphicalweb.com</a>网站中。其中动态SVG创建和动画效果，基于一个流行的SVG数据可视化库<a href="http://d3js.org/"  target="_blank">D3.js</a>。D3在该网站中主要用于在背景中生成群山的形状。</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121019/09245930I-0.gif" style="vertical-align: middle; border: none; " /></p>\r\n	<p >\r\n		<strong>2.CSS3和SASS</strong></p>\r\n	<p >\r\n		在网站中，主要使用CSS Animation和Transforms属性来实现闪烁和移动效果，这些属性被应用到内联SVG的路径和元素上。<a href="http://sass-lang.com/"  target="_blank">SASS</a>是构建于CSS之上的元语言，扩展了CSS3，增加了规则、变量、混入、选择器、继承等特性。该网站主要使用Sass来生成良好格式化的CSS代码。</p>\r\n	<p >\r\n		<strong>3.2D Canvas</strong></p>\r\n	<p >\r\n		在网站中，使用<a href="http://processingjs.org/"  target="_blank">Processing.js</a>来实现一个粒子系统，通过切换点阵的组合形式，来呈现一个说话的人脸效果。</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121019/0924595231-1.png" style="vertical-align: middle; border: none; " /></p>\r\n	<p >\r\n		<strong>4.着色器</strong></p>\r\n	<p >\r\n		该网站使用了一个自定义的GLSL着色器，来实现WebGL场景中发光的背景效果。通过<a href="http://html.adobe.com/webstandards/csscustomfilters/cssfilterlab/"  target="_blank">CSS Filter Lab</a>这个工具，编写自定义着色器的难度大大降低。</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121019/09245940Q-2.gif" style="vertical-align: middle; border: none; " /></p>\r\n	<p >\r\n		此外，<strong>该网站还使用3D Transforms来实现场景旋转、缩放效果，使用HTML5 Audio来播放音频。</strong></p>\r\n</div>\r\n<br />\r\n', '', 1, 1, '', '2012-10-22', '2012-10-19 13:08:51', '2012-10-31 14:43:19', '0000-00-00 00:00:00', 0, 6);
INSERT INTO `newsinfo` VALUES (7, 2, 0, 1, '谷歌开放其数据中心 惊现星球大战“黑武士”', '数据中心一直是很多大公司的“王牌”，一般不愿意轻易示人，而且动用各种手段来保持数据中心的神秘性。', '<div  >\r\n	<strong>摘要：</strong>数据中心一直是很多大公司的&ldquo;王牌&rdquo;，一般不愿意轻易示人，而且动用各种手段来保持数据中心的神秘性。今天谷歌开始解开了数据中心的面纱，甚至做了一个谷歌街景来展示这些位于世界各地的数据中心。有图有真相，一起来看一下世界顶级的数据中心是什么样子的！</div>\r\n<div  >\r\n	<p >\r\n		数据中心保密的日子已经一去不复返了。谷歌&mdash;&mdash;花费了数年的时间，一直试图保持其数据中心的规模，架构和能耗的秘密&mdash;&mdash;现在已经开展了各种公关活动，包括展示照片，接受采访，甚至做了一个谷歌街景来展示这些位于世界各地的数据中心。</p>\r\n	<p >\r\n		虽然谷歌的<a href="http://googleblog.blogspot.nl/2012/10/googles-data-centers-inside-look.html"  target="_blank">数据中心之旅</a>非常令人感兴趣，但是真正值得思考的动机：对新闻界发布友好的讯息。去年， Facebook推出了Open Compute Project，它公布了数据中心得服务器、服务器机房和冷却系统的设计，让数据中心达到一个前所未有的开放水平。不过谷歌主要依赖于以下几个方面打造与客户的关系：</p>\r\n	<ul style="margin: 0px 0px 1em 20px; padding-right: 0px; padding-left: 0px; list-style: none; ">\r\n		<li style="margin: 0px; padding: 0px; list-style: disc; ">\r\n			数据的隐私保护</li>\r\n		<li style="margin: 0px; padding: 0px; list-style: disc; ">\r\n			信任</li>\r\n		<li style="margin: 0px; padding: 0px; list-style: disc; ">\r\n			在云中保存信息</li>\r\n		<li style="margin: 0px; padding: 0px; list-style: disc; ">\r\n			在需要的时候，及时传送数据</li>\r\n	</ul>\r\n	<p >\r\n		所以，客户需要感觉到对谷歌和Facebook的喜爱，那么后期的数据中心解决方案应该更加开放。其实，数据中心是云计算中最具竞争的因素之一，为了紧随云计算发展的步伐，苹果一直突出强调自己独特的云操作，只是有可能打开了数据中心的大门；微软也有可能开放自己的数据中心，来推动其Azure服务；亚马逊是不太可能开放自己的数据中心的。</p>\r\n	<p >\r\n		其实对于谷歌和Facebook这样的大公司来说，作为云服务提供商，数据中心的实力绝对是一个好的卖点。</p>\r\n	<p >\r\n		那么数据中心可能会向广大市民开放，在并不遥远的未来，世界各地的高科技巨头都会&ldquo;叫卖&rdquo;自己的数据中心。不过像谷歌这些公司仍然需要保护这些庞大的数据中心的客户数据。所以，不要指望能够去很快的去参观谷歌的数据中心。谷歌也只是显示了其八个数据中心的图片而已，无疑它还是会限制对数据中心的访问。</p>\r\n	<p >\r\n		下面是谷歌数据中心的图片展示，现在已经出现在<a href="https://maps.google.com/maps?hl=en&amp;ll=35.898645,-81.548671&amp;spn=0.005945,0.012306&amp;sll=35.900197,-81.547024&amp;layer=c&amp;cid=7373938251588581469&amp;panoid=QJRzrgIKmN4uPQg7lmOGww&amp;cbp=13,119.83,,0,3.72&amp;gl=US&amp;t=m&amp;z=17&amp;cbll=35.898621,-81.548447"  target="_blank">Google街景视图</a>上。（编译/<a href="http://weibo.com/1615203572/profile?topnav=1&amp;wvr=3.6"  target="_blank">@CSDN王鹏</a>，审校/包研）</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" border="0" height="310" src="http://articles.csdn.net/uploads/allimg/121018/145_121018133906_1.png" style="vertical-align: middle; border: none; cursor: pointer; " width="600" /></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		&nbsp;谷歌的服务器机房</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" border="0" height="301" src="http://articles.csdn.net/uploads/allimg/121018/145_121018133923_1.png" style="vertical-align: middle; border: none; cursor: pointer; " width="600" /></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		&nbsp;谷歌搭建的服务器</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" border="0" height="315" src="http://articles.csdn.net/uploads/allimg/121018/145_121018133936_1.png" style="vertical-align: middle; border: none; cursor: pointer; " width="600" /></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		&nbsp;谷歌的网络机房&nbsp;</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" border="0" height="312" src="http://articles.csdn.net/uploads/allimg/121018/145_121018133950_1.png" style="vertical-align: middle; border: none; cursor: pointer; " width="600" /></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		&nbsp;谷歌的磁带备份</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" border="0" height="310" src="http://articles.csdn.net/uploads/allimg/121018/145_121018134006_1.png" style="vertical-align: middle; border: none; cursor: pointer; " width="600" /></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		谷歌销毁废弃的硬盘</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" border="0" height="313" src="http://articles.csdn.net/uploads/allimg/121018/145_121018134523_1.png" style="vertical-align: middle; border: none; cursor: pointer; " width="600" /></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		A server room in Council Bluffs, Iowa.</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" border="0" height="310" src="http://articles.csdn.net/uploads/allimg/121018/145_121018134235_1.png" style="vertical-align: middle; border: none; cursor: pointer; " width="600" /></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		A central cooling plant in Google&rsquo;s Douglas County, Georgia, data center.</p>\r\n	<p >\r\n		<strong>亮点新闻</strong>：谷歌数据中心，惊现&ldquo;黑武士&rdquo;！看看这身拉风的装备，完全重现星球大战中&ldquo;黑武士&rdquo;的形象，是谷歌是出于安全或者其他方面的原因，给工作人员的正式着装，还是仅仅做一个亮点，给自己做个广告？</p>\r\n</div>\r\n<br />\r\n', '', 1, 1, '', '2012-03-19', '2012-10-19 13:08:52', '2012-10-31 14:47:57', '0000-00-00 00:00:00', 0, 7);
INSERT INTO `newsinfo` VALUES (8, 2, 0, 1, '智能手机vs.桌面：SEO+Web开发重心转移？', '拜移动大潮所赐，通过使用平板电脑和智能手机进行Web搜索呈爆炸性的增长', '<div  >\r\n	<strong>摘要：</strong>拜移动大潮所赐，通过使用平板电脑和智能手机进行Web搜索呈爆炸性的增长，有数据显示，用户正逐渐倾向于使用手机查看网页。从谷歌的举动可以表明，SEO专家有将重心转移至移动开发的迹象。可以肯定的是随着技术的不断发展和规则的更改，开发者和SEO顾问需要作出相应的调整。</div>\r\n<div  >\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/94_121017144859_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n	<p >\r\n		拜移动大潮所赐，通过使用平板电脑和智能手机进行Web搜索呈爆炸性的增长，有数据显示，用户正逐渐倾向于使用手机查看网页。与2010年相比，用户通过移动设备获取信息的比例提高了两倍；而通过社交网络上获取信息比例达三倍。用户越来越喜欢更小、便捷、易携带的移动设备。</p>\r\n	<p >\r\n		那么，为何还有如此多的SEO专家依然集中在桌面开发呢？难道是因为开发者没感觉到这一潮流吗？还是因为客户或者老板不愿承受额外的费用呢？</p>\r\n	<p >\r\n		如果越来越多的用户在旅途中想要通过智能手机搜索某项需求（比如当地的餐馆或者汽车理赔等其他服务），这势必将形成一种新的趋势，作为开发者应该怎么做才能顺应这一趋势呢？</p>\r\n	<p >\r\n		<strong>如何进行更好地搜索引擎工作？</strong></p>\r\n	<p >\r\n		对于大多数主要搜索引擎（比如Google，Bing，Yahoo!），在其网页编排过程中数据库由三部分组成：</p>\r\n	<ol style="margin: 0px 0px 1em 30px; padding-right: 0px; padding-left: 0px; list-style-position: initial; list-style-image: initial; ">\r\n		<li style="margin: 0px; padding: 0px; list-style: decimal; ">\r\n			Web爬虫，将相关联的链接通过HTTP请求发送到全球数以百万计的网站；</li>\r\n		<li style="margin: 0px; padding: 0px; list-style: decimal; ">\r\n			索引，在其数据库中存储所有相关联的内容；</li>\r\n		<li style="margin: 0px; padding: 0px; list-style: decimal; ">\r\n			查询处理器，用以评估用户查询并且将相关的存储内容进行对比。</li>\r\n	</ol>\r\n	<p >\r\n		<strong>传统的SEO</strong></p>\r\n	<p >\r\n		为了能使用户能够快速的响应请求，搜索引擎优化（SEO）的传统方法一直集中在关键字，tag和内容上。无论是移动设备还是桌面搜索，搜索请求采取同样的工作方式，因此，开发者和SEO顾问团队会比较倾向于桌面开发。</p>\r\n	<p >\r\n		<strong>响应式设计</strong></p>\r\n	<p >\r\n		响应式设计的任务是为了接收HTTP请求检查用户通过该平台发送给他/她的请求，然后显示该平台页面，例如，当某个服务器通过iPhone接收到一个请求，该服务器可能会重新调节适合用户的页面。</p>\r\n	<p >\r\n		<strong>拆分搜索</strong></p>\r\n	<p >\r\n		许多开发者针对桌面和移动网站创建一个单独的内容，根据不同的域显示不同的内容（比如domain.mobi）或者通过某个子目录（domain.com/mobile）。虽然用户也能接受这种解决方案，但是这会导致搜索引擎产生许多问题。鉴于桌面和网站之间重复的内容可能会被搜索引擎当作垃圾信息。此外，单独的域可能会拆分页面的链接并且减少页面在搜索结果中的排名。</p>\r\n	<p >\r\n		<strong>智能手机Web爬虫</strong></p>\r\n	<p >\r\n		谷歌已经采取措施，考虑如何为智能手机量身定制网页排名。2011年12月，谷歌宣布推出Googlebot-Mobile，采用智能手机用户代理以补充其先前的移动电话用户代理爬虫。Googlebot-Mobile的开发使命是&ldquo;增加对智能手机内容的报道并为智能手机用户提供更好的搜索体验。&rdquo;</p>\r\n	<p >\r\n		谷歌积极拥抱智能手机技术同时也不断延伸扩展搜索结果以响应专为智能手机设计的URLs，这就为从桌面特定的页面重新定向到URL节省了时间。</p>\r\n	<p >\r\n		<strong>结束语：</strong></p>\r\n	<p >\r\n		目前，移动vs.桌面SEO的问题似乎并没有一个明确的答案。但从谷歌的举动可以表明，SEO专家有将重心转移至移动开发的迹象。可以肯定的是随着技术的不断发展和规则的更改，开发者和SEO顾问需要作出相应的调整。</p>\r\n</div>\r\n<br />\r\n', '', 1, 1, '', '2012-10-12', '2012-10-19 13:08:53', '2012-10-31 14:43:37', '0000-00-00 00:00:00', 0, 8);
INSERT INTO `newsinfo` VALUES (9, 2, 0, 1, 'IT行业为什么需要更多的女性？', '摘要：IT行业有众多才华横溢、成就突出的女性，她们为IT行业注入了更多活力。', '<div>\r\n	很多人曾问我：&ldquo;我知道技术行业需要更多的女性员工，可原因是什么呢？&rdquo;这是一个很好的问题。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	坦白地说，即便没有女性的参与，互联网仍会不断地蓬勃发展。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	虽然如此，我们仍需要更多的女性参与到技术行业的建设中，我认为原因有三方面。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	差异性可以带来更好的产品和结果</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	康乃尔大学的研究及诸多线上案例证明，差异性可以提高性能、士气和最终产品。更多的女性工程师的参与，意味着可以构建更好的互联网，可以提高服务于社会的软件性能。创建更好的互联网，是我最初从事软件开发的原因，我相信每个人都会认为这是至关重要的。(观点来源)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	弥补更多互联网设计中的漏洞</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	现在，该平台的结构已被白人男性和亚洲男性构建的不太相称了，具有典型的男性风格。我喜欢以Apple Store的玻璃阶梯为例来说明。虽然视觉上很吸引人，但这个设计却带来一个未曾想到的想象：引起大量奇怪的陌生人每天花几个小时坐在下面往上看。作为一名女性，第一次看见他们时，我很庆幸，&ldquo;幸好我今天没有穿裙子。&rdquo;此类想象不仅仅出现在设计这些阶梯上，我认为未来几年内，我们可能会在Web设计中看到更多如此的&ldquo;漏洞&rdquo;。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	在未来十年里，女性需要养活自己、养活家庭</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	对于女性来说，这个原因可能有点自私。但我们谁没有妈妈，谁没有姐妹呢，所以我希望我们可以涉足该领域。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	今年美国IT类工作有6百万，而1987年有628600，1997年有134万 。现在技术行业工作失业率为其他行业的一半。各种迹象表明，这一现状在未来并不会有太大变化。如果按照当前的速度继续增长的话，如果女性不进入这一技术领域，不久的将来，她们将无法养活自己。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	现在我们必须开始教育年轻女孩，否则她们最终将变得十分贫困。（编译：陈秋歌）</div>\r\n', '', 1, 1, '', '2012-10-19', '2012-10-19 13:08:53', '2012-10-19 13:17:01', '0000-00-00 00:00:00', 0, 9);
INSERT INTO `newsinfo` VALUES (10, 2, 0, 1, 'Windows 8将微软带入平板时代', 'Windows 8将在下周正式发布，有关Windows 8的各种猜想层出不穷。', '<div  >\r\n	<strong>摘要：</strong>Windows 8将在下周正式发布，有关Windows 8的各种猜想层出不穷。著名科技产品测评专家Walter Mossberg在AllThingsD发表文章，认为Windows 8将微软带入平板时代。他在文章中不仅对Windows 8相关产品进行了详细评测，而且分享了对微软进入平板时代的一些独到见解。</div>\r\n<div  >\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017165454_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n	<p >\r\n		微软Windows操作系统正在经历自1995年以来最大的一次革新，即使是最忠实的一批用户也可能认不出Windows 8，这款操作系统将于10月26日面世。</p>\r\n	<p >\r\n		<strong>体验陌生的&ldquo;开始屏&rdquo;</strong></p>\r\n	<p >\r\n		一打开Windows 8的界面你就会发现，这完全是个陌生的Windows界面。原先熟悉的桌面变成了现代感十足的大型滚动区块式图标和更加简洁、全屏显示的应用程序，而这一切都是由平板和智能手机&ldquo;唆使&rdquo;的。Windows 8的&ldquo;开始屏&rdquo;代替了&ldquo;开始按钮&rdquo;。&ldquo;开始屏&rdquo;功能十分强大，它是一个完整的计算系统，拥有独立的应用控制权，可以掌控整个显示屏内容。之前的&ldquo;开始按钮&rdquo;和传统Windows应用程序也并未消失，Windows 8的&ldquo;开始屏&rdquo;就像一个应用程序，你想使用哪个程序只需轻轻点击即可。</p>\r\n	<p >\r\n		笔者认为微软的这一步很大胆，Windows 8的界面友好，使用效果也很流畅。但Windows 8的触摸屏实在不得不让人联想到平板电脑，现在说Windows 8将微软带入了平板时代还为时尚早，毕竟微软推广Windows 8需要做的工作还有很多，Windows 8新版应用开发就是个很棘手的问题。当然也有好消息，微软的Windows 8可以在PC或平板电脑上运行，而苹果iPad和Mac采用的操作系统是完全不同的。</p>\r\n	<p >\r\n		<b>Windows 8</b><strong>如何混淆PC和平板</strong></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017231500_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n	<p >\r\n		Windows 8采取双环境同时运行的战略，一方面方便用户，但两种工作方式之间切换会让传统PC用户感到头晕。无论新环境还是旧环境都可以通过触摸或鼠标键盘操作，唯一的区别就是用户偏好问题。在这个问题上微软赌了一把，微软认为这种混淆不会持续很长时间，因为微软在传统PC上能够运行的Office软件目前并不支持iPad与Android，而这也是传统PC能够继续存在的&ldquo;救命稻草&rdquo;。</p>\r\n	<p >\r\n		<strong>不同的版本引发的疑惑</strong></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017232453_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		&nbsp;</p>\r\n	<p >\r\n		其实，Windows 8还有别的地方会让用户疑惑，Windows 8将会推出两个版本。一个版本支持运行英特尔处理器的PC；另一个版本专为微软平板推出，名叫RT。前一个版本不仅能运行最新的Windows 8应用，还兼容完整的传统程序。而后一版本就不是那么完美了，对传统程序的支持较少。比如Office软件，在RT版去除了Outlook，若想使用，只能去微软在线商店下载，而这与iPad应用商店如出一辙。</p>\r\n	<p >\r\n		微软其实也拿出了一套解决方案，就是自己推出Surface平板电脑。与运行Windows 8和Windows RT的平板电脑厂家展开直接竞争，曾经&ldquo;甜蜜&rdquo;马上就会烟消云散。</p>\r\n	<p >\r\n		<strong>Windows 8诸多新特性</strong></p>\r\n	<p >\r\n		笔者试用了微软Surface平板电脑，结果发现Windows 8的&ldquo;开始屏&rdquo;非常顺滑靓丽。消息提示、邮件显示和图片展示方式都很方便快捷，足以与iPad和Android平板电脑抗衡。</p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017165717_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n	<p >\r\n		Windows 8新增了一个创新性十足的&ldquo;Charms&rdquo;控制功能，点击屏幕右侧即可弹出Charms。如果你的设备不支持触摸屏，把鼠标移到屏幕右上角即可激活Charms。Charms中包含搜索、设置、共享、设备和返回&ldquo;开始屏&rdquo;功能。Windows 8还支持在屏幕中同时打开多个窗口操作，可以自由移动组合。</p>\r\n	<p >\r\n		<strong>Windows 8应用程序亮点多多</strong></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017165513_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n	<p >\r\n		Windows 8的诸多应用程序是令人印象深刻的，如Photos应用，不仅能够显示电脑中存储的照片，还能同时显示用户在Facebook、Flickr和微软SkyDrive云端储存的照片。People应用不仅显示联系人信息，还能及时同步联系人在社交网络上的状态更新。</p>\r\n	<p >\r\n		Mail应用有点让人失望，缺乏统一收件箱和单一显示未读邮件的文件夹，也没有最常联系人的邮件文件夹。微软应用商店作为Windows 8应用的唯一&ldquo;提供场所&rdquo;也是刚刚起步，缺少很多常用的第三方应用。应用商店中已有支持Kindle和Netflix的应用，但尚未发现Dropbox、Facebook和Twitter等应用。微软方面表示，在下周Windows 8正式发布时，会加入更多的流行应用。</p>\r\n	<p >\r\n		<strong>Windows 8各版本售价</strong></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017232127_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n	<p >\r\n		Windows RT是与设备内嵌配套销售的。高端版本名为Pro，用户可单独购买，也可升级系统到Pro。微软目前尚未披露Windows 8操作系统的具体售价，不过在未来几个月内，用户可以花40美元下载Windows 8，或是花70美元购买DVD光盘版。在今年6月2日至明年1月31日期间购买预装Windows电脑的用户，只需支付15美元即可升级至Windows 8。但对没有触摸屏的用户而言，升级到Windows 8并不是一个好的选择。Pro也许更适合企业用户使用，家庭消费版就叫Windows 8，微软尚未透露其具体售价。</p>\r\n	<p >\r\n		<strong>结语</strong></p>\r\n	<p >\r\n		微软为Windows&ldquo;洗心革面&rdquo;还是值得肯定的，而且微软还将继续维护&ldquo;传统优势项目&rdquo;，以巩固自己的势力范围。但随着Windows 8的强势来袭，也许我们迟早要向传统的Windows桌面说再见，然后说一声：Windows 8，你好！（编译：朱慧涛）</p>\r\n</div>\r\n<br />\r\n', '', 1, 1, '', '2012-05-19', '2012-10-19 13:18:54', '2012-10-31 14:47:37', '0000-00-00 00:00:00', 0, 10);
INSERT INTO `newsinfo` VALUES (11, 5, 0, 1, '苹果挖亚马逊高管兼搜索专家Stasior 负责运营Siri', '今日，苹果聘请了亚马逊高管、著名搜索技术专家William Stasior，负责运营Siri部门', '<div  style="margin: 0px 0px 1.5em; padding: 5px 10px; list-style: none;   ">\r\n	<strong>摘要：</strong>今日，苹果聘请了亚马逊高管、著名搜索技术专家William Stasior，负责运营Siri部门。他的加入可能会为苹果带来一个新的气象，搜索将成为他的首要任务。Stasior曾担任多家互联网公司重要职位，其个人履历丰富，经验十足，苹果纳入他想必也没少费工夫。</div>\r\n<div  style="margin: 0px 0px 30px; padding: 0px; list-style: none;   ">\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<img alt="" src="http://articles.csdn.net/uploads/allimg/121016/89_121016115821_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">据消息人士透露，苹果聘请了亚马逊高管、著名搜索技术专家William Stasior，他曾担任亚马逊搜索和导航业务的A9事业部主管，并从该部门前负责人Udi Manber跳槽谷歌后，接替主管位置至今。据科技博客AllThingsD报道，Stasior进入苹果后将负责运营Siri语音助手部门。此现象表示，Siri和搜索对于苹果而言越来越重要。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">在此之前，苹果在iOS6系统中替换了Google maps，添加Apple maps应用为默认地图。谷歌在地图方面的搜索能力显著，而苹果搜索稍显逊色。苹果iOS设备上也依赖谷歌强大的Web搜索功能，虽然用户可以选择雅虎或是Bing作为默认搜索引擎，但苹果仍然还是在严重的依赖于他人的搜索功能。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">A9网站的搜索引擎就是由Stasior一手打造，看来苹果未来的搜索也将是自己研发设计。这种猜想很符合苹果的战略集成方案，依靠于自己的硬件、软件服务，而不是依靠外界。值得注意的是，亚马逊A9不仅仅是一个单纯的搜索引擎，它还提供广告算法。Stasior在这方面的经验也将帮助苹果推动iAds。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">综上所述，也许在不久后就能看到iOS里一些明显的改善，Siri是如何通过内容搜索信息。虽然Siri一年前推出时技术还并未成熟，但今时今日Stasior的加入将帮助其前进一大步，增强Siri前瞻性搜索，让其成为一个信息预测者。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">Stasior在亚马逊任职时一直都负责管理A9部门，也就是亚马逊的搜索和搜索广告部门。他曾是AltaVista高管，同时也是其联合创始人之一，自Udi Manber离职转投谷歌以后一直负责运营这家公司。A9部门目前为亚马逊全球网站提供搜索服务，同时也为其他零售网站提供服务。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">Stasior拥有麻省理工学院博士学位，曾在该学院任教，然后陆续在甲骨文、软件开发商Netcentives和AltaVista供职，2003年加盟亚马逊，担任搜索和导航业务负责人。在加盟苹果以后，他将负责管理Siri语音助理服务部门。</span></p>\r\n</div>\r\n<br />\r\n', '', 1, 1, '', '2012-07-05', '2012-10-20 10:03:16', '2012-10-31 14:46:23', '0000-00-00 00:00:00', 0, 11);
INSERT INTO `newsinfo` VALUES (12, 5, 0, 1, '第二届Pwnium大赛：少年黑客攻陷Chrome将获巨奖', '据传，一名十几岁别名Pinkie Pie的年轻黑客已在第二届Pwnium大赛成功地发现了Chrome漏洞，他发现的这个漏洞可能价值6万美元。他曾在第一届Pwnium大赛中获6万美元奖金。', '<p >\r\n	据传，一名十几岁的年轻黑客已在第二届Pwnium大赛成功地发现了Chrome漏洞，这则消息已得到官方确认。这名年轻黑客的别名是Pinkie Pie，他发现的这个漏洞可能价值6万美元。</p>\r\n<p >\r\n	今年三月，Pinkie Pie和Sergey Glazunov就在第一届Pwnium大赛因发现Chrome漏洞分获6万美元奖金。第二届Pwnium大赛的奖金总额从上届的100万美元提高到了200万，Pwnium大赛将作为Hack in the Box安全会议的一部分在马来西亚首都吉隆坡再度拉开帷幕。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121010/155_121010153541_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	谷歌软件工程师Chris Evans将出席此次大赛，他表示谷歌将关注Pwnium大赛发现的漏洞，并在其后的大会上研讨相关应对措施。谷歌对任何漏洞提交都持积极开放态度，毕竟发现漏洞有利于Chrome提升安全性能。</p>\r\n<p >\r\n	当然，获得六万美元奖金也绝非易事。Pinkie Pie提交的漏洞必须满足以下几个条件：</p>\r\n<p >\r\n	1.未经报告的原始漏洞，独立发现的，未在其他比赛中提交过；</p>\r\n<p >\r\n	2.须基于未经报告的原始bug或Chrome的安全性能，或是Chrome与Windows、Flash及其他软件和驱动互动时出现的Bug；</p>\r\n<p >\r\n	3.可由Chrome远程利用；</p>\r\n<p >\r\n	4.须能够运行在Windows 7和比赛中提供的电脑上；</p>\r\n<p >\r\n	5.严重安全漏洞、危害大；</p>\r\n<p >\r\n	6.由本人授权、创建的；</p>\r\n<p >\r\n	7.提交时有相关文档说明每个漏洞具体细节。</p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 10:06:21', '2012-10-20 10:11:04', '0000-00-00 00:00:00', 0, 12);
INSERT INTO `newsinfo` VALUES (13, 15, 0, 1, '10月23日：苹果将发布iPad mini', '它真的发生了！苹果公司宣布将在10月23日发布传闻已久的，iPad mini。至少，这就是苹果刚刚发布的邀请函。一个比目前iPad具备更小尺寸屏幕的传言在网络中流传了很久。此次苹果选择在这个时候发布苹果，正是希望在圣诞节期间与目前几大主流的7寸平板相抗衡。', '<p >\r\n	它真的发生了！苹果公司宣布将在10月23日发布传闻已久的，iPad mini。至少，这就是苹果刚刚发布的邀请函。一个比目前iPad具备更小尺寸屏幕的传言在网络中流传了很久。此次苹果选择在这个时候发布，正是希望在圣诞节期间与目前几大主流的7寸平板相抗衡。先有亚马逊的Kindle Fire，后有谷歌的Nexus 7以及微软的Surface，在不久的未来iPad mini正式加入7寸平板的战场。</p>\r\n<p >\r\n	<span style="line-height: 25px; text-indent: 28px; font-family: 宋体, Arial, sans-serif; ">一般苹果在邀请函中都会玩一把内涵图，这次似乎也不例外。我们在邀请函中只看到一句话：We&#39;ve got a little more to show you&mdash;&mdash;&ldquo;little&rdquo;，是否预示着iPad mini即将揭开神秘的面纱？</span></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/118_121017003620_1_lit.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	图：苹果10月23日发布会邀请函</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<span style="text-align: left; ">文章来源：</span><font color="#0066cc"><span style="cursor: pointer; text-align: left;">TheVerge</span></p>\r\n', '', 1, 1, '', '2012-09-01', '2012-10-20 10:12:19', '2012-10-31 14:46:14', '0000-00-00 00:00:00', 0, 13);
INSERT INTO `newsinfo` VALUES (14, 5, 0, 1, 'Windows 8将微软带入平板时代', 'Windows 8将在下周正式发布，有关Windows 8的各种猜想层出不穷。著名科技产品测评专家Walter Mossberg在AllThingsD发表文章，认为Windows 8将微软带入平板时代。他在文章中不仅对Windows 8相关产品进行了详细评测，而且分享了对微软进入平板时代的一些独到见解。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017165454_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	微软Windows操作系统正在经历自1995年以来最大的一次革新，即使是最忠实的一批用户也可能认不出Windows 8，这款操作系统将于10月26日面世。</p>\r\n<p >\r\n	<strong>体验陌生的&ldquo;开始屏&rdquo;</strong></p>\r\n<p >\r\n	一打开Windows 8的界面你就会发现，这完全是个陌生的Windows界面。原先熟悉的桌面变成了现代感十足的大型滚动区块式图标和更加简洁、全屏显示的应用程序，而这一切都是由平板和智能手机&ldquo;唆使&rdquo;的。Windows 8的&ldquo;开始屏&rdquo;代替了&ldquo;开始按钮&rdquo;。&ldquo;开始屏&rdquo;功能十分强大，它是一个完整的计算系统，拥有独立的应用控制权，可以掌控整个显示屏内容。之前的&ldquo;开始按钮&rdquo;和传统Windows应用程序也并未消失，Windows 8的&ldquo;开始屏&rdquo;就像一个应用程序，你想使用哪个程序只需轻轻点击即可。</p>\r\n<p >\r\n	笔者认为微软的这一步很大胆，Windows 8的界面友好，使用效果也很流畅。但Windows 8的触摸屏实在不得不让人联想到平板电脑，现在说Windows 8将微软带入了平板时代还为时尚早，毕竟微软推广Windows 8需要做的工作还有很多，Windows 8新版应用开发就是个很棘手的问题。当然也有好消息，微软的Windows 8可以在PC或平板电脑上运行，而苹果iPad和Mac采用的操作系统是完全不同的。</p>\r\n<p >\r\n	<b>Windows 8</b><strong>如何混淆PC和平板</strong></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017231500_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	Windows 8采取双环境同时运行的战略，一方面方便用户，但两种工作方式之间切换会让传统PC用户感到头晕。无论新环境还是旧环境都可以通过触摸或鼠标键盘操作，唯一的区别就是用户偏好问题。在这个问题上微软赌了一把，微软认为这种混淆不会持续很长时间，因为微软在传统PC上能够运行的Office软件目前并不支持iPad与Android，而这也是传统PC能够继续存在的&ldquo;救命稻草&rdquo;。</p>\r\n<p >\r\n	<strong>不同的版本引发的疑惑</strong></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017232453_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	&nbsp;</p>\r\n<p >\r\n	其实，Windows 8还有别的地方会让用户疑惑，Windows 8将会推出两个版本。一个版本支持运行英特尔处理器的PC；另一个版本专为微软平板推出，名叫RT。前一个版本不仅能运行最新的Windows 8应用，还兼容完整的传统程序。而后一版本就不是那么完美了，对传统程序的支持较少。比如Office软件，在RT版去除了Outlook，若想使用，只能去微软在线商店下载，而这与iPad应用商店如出一辙。</p>\r\n<p >\r\n	微软其实也拿出了一套解决方案，就是自己推出Surface平板电脑。与运行Windows 8和Windows RT的平板电脑厂家展开直接竞争，曾经&ldquo;甜蜜&rdquo;马上就会烟消云散。</p>\r\n<p >\r\n	<strong>Windows 8诸多新特性</strong></p>\r\n<p >\r\n	笔者试用了微软Surface平板电脑，结果发现Windows 8的&ldquo;开始屏&rdquo;非常顺滑靓丽。消息提示、邮件显示和图片展示方式都很方便快捷，足以与iPad和Android平板电脑抗衡。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017165717_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	Windows 8新增了一个创新性十足的&ldquo;Charms&rdquo;控制功能，点击屏幕右侧即可弹出Charms。如果你的设备不支持触摸屏，把鼠标移到屏幕右上角即可激活Charms。Charms中包含搜索、设置、共享、设备和返回&ldquo;开始屏&rdquo;功能。Windows 8还支持在屏幕中同时打开多个窗口操作，可以自由移动组合。</p>\r\n<p >\r\n	<strong>Windows 8应用程序亮点多多</strong></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017165513_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	Windows 8的诸多应用程序是令人印象深刻的，如Photos应用，不仅能够显示电脑中存储的照片，还能同时显示用户在Facebook、Flickr和微软SkyDrive云端储存的照片。People应用不仅显示联系人信息，还能及时同步联系人在社交网络上的状态更新。</p>\r\n<p >\r\n	Mail应用有点让人失望，缺乏统一收件箱和单一显示未读邮件的文件夹，也没有最常联系人的邮件文件夹。微软应用商店作为Windows 8应用的唯一&ldquo;提供场所&rdquo;也是刚刚起步，缺少很多常用的第三方应用。应用商店中已有支持Kindle和Netflix的应用，但尚未发现Dropbox、Facebook和Twitter等应用。微软方面表示，在下周Windows 8正式发布时，会加入更多的流行应用。</p>\r\n<p >\r\n	<strong>Windows 8各版本售价</strong></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/155_121017232127_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	Windows RT是与设备内嵌配套销售的。高端版本名为Pro，用户可单独购买，也可升级系统到Pro。微软目前尚未披露Windows 8操作系统的具体售价，不过在未来几个月内，用户可以花40美元下载Windows 8，或是花70美元购买DVD光盘版。在今年6月2日至明年1月31日期间购买预装Windows电脑的用户，只需支付15美元即可升级至Windows 8。但对没有触摸屏的用户而言，升级到Windows 8并不是一个好的选择。Pro也许更适合企业用户使用，家庭消费版就叫Windows 8，微软尚未透露其具体售价。</p>\r\n<p >\r\n	<strong>结语</strong></p>\r\n<p >\r\n	微软为Windows&ldquo;洗心革面&rdquo;还是值得肯定的，而且微软还将继续维护&ldquo;传统优势项目&rdquo;，以巩固自己的势力范围。但随着Windows 8的强势来袭，也许我们迟早要向传统的Windows桌面说再见，然后说一声：Windows 8，你好！（编译：朱慧涛）</p>\r\n<p >\r\n	来源：<font color="#0066cc"><span style="cursor: pointer;">AllThing</span><font color="#0066cc"><span style="cursor: pointer;">sD</span></p>\r\n', '', 1, 1, '', '2012-08-03', '2012-10-20 10:13:46', '2012-10-31 14:45:49', '0000-00-00 00:00:00', 0, 14);
INSERT INTO `newsinfo` VALUES (15, 7, 0, 1, 'Surface价格及细节公布 32GB版本499美元', '微软公司刚刚改版了Surface平板电脑的官方网站，同时微软还公布了Surface平板电脑的相关细节及定价：499美元（32GB）、599美元（32GB+键盘套）和699美元（64GB+键盘套）。有业界人士认为微软这一定价策略与iPad相比暂时无法体现出竞争力。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/130_121017132610_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">北京时间10月17日消息，微软公司在当地时间10月16日改版了Surface平板电脑的<font color="#0066cc"><span style="cursor: pointer;">官方网</span><font color="#0066cc"><span style="cursor: pointer;">站</span>，同时微软还公布了<a href="http://www.microsoft.com/en-us/news/Press/2012/Oct12/10-16announcementPR.aspx"  target="_blank">Surface平板电脑的相关细节</a>。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">从10月26日开始，Surface将能够在美国和加拿大的微软商店进行购买，其中包括最新的34家假日店。除此之外，Surface还开始接受来自包括中国在内的更多国家用户进行预定，其它国家还包括美国、澳大利亚、加拿大、法国、香港、英国、德国等。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>Surface相关产品信息：</strong></span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>软件：</strong>预装Windows RT、Office家庭&amp;学生2013 RT预览版（包括Microsoft Word、PowerPoint、Excel 以及 OneNote）。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>外观：</strong>10.81*6.77*0.37英寸、1.5磅、VaporMg外壳、深钛色以及音量及电源按钮。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>硬盘：</strong>32GB；64GB。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>CPU：</strong>NVIDIA T30，2GB RAM。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>无线：</strong>支持Wi-Fi（802.11a/b/g/n），蓝牙4.0。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>摄像头：</strong>前后两个720P高清摄像头。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>接口：</strong>全尺寸USB 2.0、microSDXC卡槽、耳机插孔、HD视频输出端口。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><strong>应用：</strong>Office家庭&amp;学生2013 RT预览版（包括Word, PowerPoint, Excel and OneNote）、Windows Mail and Windows Messaging、SkyDrive、IE10、Bing、Xbox Music、Xbox Video以及Xbox Games。</span></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/130_121017132643_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">Surface的售价有三个等级，分别为：499美元（32GB）、599美元（32GB+键盘套）和699美元（64GB+键盘套）。详细的可以查看<a href="http://surface.microsoftstore.com/store/msstore/Content/pbpage.Surface?ESICaching=off&amp;WT.mc_id=FY13WinHH"  target="_blank">Surface官网</a>，国内指定销售渠道为苏宁电器。</span></p>\r\n', '', 1, 1, '', '2012-06-16', '2012-10-20 10:17:13', '2012-10-31 14:45:39', '0000-00-00 00:00:00', 0, 15);
INSERT INTO `newsinfo` VALUES (16, 7, 0, 1, '谋求转变 百度MP3搜索门户提供音乐服务', '日前百度更换了其音乐首页地址，并弹出窗口称，MP3只是一种格式，我们需要的是音乐。此举无疑正式宣布百度将逐步以音乐盒服务替代过去的MP3搜索门户，国外网站TNW指出，百度意在重塑品牌并推进其合法的流媒体服务。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/119_121017155816_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	北京时间<a href="http://thenextweb.com/asia/2012/10/17/chinas-baidu-deprecating-mp3-search-portal-in-favor-of-streaming-baidu-music-service/"  target="_blank">10月17日消息</a>，国内搜索巨头百度已推出百度音乐盒服务，开始逐步替代过去的MP3搜索门户。</p>\r\n<p >\r\n	笔者注意到百度音乐首页网址MP3.Baidu.com已经更换成Music.Baidu.com，同时百度音乐还弹出一个页面称，MP3只是一种格式，我们需要的是音乐。国外网站TNW指出，从百度Ting到百度音乐的转变，百度此举意在重塑品牌，因为去掉MP3的名称能够帮助百度摆脱之前侵犯版权的坏名声，同时也能推进其合法的流媒体服务。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121017/119_121017155847_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	相比乱七八糟丢满了关键字和链接的旧百度MP3搜索页面，新的百度音乐显得更清新。目前百度主页搜索栏旁仍然显示各种MP3标签，不过最快这个月底，百度预计完成切换到全新的音乐页标签。</p>\r\n<p >\r\n	据悉百度MP3搜索推出之初，因不区分网络上合法或非法的音乐文件，它以方便、容易找到MP3下载而获得快速发展。近几年由于饱受音乐版权官司，百度似乎谋求转变音乐服务模式。</p>\r\n<p >\r\n	虽然百度开始清理盗版音乐并引进百度Ting，同时百度也在去年与主要唱片公司达成关键交易，但这样仍对百度MP3搜索产生了严重影响。据第三方数据显示，百度MP3流量已从2005年百度访问总量的三分之一下滑到如今的4％。</p>\r\n<p >\r\n	<strong>最后：</strong>不管哪种方式，由于面临较少的竞争，百度谋求音乐服务转型应该比较容易获得成功。另外，值得一提的是通过自己合作伙伴关系而提供合法音乐下载的谷歌，上个月已正式关闭在中国的音乐服务。</p>\r\n', '', 1, 1, '', '2012-02-19', '2012-10-20 10:20:29', '2012-10-31 14:46:01', '0000-00-00 00:00:00', 0, 16);
INSERT INTO `newsinfo` VALUES (17, 7, 0, 1, '谷歌又一新战略 集合众多功能加强Gmail搜索', '谷歌正逐渐整合旗下多款产品，帮助用户在统一的位置使用这些服务。至此，Gmail集合了众多功能，推出了统一搜索功能。可方便用户对文档、日历、邮件等进行搜索。', '<div  style="margin: 0px 0px 30px; padding: 0px; list-style: none;   ">\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">据国外媒体</span><a href="http://allthingsd.com/20121015/google-amps-up-personal-search-to-combine-gmail-calendar-drive-and-more/"  target="_blank"><span style="font-family: 微软雅黑; ">allthingsd</span></a><span style="font-family: 微软雅黑; ">报道，从今天开始，谷歌用户可从Gmail邮箱顶部的搜索栏，对邮件、联系人、Google Drive文档和Google日历进行搜索。但需要先选择&ldquo;field trial&rdquo;（现场测试）模式后才可使用。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">本次测试是基于现有的现场测试之上，将集合Gmail和Google.com的搜索结果。该测试早在8月推出，现还包括了Google Drive文档，电子表格和文件。需要注意的是，在此之前已经选择现场测试的用户需再次选择，才可参加此次测试。</span></p>\r\n	<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none; text-align: center; ">\r\n		<span style="font-family: 微软雅黑; "><img alt="" src="http://articles.csdn.net/uploads/allimg/121016/89_121016095915_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">谷歌曾表示其Gmail功能日益庞大，对隐私的要求越来越高和复杂。本次所有测试仅适用于英文版的个人Gmail账户。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">像CloudMagic的一些初创公司，也致力于个人搜索的研究。但通常情况下，谷歌结合个人和公共服务于一体将会引起一些用户的不满。这就是谷歌测试的原因。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">原文链接：</span><a href="http://allthingsd.com/20121015/google-amps-up-personal-search-to-combine-gmail-calendar-drive-and-more/"  target="_blank"><span style="font-family: 微软雅黑; ">allthingsd</span></a></p>\r\n</div>\r\n<br />\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 10:23:15', '2012-10-20 10:24:27', '0000-00-00 00:00:00', 0, 17);
INSERT INTO `newsinfo` VALUES (18, 7, 0, 1, 'Office 2013发布RTM版本 预计明年春季正式发布', '微软当地时间11日在Office官方博客发文称Office 2013已经完成了测试阶段的工作，该软件套装的最新版本目前已经是RTM版本。同时，Office官网上同时也向用户提供了高清预览视频。RTM版本的确定，也意味着Office 2013有望在明年一季度正式亮相。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121012/130_121012075546_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">北京时间10月12日消息，<a href="http://blogs.office.com/b/office-news/archive/2012/10/11/office-reaches-rtm.aspx"  target="_blank">微软刚刚宣布</a>，Office 2013已经完成了测试阶段的工作，该软件套装的最新版本目前已经是RTM（Release To Manufacturing，面向厂商发行）版本。微软Office官网上同时也向用户提供了高清预览视频，同时这也意味着用户有希望在2013年第一季度入手完整版的Office 2013。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">微软曾在今年7月份公开发布唯一一个公开的新版Office测试版客户端、服务器及服务软件，也就是我们所知道的消费者预览版。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">据微软方面消息透露，截止10月19日，所有在当地零售商或经销商处购买Office 2010的用户，在Office 2013发行时将能够免费获得最新的Office软件。此外，在微软10月26日发布Windows 8之后，用户将能够在Windows RT设备上率先体验到Office 2013。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">微软表示本次发布的是&ldquo;微软做过的最给力的一款Office&rdquo;，并极力推介&ldquo;新鲜、友好触摸设计&rdquo;，&ldquo;在社交、阅读、笔记、会议以及通讯等方面有很大优势。&rdquo;微软此次推出Windows 8操作系统及Office 2013，对于公司发展历史会有巨大的影响，是有一定风险的。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">如果你是企业用户，可以留意以下信息，微软为企业用户准备了很多提前获取软件的方案，这将帮助这部分用户提前进行测试、试点及为公司配置Office软件：</span></p>\r\n<blockquote style="margin: 0px 10px 0px 30px; padding: 0px 0px 0px 10px; list-style: none;  border-left-width: 4px; border-left-style: solid; border-left-color: rgb(221, 221, 221); color: rgb(85, 85, 85); ">\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">我们将在下一次服务更新时向Office 365企业用户推出新功能，时间是在11月份全面上市时。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">享受微软软件保障（Software Assurance）的批量许可用户将能够在11月中旬通过批量许可服务中心下载Office 2013应用及其它Office产品，包括SharePoint 2013、Lync 2013及Exchange 2013等。用户可以在12月1日的批量授权价格表上看到这些产品。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">IT专业人士及开发者在11月中旬将能够通过他们的TechNet及MSDN订阅下载到最终版本的软件。</span></p>\r\n</blockquote>\r\n', '', 1, 1, '', '2012-05-11', '2012-10-20 10:24:30', '2012-12-24 14:50:38', '0000-00-00 00:00:00', 0, 18);
INSERT INTO `newsinfo` VALUES (19, 15, 0, 1, '谷歌在印度推Gmail免费短信服务', '谷歌一直在努力桥接发展中国家功能手机SMS服务和Gmail之间的服务，这不，近日谷歌在印度推出“Gmail SMS”服务，这使得印度的Gmail用户可以从Gmail的窗口发送信息到手机上并且接受聊天信息的回复，目前谷歌的这项服务已经得到印度的八大运营商的支持。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121011/119_121011154555_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	北京时间<a href="http://thenextweb.com/in/2012/10/11/google-pushes-out-free-sms-service-for-gmail-in-india/"  target="_blank">10月11日消息</a>，谷歌近日在印度推出&ldquo;Gmail SMS&rdquo;服务，使得印度的手机用户可以从Gmail发送免费短信。</p>\r\n<p >\r\n	据悉谷歌的这项新服务，可以让印度的Gmail用户从Gmail的窗口发送信息到手机上并且接受聊天信息的回复。目前谷歌的&ldquo;Gmail SMS&rdquo;服务已经获得印度包括Aircel、Idea、Loop Mobile、MTS、Reliance、Tata DoCoMo、Tata indicom和Vodafone八大移动运营商的支持。</p>\r\n<p >\r\n	需要指出的是，虽然&ldquo;Gmail SMS&rdquo;服务免费，但用户不能无限的发送信息。Gmail用户最多可发送50条免费短信，当免费短信用完时，可以等待恢复限量的免费短信或者付费购买短信服务，当地运营商会按照标准价格收费。这样做有助于遏制垃圾邮件发送者使用该服务，从而让用户避免不必要的骚扰。</p>\r\n<p >\r\n	如果用户不希望Gmail的聊天短信发送到自己的手机上，他们可以设置阻止接受特定用户或所有用户的邮件。</p>\r\n<p >\r\n	值得一提的是，就在谷歌印度推出Gmail免费短信服务之际，上个月信息通信应用WhatsApp率先宣布与印度运营商达成交易，将为大学生提供无限量的短信计划。</p>\r\n<p >\r\n	<strong>最后：</strong>谷歌一直努力桥接发展中国家功能手机SMS服务和Gmail之间的服务。例如今年4月，谷歌在印度的Google+社交网络上新增短信发布功能，今年7月，这家搜索巨头又在非洲市场推出一个Gmail手机短信功能。值得称赞的是，谷歌这项服务实际上很棒，因为在发展中国家并不是有那么多机会连接到移动互联网，而对于其他人来说，在无法连接3G、WiFi的特殊情况下，还有这么一个途径收发邮件未尝不是一件好事。</p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 10:26:16', '2012-10-20 10:27:52', '0000-00-00 00:00:00', 0, 19);
INSERT INTO `newsinfo` VALUES (20, 15, 0, 1, '消息称编程语言PHP即将推出移动版', '移动版PHP将是什么样子以及将如何交付目前都仍旧还是个谜。', '<p >\r\n	北京时间10月4日消息，美国科技博客VentureBeat撰稿人John Koetsier近日撰文称网络上最流行的编程语言可能即将推出移动版。文章指出，有75%的网站正在使用PHP，如Facebook、维基百科、雅虎和Photobucket等网站都是使用PHP编程语言来构建的，但这种语言看起来仍无法获得任何尊敬。不过，移动版PHP应将有助于这种编程语言继续实现增长。</p>\r\n<p >\r\n	<strong>以下是这篇文章的全文：</strong></p>\r\n<p >\r\n	有一种开发者对网络上最流行的编程语言PHP又爱又恨，而当这种编程语言的看管者采取下一步行动时，他们将真的只恨不爱了。</p>\r\n<p >\r\n	PHP是由丹麦程序员雷斯莫斯&middot;勒道夫（Rasmus Lerdorf）在1995年创造出来的。在1997年，以色列程序员安迪&middot;古特曼斯（Andi Gutmans）和齐弗&middot;苏拉斯基（Zeev Suraski）重写了解析程序，从而为PHP 3奠定了基础。到1999年，两人开发出了Zend Engine，到现在它仍是PHP的解释器。此后，古特曼斯和苏拉斯基仍继续合作，共同创建了商业化实体Zend Technologie，为PHP开发者创造扩展产品和服务，尤其是在企业中供职的开发者。</p>\r\n<p >\r\n	时至今日，在代码库经过多次重大的迭代以后，有35%的网络流量是由PHP处理的，古特曼斯说道。而据维基百科提供的数据显示，有75%的网站正在使用PHP，如Facebook、维基百科、雅虎和Photobucket等网站都是使用PHP编程语言来构建的。全球最流行的博客平台WordPress也是用这种语言构建的，很可能在其35%的网络流量中占到了一半的比例。此外，其他大多数主要的内容管理系统也同样使用这种语言，如Drupal和Joomla等。</p>\r\n<p >\r\n	<strong>不受尊敬</strong></p>\r\n<p >\r\n	尽管如此，这种语言看起来仍无法获得任何尊敬，在过去许多年时间里都被使用C、Java、.NET、Python或Ruby等语言编写代码的程序员所嘲笑。从发展趋势来看，PHP作为一个搜索词汇的使用量在过去几年时间里一直都呈现出下滑的走势，而移动应用革命则让Objective-C和Java重新复苏。</p>\r\n<p >\r\n	那么，这种为如此之多的网络流量提供支持的编程语言是否就会这样悄无声息的消失呢？</p>\r\n<p >\r\n	如果古特曼斯对此有话要说的话，那么答案肯定就是否定的。VentureBeat就PHP及其未来的问题与他进行了对话，结果是他比以往任何时候都更加看好这种编程语言，尤其是说到即将推出的移动版PHP时就更是如此。</p>\r\n<p >\r\n	<strong>攫取份额</strong></p>\r\n<p >\r\n	&ldquo;所有动态语言现在都正在从Java和.NET那里攫取份额。&rdquo;古特曼斯说道。&ldquo;我们正在从中获得很大好处。&rdquo;</p>\r\n<p >\r\n	因此，Ruby on Rails或Node.js等更加时髦的技术并不特别令古特曼斯感到困扰。心理份额当然是很好的，但市场份额更好。而古特曼斯所重点关注的就是市场份额数据，尤其是在企业用户中占据的市场份额。</p>\r\n<p >\r\n	&ldquo;从成熟的观点来看，&rdquo;古特曼斯说道，&ldquo;我认为就目前而言，其他任何动态语言都不具备完整的工具组。我们的竞争对手是Java 和.NET&hellip;&hellip;而永远都不是是其他的动态语言。&rdquo;</p>\r\n<p >\r\n	虽然古特曼斯喜欢Ruby on Rails正在做的事情，并认为PHP能从中学习和借鉴某些东西，但他同时指出，PHP对WordPress、Drupal和Magento等解决方案能提供重大的支持。&ldquo;与八年以前相比，现在我们已经变得更好&hellip;&hellip;在今天，我们是唯一能真正进入主流企业的编程语言。&rdquo;古特曼斯说道。&ldquo;我们确实相信，PHP的动量和规模将会继续下去。我们不认为现在PHP正在放慢速度。&rdquo;</p>\r\n<p >\r\n	古特曼斯的言辞带有公司创始人的那种热忱；当然，还有其他一些公司也正在迎合与PHP相关的企业需求，但Zend仍旧是最大和最知名的PHP产品和服务提供商之一，从其起源来看尤其是如此。</p>\r\n<p >\r\n	据最近发布的一份研究报告显示，有三分之二的开发者将一半的时间花在PHP身上。另据Rails开发者马可&middot;盖尔（Marc Gayle）最近发布的研究报告显示，分类信息网站Craigslist上有一半的开发者职位需要PHP开发者。当我与盖尔交谈时，他猜测其理由可能在于PHP拥有超级流行的内容管理系统。&ldquo;我觉得，那让结果产生了偏移。&rdquo;他说道。&ldquo;但我不能确定。&rdquo;</p>\r\n<p >\r\n	<strong>移动版即将问世</strong></p>\r\n<p >\r\n	在说到移动应用的问题时，古特曼斯支持JavaScript缔造者布兰登&middot;艾奇（Brendan Eich）等人的说法，坚定地相信网络和网络语言最终将会赶上来，击败本地化的编程语言。</p>\r\n<p >\r\n	但古特曼斯暗示，PHP和Zend将提供客户端应用开发工具。他拒绝就此发表更多的言论，仅表示他将在10月底召开的Zend大会上宣布所有细节信息。但是，听起来像是PHP将会推出某种程度上的移动版。就目前而言，移动版PHP将是什么样子以及将如何交付都仍旧还是个谜。但古特曼斯表示，移动版PHP将有助于这种编程语言继续实现增长。这一点可以说是毋庸置疑。</p>\r\n<p >\r\n	本文来自：<a href="http://tech.qq.com/a/20121004/000007.htm"  target="_blank">腾讯科技</a></p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 10:27:55', '2012-10-20 10:30:27', '0000-00-00 00:00:00', 0, 20);
INSERT INTO `newsinfo` VALUES (21, 7, 0, 1, '谷歌市值超越微软沃尔玛 成美第三大上市公司', '谷歌市值达2490.80美元，仅仅位居苹果和埃克森美孚之后。而微软和沃尔玛市值分别为2472.36亿美元和2489.40美元。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="谷歌市值超越微软沃尔玛 成美第四大上市公司" src="http://img1.gtimg.com/tech/pics/hv1/226/18/1160/75433816.jpg" style="vertical-align: middle; border: none; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	谷歌(微博)周一股价走势图（腾讯科技配图）</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="谷歌市值超越微软沃尔玛 成美第四大上市公司" src="http://img1.gtimg.com/tech/pics/hv1/228/18/1160/75433818.jpg" style="vertical-align: middle; border: none; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	沃尔玛周一股价走势图（腾讯科技配图）</p>\r\n<p >\r\n	北京时间10月2日消息，谷歌股价周五在纳斯达克证券市场常规交易中报收于761.78美元，市值达2490.80美元，超越微软和沃尔玛成为美国第三大市值上市公司，后者市值分别为2472.36亿美元和2489.40美元，与此同时，谷歌也成为了全球第二大科技公司。</p>\r\n<p >\r\n	受投资人对谷歌斥资125亿美元收购摩托罗拉移动以及移动搜索广告价格顾虑的逐渐减退，谷歌股价在第三季度累计涨幅已经达到30%，创出7年来的季度最大涨幅。</p>\r\n<p >\r\n	美国投资公司Wedge Partners分析师马丁&middot;普科宁(Martin Pyykkonen)称：&ldquo;PC硬件业务明显正面临困境。从发展趋势来看，这种过渡是相当明确的，那就是朝着云和网络的方向发展。&rdquo;</p>\r\n<p >\r\n	标准普尔500指数在今年第三季度上涨6.2%，而谷歌股价的涨幅几乎是达到了该指数涨幅的五倍。谷歌股价在第三季度的大幅飙升，也让这家公司的市值超越微软和沃尔玛，成为美国第三大市值上市公司，仅仅位居苹果和埃克森美孚之后。</p>\r\n<p >\r\n	根据FactSet提供的数据显示，今年6月份，谷歌的动态市盈率达到了历史最低水平，至少是该公司自2004年进行首次公开招股以来的最低水平。在过去的两年时间里，谷歌的动态市盈率一直在标准普尔500指数科技股当中垫底。投资人当前关注着谷歌能否维持其动能的迹象。谷歌股东则希望谷歌的搜索广告费用能进一步稳定，夏天时已经有所改观。</p>\r\n<p >\r\n	另外一个关注的焦点是谷歌如何管理摩托罗拉移动的成本。谷歌在2011年宣布斥资125亿美元收购摩托罗拉移动，该交易在今年年初已经完成。佩尔森表示，&ldquo;夏天时市场中曾有太多的顾虑。依据我们的观点，这只是短期的噪音。最大的担忧是每点击成本趋势和对摩托罗拉移动的整合，硬件业务如何影响谷歌的利润率。&rdquo;</p>\r\n<p >\r\n	每点击成本被投资者密切关注，它指的是广告主为每次谷歌广告点击付的钱，在夏天之前的几个季度，每点击成本一直在下降。一些人认为，下降预示着移动广告市场的利润率比传统在线广告低。不过，第二季度谷歌的每点击成本比前一季度上涨了1%。Canaccord Genuity的分析师迈克尔&middot;格雷厄姆（Michael Graham）表示，&ldquo;最大的担心是移动广告会不会真的发展放缓。&rdquo;</p>\r\n<p >\r\n	谷歌在8月表示，将对摩托罗拉移动裁员大约20%，为这家移动设备制造商进行瘦身。谷歌的这一做法也对提升公司股价做出了贡献。</p>\r\n<p >\r\n	对投资人而言，谷歌与苹果之间的业务竞争依然是一个问题。苹果最近决定在最新的iOS操作系统中用自己的地图服务替代谷歌地图，就是两家公司在移动计算市场竞争加剧的又一例证。上周五，苹果首席执行官蒂姆&middot;库克（Tim Cook）就苹果地图应用的质量向用户进行了道歉。</p>\r\n<p >\r\n	分析师格雷厄姆表示，&ldquo;苹果在获得硬件营收上做得相当出色，从历史来看，苹果没有关注将使用率货币化。不过从目前的情况来看，苹果想做一些尝试，让使用率更商业化一些。&rdquo;</p>\r\n<p >\r\n	来自：<a href="http://tech.qq.com/a/20121002/000016.htm"  target="_blank">腾讯科技</a></p>\r\n', '', 1, 1, '', '2012-03-01', '2012-10-20 10:29:51', '2012-12-24 14:50:25', '0000-00-00 00:00:00', 0, 21);
INSERT INTO `newsinfo` VALUES (22, 15, 0, 1, '高清！3D大图！谷歌地图再次迎来升级', '北京时间9月29日消息，在苹果CEO Tim Cook就糟糕的地图表现向客户致歉的时候，谷歌再次悄然对谷歌地图进行升级，它在其地图官方博客上宣布谷歌地图将加入更多的高清晰图像和45的3D视图。 现在用户可以在谷歌地图上看到地球上17个城市、112个国家和地区的高分辨率航空和卫星图像。此外，谷歌地图还为...', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120929/119_120929075345_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	北京时间<a href="http://techcrunch.com/2012/09/28/google-maps-now-with-more-high-res-satellite-and-45-aerial-imagery/"  target="_blank">9月29日消息</a>，在苹果CEO Tim Cook就糟糕的地图表现<a href="http://www.csdn.net/article/2012-09-29/2810502-letter-from-tim-cook-on-maps"  target="_blank">向客户致歉的时候</a>，谷歌再次悄然对谷歌地图进行升级，它在其地图官方博客上宣布谷歌地图将加入更多的高清晰图像和45&deg;的3D视图。</p>\r\n<p >\r\n	现在用户可以在谷歌地图上看到地球上17个城市、112个国家和地区的高分辨率航空和卫星图像。此外，谷歌地图还为51座城市提供全新的45&deg;3D地图，这些城市包括美国的37座城市和14个海外城市。</p>\r\n<p >\r\n	从效果图来看，这些利用高空搜集的航拍图片以及运用自动化技术得到的三维数据，让谷歌地图显示3D图像的能力得到大大提高。另外需要指出的时候，从谷歌官方博客公布的升级信息来看，此次谷歌地图升级的城市并非都是国际性大城市。从这我们也可以看出，谷歌打造的庞大、全新的3D地图服务，尚需更多的时间进一步全面覆盖。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120929/119_120929080317_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	谷歌地图海底街景</p>\r\n<p >\r\n	虽然此次升级范围不大，但笔者一直在想谷歌到底是有意还是无意？自从苹果宣布iOS 6将采用自家地图之后，谷歌地图变得越来越棒。本周早些时候，谷歌地图新推出了<a href="http://www.csdn.net/article/2012-09-26/2810353"  target="_blank">&ldquo;海底街景&rdquo;模式</a>，而今天谷歌地图的更新不仅带来了新的图像数据，也带来了全新的用户体验。</p>\r\n<p >\r\n	<strong>最后：</strong>在今年六月份谷歌3D地图发布会上，谷歌地图工程副总裁Brian McClendon曾表示，谷歌已经租用一队专业的飞机来为公司收集图片和数据，因此谷歌有信心并计划在今年年底实现对大城市高达3亿的用户实现3D地图覆盖。结合7月份谷歌对地图组成部分升级以及这次数据升级来看，笔者相信谷歌一定能实现这一承诺，另外鉴于苹果地图糟糕的表现，笔者也相信谷歌地图将借此再次征服用户。</p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 10:31:57', '2012-10-20 10:33:20', '0000-00-00 00:00:00', 0, 22);
INSERT INTO `newsinfo` VALUES (23, 5, 0, 1, '程序员不满订票难 自建12306开源项目组', '国庆前，12306 再次站到风口浪尖上，因为系统崩溃而买不到火车票的人们纷纷在网上吐槽。当程序员也订不到火车票，后果就不止吐槽那么简单。', '<p >\r\n	27 日下午 3:02，网友@caoz 发表了一条微博(见下图)，很快该微博就被转发了上万次：</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120930/89_120930090633_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	随后，各种专业吐槽和评论，让人们从专业角度了解到 12306 在技术层面上还有很多需要改进的地方。然而，程序员的脚步不止于此。同一天晚上 10 ：34，网友@大学001 发了这么一条微博：</p>\r\n<p >\r\n	为了程序猿可以顺利在 12306 预订到火车票，我建议成立 12306NG 开源项目组。有兴趣参加的请转起来！我负责筹资并以一个程序猿老兵名义奉献不止&hellip;</p>\r\n<p >\r\n	28 日凌晨 1:38，12306NG.org 注册成功，并接受报名。@大学001 表示：&ldquo;这将是项目组自己的网站，完全公益！我们将通过此网站发布项目所有成果，包括源代码、技术方案、各类文档等。此网站也是我们项目组讨论、协作、分享的地方。&rdquo;下午 5:07，12306NG 开源项目组官方微博发了第一条微博，表示项目组开始筹备。</p>\r\n<p >\r\n	今天，@12306NG开源项目组 发表微博，公布项目进度。现在，项目已吸纳 10 多名程序员，涵盖数据库、大并发、高性能、分布式架构等多领域。而项目范围日益清晰，技术框架渐现眉目。</p>\r\n<p >\r\n	@大学001 在新浪微博上的认证身份为京东商城副总裁李大学，但他声明：此事与京东无关，纯属个人行为。</p>\r\n<p >\r\n	现在，12306NG 开源项目组论坛上《【需求分析】12306NG 的需求总汇》一帖已有44 楼，用户活跃地讨论交流对于 12306 的设想。</p>\r\n<p >\r\n	李大学认为，在中国，社区力量能够挑战商业组织，中国经济已经从资源争夺转向技术驱动，属于程序员的时代来了。他希望程序员们能做到：不抱怨，去改变，从我做起。</p>\r\n<p >\r\n	NG 是 Next Generation 的意思。《建设一个靠谱的火车票网上订购系统》一文写道：&ldquo;如果我们能够设计建造一套，稳定而高效的铁路订票系统，不仅解决了中国老百姓的实际问题，而且在全球高科技业界，也是一大亮点，而且是贴着中国标签的前沿科技的亮点。&rdquo;现实也许是，最后铁道部并没采纳项目组的方案，但我们可以看到，正是由于网络的开放性，才能聚集民间智慧，推动社会进步。至少，参与其中的程序员能将受益于彼此的想法，而铁道部技术人员也能从中借鉴。最终受益的是老百姓。</p>\r\n<p >\r\n	&ldquo;中国程序猿们站起来，火车上的民工们才能坐下去！&rdquo;</p>\r\n<p >\r\n	&mdash;&mdash;@大学001</p>\r\n<p >\r\n	我想，很快，这一条将位于&ldquo;找程序员当男朋友的十大好处&rdquo;这一类排行榜榜首。</p>\r\n', '', 1, 1, '', '2012-06-02', '2012-10-20 10:33:23', '2012-10-31 14:46:47', '0000-00-00 00:00:00', 0, 23);
INSERT INTO `newsinfo` VALUES (24, 7, 0, 1, 'iPhone 5 Web流量超越Galaxy S III', '苹果iPhone 5问世之后就引起了不少争议，比如有人抨击它创新不足有人认为这是务实。无论怎样，iPhone5在销量上还是非常惊人的。近日，有统计机构表示，iPhone 5在网络流量方面已经超过三星推出的主打机型Galaxy S III。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<span style="font-family: 微软雅黑; "><img alt="" src="http://articles.csdn.net/uploads/allimg/121015/130_121015145555_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">北京时间10月15日消息，据<a href="http://allthingsd.com/20121012/three-weeks-in-and-iphone-5-already-dominating-the-mobile-web/?refcat=mobile"  target="_blank">AllthingsD报道</a>，iPhone 5刚刚上市销售不到三周，就已经在Web流量方面超过对手三星Galaxy S III，而后者已经上市销售三个月了。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">据互联网广告分析公司<a href="http://insights.chitika.com/2012/iphone-5-galaxy-s-iii-study/"  target="_blank">Chitika透露</a>，据数据统计显示，现在iPhone 5的Web流量份额已经超过了三星的Galaxy S III。</span></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<span style="font-family: 微软雅黑; "><img alt="" src="http://articles.csdn.net/uploads/allimg/121015/130_121015154502_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></span></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<span style="font-family: 微软雅黑; ">Galaxy S III问世以来，表现不俗</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">根据移动广告网络数据显示，Galaxy S III的销售非常强劲，在今年8月份美国本土的销售中，它超过了iPhone 4S。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">&ldquo;无论如何，iPhone 5在仅仅推出18天之后，就能在Web流量方面超过Galaxy S III，非常不错。&rdquo;Chitika表示，&ldquo;iPhone 5破纪录的销售数字、4G网络浏览速度对网络使用的促进这两点是最有可能造成iPhone 5超越Galaxy S III的原因。&rdquo;</span></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<span style="font-family: 微软雅黑; "><img alt="" src="http://articles.csdn.net/uploads/allimg/121015/130_121015154552_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></span></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<span style="font-family: 微软雅黑; ">iPhone 5虽然争论不止，但销售数字不容忽视</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">Chitika还指出，企业可能希望能够确保自己的广告同时登陆两个手机中，但这仍然是需要进行比较，iPhone 5的表现要更好，&ldquo;iPhone用户是最活跃的，最适合移动网络营销的用户群体。&rdquo;</span></p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 10:37:10', '2012-10-20 10:40:04', '0000-00-00 00:00:00', 0, 24);
INSERT INTO `newsinfo` VALUES (25, 15, 0, 1, 'Adobe Reader引入云存储，更新获Google Play奖金', '10月15日，Adobe公布了同步更新Android和iOS平台上的Reader软件的一些细节。其中最引人注意的是，增加了将文件存储到Acrobat.com的云服务。其允许用户查看和编辑文件，在移动终端和桌面间无缝移动。', '<p >\r\n	【CSDN云计算快讯】10月15日，Adobe公布了同步更新Android和iOS平台上的Reader软件的一些细节。其中最引人注意的是，增加了将文件存储到Acrobat.com的云服务。其允许用户查看和编辑文件，在移动终端和桌面间无缝移动。比如Google Docs，Google Drive等。此外，Reader Mobile还获得了FormsCentral的数据支持，改进了选择和突出亚洲文本设计，以及移动文件权限管理和安全水印支持。此次更新在Android平台上还有一个大的优势，就是在使用这些软件新服务的时候还能进行通过Google Play获得一定的奖金。iPhone用户，则需要等待苹果的批准，才能在App Store中得到更新。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121016/139_121016155533_1_lit.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	原文链接：<a href="http://www.engadget.com/2012/10/15/adobe-reader-update-for-android-and-ios-adds-cloud-storage/"  target="_blank">adobe-reade</a>r-<a href="http://www.engadget.com/2012/10/15/adobe-reader-update-for-android-and-ios-adds-cloud-storage/" >update-for-android-and-ios</a></p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 10:40:09', '2012-10-20 10:43:02', '0000-00-00 00:00:00', 0, 25);
INSERT INTO `newsinfo` VALUES (26, 15, 0, 1, '世界20强之一—NCAR天气超级计算机今日终上线', 'IBM为美大气研究中心研制的1.5千万亿次的超级计算机今日上线，该超级计算机将用于气象研究领域，以弥补美国大气研究中心在超级计算机的落后低位。该计算机将有足够的力量跻身世界前20，并大量使用可持续能源。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121016/155I02921-0.jpg" style="vertical-align: middle; border: none; " /></p>\r\n<p >\r\n	怀俄明州今天打开了它的大门，释放出了一个强大的计算机&mdash;位于夏延的NCAR怀俄明超级计算中心（NCAR-Wyoming Supercomputing Center），科技人员可以利用该计算机开展气候变化研究。</p>\r\n<p >\r\n	该超级计算机由IBM研制，性能可以达到每秒1.6千万亿次浮点计算，将有足够的力量跻身世界前20名。其主要的组件包括一个巨大的中央文件和数据存储系统，一个高性能计算集群和一个可视化数据的系统。</p>\r\n<p >\r\n	这个超级计算机将帮助人们改变了解自然世界的方式，为社会提供巨大的利益。它可以更好地理解龙卷风和飓风，或破译引起地磁暴的力量，黄石超级计算机和NWSC将带来更好的预测，并更好地保护公众的经济。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121016/155I01636-1.jpg" style="vertical-align: middle; border: none; " /></p>\r\n<p >\r\n	NCAR怀俄明超级计算中心的设计和施工是&ldquo;面向未来&rdquo;的，提供灵活的扩展性，以便能够适应超级计算技术的发展。</p>\r\n<p >\r\n	位于夏延北商业区的153000平方英尺的数据中心将向美国科学家提供先进的计算服务。大多数研究人员将通过互联网与远程控制中心进行交互。</p>\r\n<p >\r\n	NCAR设施因它的可持续设计被LEED授予了一个黄金认证。该中心充分利用夏延的海拔和凉爽、干燥的气候，它全年使用新鲜的空气来冷却服务器，显著地减少了设备的能源消耗。</p>\r\n<p >\r\n	中心至少10%的能源是由附近的Happy Jack风力发电场提供的。NCAR表示在未来将继续探索可再生能源，提高可再生能源的使用比例。</p>\r\n<p >\r\n	本文来自：<a href="http://www.datacenterknowledge.com/archives/2012/10/15/ncar-weather-supercomputer-comes-online-today/"  target="_blank">DCK</a></p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 11:58:28', '2012-10-20 11:59:15', '0000-00-00 00:00:00', 0, 26);
INSERT INTO `newsinfo` VALUES (27, 7, 0, 1, 'Google TV再次升级 新增购买租赁电影电视功能', '今日，谷歌升级了Google TV，用户可从Google Play商店中购买电影、电视节目和音乐观看。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121009/89_121009112346_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">今日起，Google TV用户就可以从Google Play商店中购买或租赁电影、电视节目和音乐，然后同步到自己的Google TV上观看。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">据报告显示，Google Play商店拥有超过10万个来自不同电影制片公司的视频内容，其中包括六个主流电影制片公司和众多小型制片公司。最近，谷歌与二十世界福克斯电影制片公司（20th Century Fox）合作，新增600个视频内容，包括最新上映的一些电影，如普罗米修斯。用户可以通过移动设备或是Google TV来观看这些购买或租赁的视频。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">无论用户使用Google TV服务是通过谷歌机顶盒或是Goolge TV，都可以从Google TV或电影类应用找到这些内容。而且Goolge Play还提供推荐功能，推荐来自不同渠道的视频节目，甚至包括其竞争对手亚马逊河Netflix。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">今天，谷歌发表博文称，&ldquo;Google Play是一个给用户去寻找、分享自己最喜爱的内容的场所。还可从YouTube、Tv&amp;Movies、搜索和Chrome网络电视为Google TV添加数以百计的娱乐项目。&rdquo;除此之外，还为开发者额外提供自动更新、订阅计费以及智能应用更新功能。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">谷歌认为Google TV是一个尚未成功的平台。早期，由于该设备销售量处于低谷，让硬件制造商大受打击。同时，Google TV和电影类应用也没有被用户接受，用户长期抱怨出现BUG并且受地理限制，影响可用性和功能。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">但今天，用户终于等到了期待已久的更新，谷歌采取购买和租赁内容的战略方针，确实是明智之举。这将帮他们突破低靡现状，但迎来的仍是一条阻碍重重的发展之路。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">原文链接：</span><a href="http://www.digitaltrends.com/home-theater/google-play-comes-to-google-tv/"  target="_blank"><span style="font-family: 微软雅黑; ">digitaltrends</span></a></p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 11:59:19', '2012-10-20 12:00:57', '0000-00-00 00:00:00', 0, 27);
INSERT INTO `newsinfo` VALUES (28, 5, 0, 1, '苹果、Facebook、谷歌、微软、Opera等科技巨头共推新Web标准资源平台', 'W3C最近推出了一个新网站，该网站成员公司目前囊括了苹果、Adobe、Facebook、谷歌、惠普、微软、Mozilla、诺基亚以及Opera等众多科技界巨头。该网站推出形式集合了Wiki、论坛及讨论组等，是一个新的Web标准资源平台。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121009/130_121009073357_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">北京时间10月9日消息，为了给所有开放Web技术创建&ldquo;权威资源&rdquo;，包括苹果、Adobe、Facebook、谷歌、惠普、微软、Mozilla、诺基亚以及Opera在内的众多科技界巨头已经加入W3C创建了一个名为&ldquo;</span><a href="http://www1.webplatform.org/"  target="_blank"><span style="font-family: 微软雅黑; ">Web Platform</span></a><span style="font-family: 微软雅黑; ">&rdquo;的新网站。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">这个新网站基于最新的HTML5、CSS3及其它Web标准来服务最重要的、最新的以及最有质量信息的一个独立资源，为技术领域提供web开发技巧及最佳实践参考资料。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">根据W3C信息显示，该网站也将显示个别技术的标准化及跨浏览器实现状态。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">该网站以Wiki的形式存在，允许员工代表每个成员公司添加他们自己的更新不断完善网站。该项目已经获得资助，并且已经有一个团队负责维护、保证网站良好运行（W3C的角色为网站策划人）。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">用户可以在</span><a href="http://talk.webplatform.org/forums/"  target="_blank"><span style="font-family: 微软雅黑; ">论坛</span></a><span style="font-family: 微软雅黑; ">中进行互动，还可以在网站的</span><a href="http://talk.webplatform.org/chat/"  target="_blank"><span style="font-family: 微软雅黑; ">特定IRC频道</span></a><span style="font-family: 微软雅黑; ">讨论自己的项目及编码技巧。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">所有发布到 Web Platform网站的文档都将遵循知识共享（creative commons）许可。虽然最初的内容都是由成员公司所提供，网站访问中也将会被鼓励利用Wiki分享代码示例、技巧以及其他相关信息。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">就如</span><a href="http://blogs.adobe.com/digitalmedia/tag/web-platform/"  target="_blank"><span style="font-family: 微软雅黑; ">Adobe所说</span></a><span style="font-family: 微软雅黑; ">：&ldquo;现在是时候进入网络社区帮助创建和维护最全面、最权威的Web技术参考资料了。所以，去瞧瞧，并开始做贡献吧！&rdquo;</span></p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 11:59:22', '2012-10-20 12:02:08', '0000-00-00 00:00:00', 0, 28);
INSERT INTO `newsinfo` VALUES (31, 7, 0, 1, 'Instagram两周年：1亿注册用户分享50亿张照片', 'Instagram作为移动互联网领域最火的应用之一不知不觉已经诞生了两年，仅用两年时间，用户数量已经达到1亿之多，分享图片数量已经达到了50亿张。并且，Instagram被Facebook以10亿美元（现金加股票支付方式）收购，在科技界引起了轩然大波。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/121008/130_121008090417_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">两年以前，照片分享应用Instagram出现在移动互联网领域，并迅速席卷整个互联网。两年之后的现在，Instagram已经拥有了超过1亿注册用户，并拥有50亿张上传的照片。并且被Facebook以3亿美元现金加2300万股票的价格收购。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">在Instagram的又一个周年庆时期，我们和乐意来看看这个照片分享应用在这一行业中是如何幸存下来的，它的竞争对手多数已不复存在：PicPlz今年年初已经关闭、Hipstamatic几乎每个人都下岗了。当然，也有很多新的竞争者如雨后春笋般涌出，甚至由Instagram促成的一套生态系统已经逐渐形成，看看这些名单就知道了：Nitrogram、Keepsy、Postagram、Hatchcraft以及Instacanvas等。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">去年，创始人Kevin Systorm在接受纽约时报采访时表示，他认为Instagram生态系统类似于繁荣在Twitter与Facebook上的一些东西一样。他还认为，这些第三方应用将&ldquo;增强Instagram的势头&rdquo;，并会带来新的影响，就像FarmVille（类似开心农场一样的虚拟经营类游戏）对Facebook的影响一样。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">时间回到几个月前，Mark Zuckerberg宣布将会以10亿美元现金加股票的方式收购Instagram，在科技界中引起了轩然大波。而差不多同时，Facebook也推出了自己的照片分享应用，这让许多用户很困惑，但人们仍然坚持使用Instagram，并且Instagram越来越流行。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">就在上个月，这笔收购正式获得通过，Instagram也正式成为Facebook的一部分。目前已经有50亿张照片被上传到Instagram上&mdash;&mdash;这是一个了不起的壮举。这个数字意味着平均每天有超过500万张照片被传到应用上，但这个数字与Facebook的3亿张每天相比，Instagram仍有很长的路需要走。但是，对于一个运行用户用手机拍照、进行处理并能够上传到社交网络进行分享的应用来讲，拥有1亿注册用户并保持每月1000万用户增长率，表现已经非常优秀。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">一些报道表明Instagram在继续保持增长：8月份，AllthingD报道，根据comScore数据显示，在美国，智能手机用户访问Instagram的频率及时长已经超过Twitter。这份数据显示，Instagram每天拥有730万活跃用户，没人花费257分钟在该应用上。与此同时，Twitter每天拥有690万活跃用户，每用户花费时间为170分钟。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">明年的Instagram会是什么样的？目前他们已经开始完善Instagram并将推出3.0版本，新版本的Instagram具有全新的照片地图功能，这样用户将能够看到自己的照片带有地理标签数据。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">无论怎样，Instagram证明了自己。我们也希望在国内能够看到Instagram式的产品，Instagram式的成功。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">本文来自：</span><a href="http://thenextweb.com/insider/2012/10/06/happy-second-birthday-instagram/"  target="_blank"><span style="font-family: 微软雅黑; ">The Next Web</span></a></p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 12:05:01', '2012-10-20 12:05:48', '0000-00-00 00:00:00', 0, 31);
INSERT INTO `newsinfo` VALUES (32, 5, 0, 1, '天才黑客Kim Dotcom：Megaupload即将卷土重来', '今年1月，美国司法部门强制关闭了美国著名在线网络硬盘服务商Megaupload。但其创始人，著名天才黑客Kim Dotcom日前称新版Megaupload编码已完成90%，马上就能面世了。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120924/155_120924155225_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	今年一月美国政府宣布关闭著名在线网络硬盘服务商Megaupload，但其创始人 Kim Dotcom并没有就此&ldquo;金盘洗手&rdquo;。据国外媒体报道，这位天才黑客正在蓄势待发，以期实现完美的反戈一击。新的Megaupload 编码工作已完成90%，服务器也已准备就绪，最重要的是，连投资人也跃跃欲试了。如此看来，我们离新版Megaupload&ldquo;再现江湖&rdquo;的日子已经不远了。</p>\r\n<p >\r\n	Megaupload被美国政府强制关闭的消息曾引发网络界的愤怒，美国黑客组织Anonymous为了表达愤怒曾一连攻击了美国司法部、美国电影协会、环球音乐集团等站点。Megaupload是世界上最大的网站之一，日访问量曾达5000万。今年一月美国政府不仅以拥有大量的侵犯著作权文件为由关闭了Megaupload，而且逮捕了网站的几位主要负责人，其中就包括Kim Dotcom。Megaupload虽深陷泥潭，但案件审理进展缓慢。Kim Dotcom虽在新西兰被捕，但2012年8月新西兰法院以证据不足为由，拒绝美国对引渡Kim Dotcom的要求。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120924/155_120924155912_1.png" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	现在Kim Dotcom又要卷土重来了。之前他就对外宣成Megaupload会回来的，目前事情的进展比预想快得多。Kim Dotcom在Twitter上表示，新网站的编码已完成90%，其他准备工作也已就绪。虽然Megaupload的案子还没结，但投资人和合作伙伴似乎对此不以为意。</p>\r\n<p >\r\n	Kim Dotcom近日一直在Twitter上为新的Megaupload造势，他表示新版Megaupload会比之前被关闭的Megaupload服务更好、规模更大。按Kim Dotcom的说法，新版Megaupload不仅仅是个文件分享平台，看来Kim Dotcom野心不小。他表示：</p>\r\n<blockquote style="margin: 0px 10px 0px 30px; padding: 0px 0px 0px 10px; list-style: none;  border-left-width: 4px; border-left-style: solid; border-left-color: rgb(221, 221, 221); color: rgb(85, 85, 85); ">\r\n	<p >\r\n		美国政府找错人了，我将颠覆整个世界。将权力返还给民众，我们要的是自由不要束缚。</p>\r\n</blockquote>\r\n<p >\r\n	来源：<a href="http://torrentfreak.com/megaupload-readies-for-comeback-code-90-done-120923/"  target="_blank">TorrentFreak</a></p>\r\n', '', 1, 1, '', '2012-10-20', '2012-10-20 12:05:51', '2012-12-24 14:50:17', '0000-00-00 00:00:00', 0, 30);
INSERT INTO `newsinfo` VALUES (33, 5, 0, 1, '挖墙脚：苹果招募谷歌地图员工研发iOS地图', '苹果iOS 6地图服务自上线以来，各种抨击声不断，苹果方面表示希望用户能够给苹果一些时间，他们会努力完善地图服务。最近，有消息称苹果公司目前正在试图招募谷歌地图员工帮助自己开发iOS地图。并且已经有部分谷歌地图员工加入苹果。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120924/130_120924082228_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">北京时间9月24日消息，据<a href="http://techcrunch.com/2012/09/23/source-apple-aggressively-recruiting-ex-google-maps-staff-to-build-out-ios-maps/"  target="_blank">TechCrunch报道</a>，有消息称苹果公司目前正在试图招募谷歌地图员工帮助自己开发iOS地图。而面对苹果抛来的橄榄枝，谷歌地图的一些员工也有所动心，有些员工觉得这代表为苹果开发新产品的机会，而不再是只在为谷歌地图做些琐碎的更新。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">一名为提高谷歌地图欧洲覆盖率进行街景及第三方许可数据整合的谷歌合作商透露，在谷歌将注意力移向室内导航时，许多事情就变的不是那么有趣，不少工作人员就开始寻找其他工作机会。而这对于苹果来说，是绝好的机会。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">一名谷歌地图员工透露：</span></p>\r\n<blockquote style="margin: 0px 10px 0px 30px; padding: 0px 0px 0px 10px; list-style: none;  border-left-width: 4px; border-left-style: solid; border-left-color: rgb(221, 221, 221); color: rgb(85, 85, 85); ">\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">我身边的许多同事开始离职，有的是合同结束，有的是自己选择离开。一位同事了解了周围的GIS方面的工作，在苹果的一名招聘人员联系他后，他最终选择了苹果。他听到一些关于苹果打算开发自己的地图平台的传闻，而他有在谷歌的工作经验，所以很容易就被聘用了。苹果用自己的方式将他招募了，他现在是苹果的一名GIS分析师。</span></p>\r\n	<p >\r\n		<span style="font-family: 微软雅黑; ">另一名同事是谷歌地图的一个项目负责人，在合同结束之后选择了离开，最近，一名苹果招聘人员正在积极联系他。职位听说是产品开发经理，薪酬是85000美元以上及其他必要的费用。目前他已经通过了两轮面试，入职似乎是板上钉钉的事情了。</span></p>\r\n</blockquote>\r\n<p >\r\n	<span style="font-family: 微软雅黑; ">根据苹果公司公布的一份职位清单显示，苹果正在积极招募更多的人才加入他们的iOS地图团队。虽然苹果地图服务与谷歌地图服务之间有很大的差距，苹果有很长的路要走，但苹果建立真正的地图服务平台，与谷歌形成竞争是很有可能的。</span></p>\r\n<p >\r\n	<span style="font-family: 微软雅黑; "><a href="http://www.csdn.net/article/2012-09-19/2810129-apples-maps-risk"  target="_blank">苹果iOS 6的地图服务自公布以来一直饱受诟病</a>，如果苹果希望建立一个强大的地图服务平台来对抗谷歌，那么他们有很多工作需要努力，所以他们去招募谷歌地图前员工及现员工并不令人惊讶。</span></p>\r\n', '', 1, 1, '', '2012-03-16', '2012-10-20 12:08:57', '2012-10-31 14:45:19', '0000-00-00 00:00:00', 0, 33);
INSERT INTO `newsinfo` VALUES (34, 7, 0, 1, '可离线阅读 维基百科增电子书导出功能', '据TNW报道，最近维基百科英文版增加了一个新功能——EPUB电子书导出功能。该功能使得用户可以整理和收藏维基百科中的文章，并生成一个免费的电子书，供用户在移动设备上阅读。据悉，维基百科除了支持EPUB外，导出的电子书还支持格式PDF和OpenOffice。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120918/119_120918143449_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	北京时间<a href="http://thenextweb.com/mobile/2012/09/18/wikimedia-enables-ebook-export-feature-wikipedia-offline-reading-pleasures/"  target="_blank">9月18日消息</a>，Wikimedia今天宣布，它已在维基百科上启用了一个新的功能：EPUB导出功能，这使得用户可以整理和收藏维基百科中的文章，并生成一个免费的电子书，供用户在移动设备上阅读。不过目前，这个功能仅限于英文版网站。</p>\r\n<p >\r\n	那么，用户如何创建自己的个人电子书呢？首先点击位于维基百科左栏&ldquo;打印导出&rdquo;下&ldquo;创建一本书&rdquo;选项，从那里你可以编辑文章或某个完整的文章类别变成个人收藏，然后将它们导出，导出的电子书支持格式包括PDF、EPUB和OpenOffice。</p>\r\n<p >\r\n	据悉，维基百科EPUB导出功能是由brainbot technologies公司开发，另外维基百科还和德国一家公司PediaPress合作推出图书业务，用户可自行选取维基百科的网站内容并打印成图书，为此Wikimedia称，PediaPress是维基百科按需印刷的官方合作伙伴。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120918/119_120918144618_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p >\r\n	或许有的人会比较疑惑，仍然想知道维基百科为什么要支持制作电子书或印刷书籍。有人就此指出，维基百科此举是为了能够离线阅读！是的，虽然目前大多数移动设备可以时时刻刻地连接到互联网，但是在某些国家和某些情况下，维基百科依然和部分用户隔绝。</p>\r\n<p >\r\n	Wikimedia基金会移动部门主管Tomasz Finc称，EPUB文件在脱机环境下使用很方便，用户几乎可以在任何一个平台上如同打开普通文件一样打开EPUB。</p>\r\n<p >\r\n	<strong>结束语</strong></p>\r\n<p >\r\n	就个人觉得，未来维基百科中文版如果可以支持导出EPUB电子书，对于用户而言这是很便捷的举措，用户可以在飞机上、地铁里离线阅读某类文章。另外，遭某些国家封锁的敏感词条，用户也可方便导出在其它设备上离线阅读。</p>\r\n', '', 1, 1, '', '2012-11-26', '2012-10-20 12:09:29', '2012-10-31 14:44:58', '0000-00-00 00:00:00', 0, 34);
INSERT INTO `newsinfo` VALUES (35, 20, 0, 1, '王维送出的录音', '', '姓名：王维<br />\r\n<br />\r\n要送給的人：李白<br />\r\n<br />\r\n祝福语：xxxxxxx<br />\r\n<br />\r\n', '', 1, 1, '20140411_093205.mp3', '2012-01-11', '2012-10-20 12:10:40', '2014-04-11 17:51:46', '0000-00-00 00:00:00', 0, 35);
INSERT INTO `newsinfo` VALUES (39, 7, 0, 1, '西门子Wi-Fi定位技术 让你室内不再迷路', '在机场、商场等一些比较大的室内场合迷路了怎么办？没关系，西门子基于Wi-Fi指纹的高精度定位技术——Wi-Fi Positioning，让你室内不再迷路。相比传统的导航，西门子的技术不仅不需要担心信号遮挡问题，导航的精确度和响应时间都得到很大提升。', '<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120914/119_120914162703_1.JPG" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	西门子Wi-Fi Positioning定位技术</p>\r\n<p >\r\n	北京时间9月14日消息，虽然上周在南京举办的中国国际软件产品和信息服务博览会早已完美落幕，但展会各种高新技术所带来的震撼，仍然让人难以忘却。在这些高新技术中，让&ldquo;路痴&rdquo;记者最感兴趣的莫不过是西门子基于Wi-Fi指纹的高精度定位技术&mdash;&mdash;Wi-Fi Positioning。</p>\r\n<p >\r\n	众人皆知，包括谷歌和百度室内导航地图主要是基于全球定位系统GPS、传统的Wi-Fi和手机信号发射塔来实现导航，GPS虽然是迄今为止最为成功的定位系统，但每次GPS完成定位都需要捕获至少4颗在轨卫星的信号，初始化时间长不说，在一些室内和高楼密布的城区等地方，信号遮挡严重，可用性也受到严重制约。</p>\r\n<p >\r\n	另外传统的Wi-Fi定位技术对硬件有特殊要求，需要对额外的硬件设备或对在网Wi-Fi AP进行升级，以保证时间和角度的精确同步与测量，这使得升级费用比较大，维护也很困难。而依靠手机信号发射塔导航的缺点就更不用说了，精确度太差。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120914/119_120914162413_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	Wi-Fi定位系统整体架构</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120914/119_120914162808_1.jpg" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	终端应用架构</p>\r\n<p >\r\n	记者在西门子展台上了解到，基于Wi-Fi指纹的高精度定位技术&mdash;&mdash;Wi-Fi Postitioning则没有上述问题。它使用802.11b/g/n标准，在不需要增加额外硬件设备的情况下（如读卡器、天线等），就可以利用现有Wi-Fi无线网络实现导航。据西门子通信与传媒技术部门项目经理李晨介绍，他们采用了领先的定位算法，使得室内定位精度可以达到2至3米，室外定位精度达到5至10米（室外支持GPS）。</p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	<img alt="" src="http://articles.csdn.net/uploads/allimg/120914/119_120914162640_1.JPG" style="vertical-align: middle; border: 0px solid; cursor: pointer; " /></p>\r\n<p style="margin: 0px 0px 1.5em; padding: 0px; list-style: none;   text-align: center; ">\r\n	演示设备</p>\r\n<p >\r\n	李晨继续介绍称，他们还改进了定位搜索引擎，使得定位响应时间小于1秒。另外为了方便使用，西门子Wi-Fi Postitioning定位技术还整合了终端应用，用户可以基于手机和平板电脑向定位服务器上报扫描结果，并从定位服务器获取位置信息。李晨表示，西门子定位技术采用开放式体系结构设计，便于定制化开发，灵活的整合第三方应用。</p>\r\n<p >\r\n	关于应用前景，除了实现室内导航外，李晨自豪地对记者表示，该技术可以运用于信息获取类应用、营销类应用、便民类和SNS社交网络类应用。具体比如，可通过移动终端获取对商户评价信息、基于位置优惠信息推送和停车场导引等。</p>\r\n<p >\r\n	此外，这位西门子通信与传媒技术部门项目经理还指出，Wi-Fi Postitioning技术还可以采集指纹，对个人进行精确定位，这使得一些生产企业可以进行人员考勤和流动定位等。</p>\r\n<p >\r\n	写到这，记者不禁想起之前的一篇报道，芬兰工程师利用室内地球磁场波动做了智能手机应用来进行室内导航，他们利用每一座建筑的地板和走廊能够构建一个独特磁场干扰的原理，通过测量确定一个位置生成地图，来实现室内导航。相比较西门子Wi-Fi Postitioning的定位技术，各位网友，你们觉得哪个更有应用前景呢？</p>\r\n', '', 1, 1, '', '2012-05-21', '2012-10-20 12:15:25', '2012-12-24 14:49:57', '0000-00-00 00:00:00', 0, 32);

-- --------------------------------------------------------

-- 
-- 表的结构 `newspic`
-- 

CREATE TABLE `newspic` (
  `id_newspic` int(11) NOT NULL auto_increment,
  `id_newsinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_newspic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `newspic`
-- 


-- --------------------------------------------------------

-- 
-- 表的结构 `pageset`
-- 

CREATE TABLE `pageset` (
  `id_pageset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` text NOT NULL,
  `pagetitle` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `location` int(2) NOT NULL default '1',
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_pageset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- 导出表中的数据 `pageset`
-- 

INSERT INTO `pageset` VALUES (1, 1, '本月打折', '', '', '', '', '', '<p>\r\n	<br />\r\n	经过不断的试验，努力的改正错误，我们的客户在过去的几年逐步的增长。</p>\r\n<p>\r\n	公司拥有领先的技术和经验，目前是引领该行业的先锋企业。经过不断的试验，努力的改正错误，我们的客户在过去的几年逐步的增长。上海信息科技有限公司是一家专注互联网技术服务的高新科技公司，公司成立以来已经在众多领域取得了骄人的成绩，同时我们与国际、国内众多ISP服务商、软件开发商及IT服务企业结为战略联盟和合作伙伴。<br />\r\n	<br />\r\n	科技的服务范围包括：互联网基础应用、网站建设、企事业信息管理系统、数据库开发、B/S软件研发等。<br />\r\n	<br />\r\n	我们的互联网技术服务范围已经涵盖互联网所涉及的全部服务与技术支持，如域名注册、企业邮局、邮件群发、网站空间、数据库、服务器租用托管业务、网站建设、营运咨询、管理维护等等。<br />\r\n	科技的服务范围包括：互联网基础应用、网站建设、企事业信息管理系统、数据库开发、B/S软件研发等。<br />\r\n	<br />\r\n	我们的互联网技术服务范围已经涵盖互联网所涉及的全部服务与技术支持，如域名注册、企业邮局、邮件群发、网站空间、数据库、服务器租用托管业务、网站建设、营运咨询、管理维护等等。<br />\r\n	<br />\r\n	科技专注以互联网领域的信息技术服务为公司的主要发展之路,使用户在享受信息科技发展最新成果的同时不断获得最大的收益。 一个能从别人的观念来看事情，能了解别人心灵活的人，永远不必为自己的前途担心。</p>\r\n<br />\r\n<br />\r\n', 0, 8);
INSERT INTO `pageset` VALUES (2, 1, '最新活动', '', '', '新闻动态', '', '', '', 2, 10);
INSERT INTO `pageset` VALUES (3, 1, '发展历程', '公司销售网络覆盖若干省份，在多个城市设有办事处。', '', '发展历程', '', '发展历程', '<p>\r\n	公司销售网络覆盖若干省份，在多个城市设有办事处。多年来，公司始终坚持关爱生命、呵护健康的企业理念，秉承质量第一、服务至上的经营宗旨，为用户提供优秀的产品和服务。<br />\r\n	<br />\r\n	2005年2月 成立团队<br />\r\n	<br />\r\n	2006年3月 成为商务中国最高级别代理-伙伴代理<br />\r\n	<br />\r\n	2006年8月 成为新网互联最高级别代理-合作伙伴<br />\r\n	<br />\r\n	2007年4月 与网宿科技股份有限公司展开合作<br />\r\n	<br />\r\n	2008年7月 与深圳市润迅移动通信服务有限公司展开合作<br />\r\n	<br />\r\n	2009年12月 上海腾岩科技信息有限公司成立<br />\r\n	<br />\r\n	2010年9月 经过多年调试和完善，正式推出网站后台管理系统<br />\r\n	<br />\r\n	2011年10月 成功代理网易 (NASDAQ: NTES)专业企业邮局<br />\r\n	<br />\r\n	2011年11月 与慧新信息科技有限公司展开合作<br />\r\n	<br />\r\n	2011年12月 成为香港联亚国际电讯有限公司最高级别代理-合作伙伴<br />\r\n	<br />\r\n	2012年2月 &nbsp;签约百度 创新未来<br />\r\n	<br />\r\n	2012年10月 成为中国万网（HICHINA）核心代理</p>\r\n', 3, 1);
INSERT INTO `pageset` VALUES (4, 1, '本店特色', '天的人们，已经非常了解自我的需求，其价值不在于每天的享用，更在于永久的魅力。', '', '核心理念', '', '', '<p>\r\n	正宗香港丝袜奶茶、柠檬红/绿茶、泰国咸柠檬七/蜜、香浓椰浆红豆冰、进口柠檬利宾纳 手磨蓝山咖啡、 意大利浓缩咖啡、卡布基诺咖啡、摩卡朱古力咖<br />\r\n	<br />\r\n	啡、拿铁（原味/焦糖） 鲜榨苹果甘笋汁、百香原味味果汁、蓝莓原味果汁、摩卡咖啡冰沙、 鲜果冰沙 鲜果雪糕、 杂果宾治、西柚玫瑰桃花茶（壶）、红枣玫瑰花茶、新鲜水果沙律 香脆多士、 法国蒜香包、芝士蛋三文治、餐肉蛋三文治、公司三文治、芝士焗肠仔 正宗香港丝袜奶茶、柠檬红/绿茶、泰国咸柠檬七/蜜、香浓椰浆红豆冰、进口柠檬利宾纳 手磨蓝山咖啡、 意大利浓缩咖啡、卡布基诺咖啡、摩卡朱古力咖啡、拿铁（原味/焦糖） 鲜榨苹果甘笋汁、百香原味味果<br />\r\n	<br />\r\n	汁、蓝莓原味果汁、摩卡咖啡冰沙、 鲜果冰沙 鲜果雪糕、 杂果宾治、西柚玫瑰桃花茶（壶）、红枣玫瑰花茶、新鲜水果沙律 香脆多士、 法国蒜香包、芝士蛋三文治、餐肉蛋三文治、公司三文治、芝士焗肠仔<br />\r\n	<br />\r\n	咖啡是意大利浓缩咖啡与牛奶的经典混合，意大利人也很喜欢把拿铁作为早餐的饮料。<br />\r\n	<br />\r\n	意大利人早晨的厨房里，照得到阳光的炉子上通常会同时煮着咖啡和牛奶。&quot;拿铁&quot;是意大利文&quot;Latte&quot;的译音，拿铁咖啡(CoffeeLatte)是花式咖啡的一种。咖啡与牛奶交融的极至之作，义式拿铁咖啡纯为牛奶加咖啡，美式拿铁则将牛奶替换成奶泡，本地的拿铁多为此种。<br />\r\n	<br />\r\n	绿茶、泰国咸柠檬七/蜜、香浓椰浆红豆冰、进口柠檬利宾纳 手磨蓝山咖啡、 意大利浓缩咖啡、卡布基诺咖啡、摩卡朱古力咖啡、拿铁（原味/焦糖） 鲜榨苹果甘笋汁、百香原味味果<br />\r\n	&nbsp;</p>\r\n', 0, 11);
INSERT INTO `pageset` VALUES (5, 1, '合作伙伴', '具有一流品牌服务能力的国际性强势企业，真正创造行业奇迹！', '', '合作伙伴－腾岩科技', '', '共创未来', '<p>\r\n	<strong>中国万网</strong></p>\r\n<p>\r\n	是国内首家通过ISO9001质量管理体系认证的互联网企业，并获得了AAA级（最高级别）信用等级评价，具有国家信息安全应急响应资质。中国万网是世界互联网名称与数字地址分配机构（ICANN）在中国的首批域名注册服务商，重要的合作伙伴。中国万网连续数年蝉联中国互联网络信息中心（CNNIC）五星级注册服务机构美誉。中国万网得到政府和社会的广泛认可，历年来获得表彰奖励达几百项。<br />\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>联亚国际电讯有限公司联亚国际电讯有限公司</strong></p>\r\n<p>\r\n	（ACT INTERNATIONAL TELECOM LIMITED，以下简称：联亚国际）是一家著名的香港电讯企业。 2006年以来，为海内外客户提供包括语音增值业务、数据专线及互联网服务等各种电信增值业务，客户遍及欧洲、北美、台湾及东南亚等地。 经过多年的成功运营，联亚国际不仅积累了丰富的网络层交换及互联网维护经验，还汇聚了多位国内顶尖的linux/freeBSD/unix经验的系统工程师、微软认证工程师和网络安全技术人才，也包括一批拥有丰富行业经验和较高威望的专业人士。<br />\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>北京新网互联科技有限公司</strong></p>\r\n<p>\r\n	历经8年坚实发展，北京新网互联科技有限公司致力于为企业提供一流的综合性网络营销服务，不断推出的基于互联网技术的创新应用产品，力求在为客户和合作伙伴创造价值的过程中实现自身价值。</p>\r\n<p>\r\n	新网互联在北京、上海、广州、深圳、南京、杭州、成都、厦门以及青岛、沈阳、西安、武汉、郑州、重庆等全国主要城市均设有分支机构，此外新网互联在全国有累计超过万家合作伙伴，间接或直接提供的服务已经遍及全国。</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 3, 2);
INSERT INTO `pageset` VALUES (6, 1, '联系我们', '', '', '', '', '', '<p>\r\n	<strong>吉麗嘉多物资有限公司</strong></p>\r\n<p>\r\n	江苏省金坛市直溪镇工业区亚细路18号</p>\r\n<p>\r\n	<strong>电话</strong></p>\r\n<p>\r\n	86-519-82447866</p>\r\n<p>\r\n	<strong>电邮</strong></p>\r\n<p>\r\n	luisagao@unimasa.cn</p>', 2, 6);
INSERT INTO `pageset` VALUES (8, 1, '团队介绍', '', '', '', '', '', '<p>\r\n	<br />\r\n	没有完美的个人，只有完美的团队团队是由一群有缺点的人构成，因为没有哪一个个体是完美的，只有总体搭配起来，才能够发挥出团队当中的最大力量。</p>\r\n<p>\r\n	各种不同人才的搭配，才会实现一个完美的团队。</p>\r\n<p>\r\n	所以每一个人都应该明确，在团队当中应该扮演一个什么样的位置，你在这个团队能够起到一个多大的作用。大雁南飞的时候，如果只有一只大雁，想飞到另外一个地方，基本上是达不到的，中途就可能会失去生命，它可能忍受不了飞行的孤独，它也可能忍受不了寒风的侵袭，它只有形成一个完美的团队，才能保证每一个成员都可以完成南迁的飞行目标。当雁的团队降落的时候，有的寻找食物，有的负责站岗放哨，每只大雁有不同的分工，所以团队能够产生一个神奇的力量，分力之和大于合力。&nbsp;</p>\r\n<p>\r\n	成员与团队的思想和观念保持一致时，会有一个上升的效果当一只大雁悄然离开这个团队的时候，所有的成员就要寻找它，这就会影响到团队的整体的进度，造成由于这个成员的加入而导致团队放慢速度。所以要尽可能地使个体和整体保持很好的一致性，当保持了一致性的时候，那种能量就会发挥得很好。每个个体要与团队整体实现很好的配合，它会起到一个上升的结果，否则便会起到一个下降的结果。</p>\r\n<p>\r\n	所以每个队员都要思考，我的行为和动作要和团队的思想保持一致。有一个观念，叫做团队精神，组织无我。当你应该具备团队精神的时候，每个人应该把个体忘掉。迪斯尼的老板讲过一句话，他说你来到迪斯尼公司，要么做迪斯尼，要么做你自己。 为一个团队而付出 &nbsp; 每个人都会对团队有一种要求，就是我这个个体从团队当中能得到些什么，这也很重要。有一句话叫做舍得，就是只有先去舍弃，才能得到，你先愿意付出才会有回报。</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 3, 4);
INSERT INTO `pageset` VALUES (17, 1, '品牌印象', '提高品牌知名度，塑造品牌形象，主张广告的重心应从商品信息转向商品形象和个性', '', '品牌印象', '', '', '<p>\r\n	20世纪60年代美国广告&ldquo;创意革命&rdquo;旗手之一大卫&middot;奥格威提出&ldquo;每一个广告必须是对品牌形象的长期投资&rdquo;，据此提出品牌识别(brand image)理念。品牌印象理念立足于市场导向，构建了比较完整的观念体系，主要内容是：<br />\r\n	&nbsp;</p>\r\n<p>\r\n	①每一则广告都应当是创造品牌个性的长效投资，对强化品牌形象应有所贡献；</p>\r\n<p>\r\n	②品牌间的共性越多，选择品牌的理智考虑就越少，因此需要广告创造品牌个性特色；</p>\r\n<p>\r\n	③品牌必须具有个性，以便让顾客获得清晰的认同和识别；</p>\r\n<p>\r\n	④品牌形象的形成是一种战略，具有长期性和全面性，需要持续的努力，是广告、公共关系、促销、商品名称和定价等因素共同作用的结果；</p>\r\n<p>\r\n	⑤最终决定市场地位的是品牌总体性格，而不是商品之间微小的差异。<br />\r\n	&nbsp;</p>\r\n<p>\r\n	该理念认为广告的主要目标是建立、培育和发展品牌，提高品牌知名度，塑造品牌形象，主张广告的重心应从商品信息转向商品形象和个性，为此广告应该立足于满足顾客的心理需求，持续表现某一诉求重点，长期使用某一象征符号，侧重描绘品牌形象而不是商品功效，追求品牌形象差异的长期性，使企业的品牌形象在公众心目中成为一种稳固的印象，这样公众就容易识别品牌了。<br />\r\n	&nbsp;</p>\r\n<p>\r\n	应该说品牌印象理念的出现，突出广告的品牌塑造功效，提升了广告策划的高度。但是它仅强调品牌识别功效，局限于知名度，显然不够准确。</p>\r\n', 3, 3);
INSERT INTO `pageset` VALUES (20, 1, '品牌故事', '', '', '公司简介', '', '', '<p>\r\n	<strong>■ 吉丽嘉多的品牌故事</strong><br />\r\n	&ldquo;Delikado&rdquo;是法语&ldquo;deli&rdquo;(delicieux)意为&ldquo;精致可口的&rdquo;与&ldquo;kado&rdquo;(cadeau)意指为&ldquo;礼物&rdquo;的复合字，代表赠礼者对受礼者传达一份法式浪漫和匠心巧思的心意。<br />\r\n	&ldquo;吉丽嘉多&rdquo;乃&ldquo;Delikado&rdquo;的音译，代表&ldquo;吉祥&rdquo;、&ldquo;美丽&rdquo;与&ldquo;嘉惠多多&rdquo;的中国传统吉祥话，能带来好运与福慧，也是&ldquo;Delikado&rdquo;之最佳注解。<br />\r\n	图腾意境：<br />\r\n	a.看似个鸟巢，代表家庭圆满幸福<br />\r\n	b.看似条小船，代表着事事顺心如意<br />\r\n	c.看似个元宝，招来好运与财气<br />\r\n	d.看似一双手，象征送礼者诚心捧着精美礼物&quot;Delikado&quot;送给你</p>\r\n<p>\r\n	<strong>■ 吉丽嘉多的使命与优势</strong><br />\r\n	1、精选进口优质高档巧克力与甜点<br />\r\n	Import Selected Finest Chocolates and Desserts<br />\r\n	2、建造世界名牌巧克力工厂与中国消费者的良好交易平台<br />\r\n	Build up Chocolates Gallery in China<br />\r\n	3、配以引导风潮的精美礼盒包装<br />\r\n	Create Fashion Style packages<br />\r\n	4、提供高性价比的精致礼物给客户<br />\r\n	Provide High Performance/cost Ratio Luxirious Gifts to customers<br />\r\n	<br />\r\n	吉麗嘉多在此与大家分享那份温馨甜蜜的感觉，更希望所有收到礼物的朋友们能够得到一份最好的祝福：健康 美丽 与拥有多姿多彩的品味生活！</p>\r\n', 2, 12);
INSERT INTO `pageset` VALUES (19, 1, '饮品系列', '', '', '我们的产品', '', '', '', 0, 13);
INSERT INTO `pageset` VALUES (21, 1, '人才招聘', '', '', '', '', '加入我们的团队', '<p>\r\n	公司以发展、责任为公司的核心理念，以倡导环境和谐幸福，打造最具品质的生活为不懈追求的目标。永恒的品质可以无视时间的痕迹，在品质的历程上一线之隔就可以把成功与失败更替。今天的人们，已经非常了解自我的需求，其价值不在于每天的享用，更在于永久的魅力。我们深知，只有品质才是永恒弥久的信念。</p>\r\n<hr />\r\n<p>\r\n	<strong><span style="font-size:12px;">工程项目经理</span></strong></p>\r\n<p>\r\n	职位名称：工程项目经理<br />\r\n	职位类型：全职<br />\r\n	工作经验：3年以上<br />\r\n	学历要求：本科<br />\r\n	招聘人数：1名<br />\r\n	发布时间：2012-12-27</p>\r\n<p>\r\n	职位描述<br />\r\n	本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务<br />\r\n	<br />\r\n	招聘要求<br />\r\n	具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力</p>\r\n<hr />\r\n<p>\r\n	<strong><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 20px;">华东区销售经理</span></strong></p>\r\n<p>\r\n	职位名称：<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 20px;">华东区销售经理</span><br />\r\n	职位类型：全职<br />\r\n	工作经验：3年以上<br />\r\n	学历要求：本科<br />\r\n	招聘人数：1名<br />\r\n	发布时间：2012-12-27</p>\r\n<p>\r\n	职位描述<br />\r\n	本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务<br />\r\n	<br />\r\n	招聘要求<br />\r\n	具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力</p>\r\n<hr />\r\n<p>\r\n	<strong><span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 20px;">资深设计师</span></strong></p>\r\n<p>\r\n	职位名称：工程项目经理<br />\r\n	职位类型：全职<br />\r\n	工作经验：3年以上<br />\r\n	学历要求：本科<br />\r\n	招聘人数：1名<br />\r\n	发布时间：2012-12-27</p>\r\n<p>\r\n	职位描述<br />\r\n	本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务<br />\r\n	<br />\r\n	招聘要求<br />\r\n	具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 3, 5);
INSERT INTO `pageset` VALUES (24, 1, '留言反馈', '', '', '', '', '', '', 2, 9);

-- --------------------------------------------------------

-- 
-- 表的结构 `pagesetpic`
-- 

CREATE TABLE `pagesetpic` (
  `id_pagesetpic` int(11) NOT NULL auto_increment,
  `id_pageset` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_pagesetpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

-- 
-- 导出表中的数据 `pagesetpic`
-- 

INSERT INTO `pagesetpic` VALUES (104, 4, 1, '', '', '', '1370331153.jpg', '', 1, 'JPG', '2013-06-04 15:32:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 104);
INSERT INTO `pagesetpic` VALUES (107, 2, 1, '', '', '', '1370331195.jpg', '', 1, 'JPG', '2013-06-04 15:33:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 107);
INSERT INTO `pagesetpic` VALUES (113, 24, 1, '', '', '', '1370331303.jpg', '', 1, 'JPG', '2013-06-04 15:35:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 113);
INSERT INTO `pagesetpic` VALUES (115, 1, 1, '', '', '', '1370331343.jpg', '', 1, 'JPG', '2013-06-04 15:35:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 115);
INSERT INTO `pagesetpic` VALUES (120, 21, 1, '', '', '', '1370331408.jpg', '', 1, 'JPG', '2013-06-04 15:36:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 120);
INSERT INTO `pagesetpic` VALUES (101, 20, 1, '', '', '', '1370331101.jpg', '', 1, 'JPG', '2013-06-04 15:31:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 101);
INSERT INTO `pagesetpic` VALUES (126, 17, 1, '', '', '', '1370331480.jpg', '', 1, 'JPG', '2013-06-04 15:38:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 126);
INSERT INTO `pagesetpic` VALUES (129, 5, 1, '', '', '', '1370331521.jpg', '', 1, 'JPG', '2013-06-04 15:38:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 129);
INSERT INTO `pagesetpic` VALUES (132, 3, 1, '', '', '', '1370331561.jpg', '', 1, 'JPG', '2013-06-04 15:39:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 132);
INSERT INTO `pagesetpic` VALUES (131, 3, 1, '', '', '', '1370331555.jpg', '', 1, 'JPG', '2013-06-04 15:39:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 131);
INSERT INTO `pagesetpic` VALUES (106, 4, 1, '', '', '', '1370331174.jpg', '', 1, 'JPG', '2013-06-04 15:32:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 106);
INSERT INTO `pagesetpic` VALUES (105, 4, 1, '', '', '', '1370331166.jpg', '', 1, 'JPG', '2013-06-04 15:32:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 105);
INSERT INTO `pagesetpic` VALUES (109, 2, 1, '', '', '', '1370331206.jpg', '', 1, 'JPG', '2013-06-04 15:33:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 109);
INSERT INTO `pagesetpic` VALUES (108, 2, 1, '', '', '', '1370331200.jpg', '', 1, 'JPG', '2013-06-04 15:33:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 108);
INSERT INTO `pagesetpic` VALUES (112, 19, 1, '', '', '', '1370331240.jpg', '', 1, 'JPG', '2013-06-04 15:34:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 112);
INSERT INTO `pagesetpic` VALUES (111, 19, 1, '', '', '', '1370331234.jpg', '', 1, 'JPG', '2013-06-04 15:33:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 111);
INSERT INTO `pagesetpic` VALUES (110, 19, 1, '', '', '', '1370331229.jpg', '', 1, 'JPG', '2013-06-04 15:33:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 110);
INSERT INTO `pagesetpic` VALUES (114, 24, 1, '', '', '', '1370331309.jpg', '', 1, 'JPG', '2013-06-04 15:35:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 114);
INSERT INTO `pagesetpic` VALUES (116, 1, 1, '', '', '', '1370331349.jpg', '', 1, 'JPG', '2013-06-04 15:35:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 116);
INSERT INTO `pagesetpic` VALUES (161, 6, 1, '', '', '', '1392362870.jpg', '', 1, 'JPG', '2014-02-14 15:27:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 161);
INSERT INTO `pagesetpic` VALUES (124, 8, 1, '', '', '', '1370331442.jpg', '', 1, 'JPG', '2013-06-04 15:37:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 124);
INSERT INTO `pagesetpic` VALUES (125, 8, 1, '', '', '', '1370331451.jpg', '', 1, 'JPG', '2013-06-04 15:37:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 125);
INSERT INTO `pagesetpic` VALUES (122, 21, 1, '', '', '', '1370331422.jpg', '', 1, 'JPG', '2013-06-04 15:37:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 122);
INSERT INTO `pagesetpic` VALUES (121, 21, 1, '', '', '', '1370331414.jpg', '', 1, 'JPG', '2013-06-04 15:36:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 121);
INSERT INTO `pagesetpic` VALUES (123, 8, 1, '', '', '', '1370331435.jpg', '', 1, 'JPG', '2013-06-04 15:37:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 123);
INSERT INTO `pagesetpic` VALUES (103, 20, 1, '', '', '', '1370331113.jpg', '', 1, 'JPG', '2013-06-04 15:31:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 103);
INSERT INTO `pagesetpic` VALUES (102, 20, 1, '', '', '', '1370331107.jpg', '', 1, 'JPG', '2013-06-04 15:31:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 102);
INSERT INTO `pagesetpic` VALUES (128, 17, 1, '', '', '', '1370331492.jpg', '', 1, 'JPG', '2013-06-04 15:38:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 128);
INSERT INTO `pagesetpic` VALUES (127, 17, 1, '', '', '', '1370331486.jpg', '', 1, 'JPG', '2013-06-04 15:38:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 127);
INSERT INTO `pagesetpic` VALUES (130, 5, 1, '', '', '', '1370331527.jpg', '', 1, 'JPG', '2013-06-04 15:38:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 130);
INSERT INTO `pagesetpic` VALUES (133, 3, 1, '', '', '', '1370331568.jpg', '', 1, 'JPG', '2013-06-04 15:39:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 133);
INSERT INTO `pagesetpic` VALUES (135, 9, 1, '', '', '', '1370418252.jpg', '', 1, 'JPG', '2013-06-05 15:44:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 135);
INSERT INTO `pagesetpic` VALUES (134, 9, 1, '', '', '', '1370418245.jpg', '', 1, 'JPG', '2013-06-05 15:44:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 134);
INSERT INTO `pagesetpic` VALUES (138, 22, 1, '', '', '', '1370418289.jpg', '', 1, 'JPG', '2013-06-05 15:44:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 138);
INSERT INTO `pagesetpic` VALUES (137, 22, 1, '', '', '', '1370418283.jpg', '', 1, 'JPG', '2013-06-05 15:44:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 137);
INSERT INTO `pagesetpic` VALUES (136, 22, 1, '', '', '', '1370418274.jpg', '', 1, 'JPG', '2013-06-05 15:44:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 136);
INSERT INTO `pagesetpic` VALUES (140, 23, 1, '', '', '', '1370418318.jpg', '', 1, 'JPG', '2013-06-05 15:45:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 140);
INSERT INTO `pagesetpic` VALUES (139, 23, 1, '', '', '', '1370418312.jpg', '', 1, 'JPG', '2013-06-05 15:45:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 139);
INSERT INTO `pagesetpic` VALUES (143, 15, 1, '', '', '', '1370418352.jpg', '', 1, 'JPG', '2013-06-05 15:45:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 143);
INSERT INTO `pagesetpic` VALUES (142, 15, 1, '', '', '', '1370418345.jpg', '', 1, 'JPG', '2013-06-05 15:45:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 142);
INSERT INTO `pagesetpic` VALUES (141, 15, 1, '', '', '', '1370418338.jpg', '', 1, 'JPG', '2013-06-05 15:45:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 141);
INSERT INTO `pagesetpic` VALUES (146, 13, 1, '', '', '', '1370418387.jpg', '', 1, 'JPG', '2013-06-05 15:46:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 146);
INSERT INTO `pagesetpic` VALUES (145, 13, 1, '', '', '', '1370418381.jpg', '', 1, 'JPG', '2013-06-05 15:46:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 145);
INSERT INTO `pagesetpic` VALUES (144, 13, 1, '', '', '', '1370418373.jpg', '', 1, 'JPG', '2013-06-05 15:46:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 144);
INSERT INTO `pagesetpic` VALUES (148, 25, 1, '', '', '', '1370418411.jpg', '', 1, 'JPG', '2013-06-05 15:46:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 148);
INSERT INTO `pagesetpic` VALUES (147, 25, 1, '', '', '', '1370418406.jpg', '', 1, 'JPG', '2013-06-05 15:46:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 147);
INSERT INTO `pagesetpic` VALUES (151, 12, 1, '', '', '', '1370418446.jpg', '', 1, 'JPG', '2013-06-05 15:47:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 151);
INSERT INTO `pagesetpic` VALUES (150, 12, 1, '', '', '', '1370418440.jpg', '', 1, 'JPG', '2013-06-05 15:47:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 150);
INSERT INTO `pagesetpic` VALUES (149, 12, 1, '', '', '', '1370418433.jpg', '', 1, 'JPG', '2013-06-05 15:47:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 149);
INSERT INTO `pagesetpic` VALUES (153, 11, 1, '', '', '', '1370418475.jpg', '', 1, 'JPG', '2013-06-05 15:47:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 153);
INSERT INTO `pagesetpic` VALUES (152, 11, 1, '', '', '', '1370418467.jpg', '', 1, 'JPG', '2013-06-05 15:47:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 152);
INSERT INTO `pagesetpic` VALUES (155, 14, 1, '', '', '', '1370418505.jpg', '', 1, 'JPG', '2013-06-05 15:48:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 155);
INSERT INTO `pagesetpic` VALUES (154, 14, 1, '', '', '', '1370418499.jpg', '', 1, 'JPG', '2013-06-05 15:48:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 154);
INSERT INTO `pagesetpic` VALUES (157, 16, 1, '', '', '', '1370418629.jpg', '', 1, 'JPG', '2013-06-05 15:50:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 157);
INSERT INTO `pagesetpic` VALUES (156, 16, 1, '', '', '', '1370418622.jpg', '', 1, 'JPG', '2013-06-05 15:50:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 156);
INSERT INTO `pagesetpic` VALUES (159, 10, 1, '', '', '', '1370418693.jpg', '', 1, 'JPG', '2013-06-05 15:51:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 159);
INSERT INTO `pagesetpic` VALUES (158, 10, 1, '', '', '', '1370418688.jpg', '', 1, 'JPG', '2013-06-05 15:51:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 158);
INSERT INTO `pagesetpic` VALUES (160, 10, 1, '', '', '', '1370418699.jpg', '', 1, 'JPG', '2013-06-05 15:51:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 160);

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy1`
-- 

CREATE TABLE `pavy1` (
  `id_pavy1` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `product_visit` int(1) NOT NULL default '0',
  `store_visit` int(1) NOT NULL default '0',
  `news_visit` int(1) NOT NULL default '0',
  `hr_visit` int(1) NOT NULL default '0',
  `pavy_visit` int(1) NOT NULL default '0',
  `data_visit` int(1) NOT NULL default '0',
  `siteset_visit` int(1) NOT NULL default '0',
  `level` int(1) NOT NULL default '0',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pavy1`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- 导出表中的数据 `pavy1`
-- 

INSERT INTO `pavy1` VALUES (28, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `pavy2`
-- 

CREATE TABLE `pavy2` (
  `id_pvay2` int(11) NOT NULL auto_increment,
  `id_hr` int(11) NOT NULL,
  `id_backmenu` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `browseprem` int(1) NOT NULL default '0',
  `addprem` int(1) NOT NULL default '0',
  `editprem` int(1) NOT NULL default '0',
  `deleprem` int(1) NOT NULL default '0',
  `display` int(1) NOT NULL default '1',
  `level` int(1) NOT NULL default '0',
  `state` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  PRIMARY KEY  (`id_pvay2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=280 ;

-- 
-- 导出表中的数据 `pavy2`
-- 

INSERT INTO `pavy2` VALUES (246, 1, 46, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (245, 1, 41, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (244, 1, 39, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (243, 1, 22, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (242, 1, 21, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (241, 1, 20, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (240, 1, 19, 1, 0, 0, 0, 0, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (239, 1, 18, 1, 0, 0, 0, 0, 0, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (238, 1, 17, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (237, 1, 16, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (236, 1, 15, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (235, 1, 47, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (234, 1, 8, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (233, 1, 9, 1, 1, 1, 1, 1, 1, 0, 1, '2011-01-29 18:08:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (263, 1, 49, 1, 0, 0, 0, 0, 0, 0, 1, '2012-02-26 20:27:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (247, 1, 48, 1, 1, 1, 1, 1, 1, 0, 1, '2011-03-09 16:42:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (264, 1, 50, 1, 0, 0, 0, 0, 1, 0, 1, '2012-06-15 10:47:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `pavy2` VALUES (265, 1, 51, 1, 1, 1, 1, 1, 1, 0, 1, '2013-04-06 19:51:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- 表的结构 `post`
-- 

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL auto_increment,
  `post` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- 导出表中的数据 `post`
-- 

INSERT INTO `post` VALUES (1, '普通员工', 1);
INSERT INTO `post` VALUES (2, '物料收发员', 1);
INSERT INTO `post` VALUES (3, 'IQC', 1);
INSERT INTO `post` VALUES (4, '仓库主管', 1);
INSERT INTO `post` VALUES (5, '采购主管', 1);
INSERT INTO `post` VALUES (6, '销售主管', 1);
INSERT INTO `post` VALUES (7, '副总经理', 1);
INSERT INTO `post` VALUES (8, '总经理', 1);
INSERT INTO `post` VALUES (9, '网站管理员', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `productdir`
-- 

CREATE TABLE `productdir` (
  `id_proddir` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL,
  `name` varchar(50) NOT NULL default '1',
  `intro` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `dirurl` varchar(50) NOT NULL,
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_proddir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

-- 
-- 导出表中的数据 `productdir`
-- 

INSERT INTO `productdir` VALUES (1, 1, '咖啡产品', '', 1, '', 0, 1, 38);
INSERT INTO `productdir` VALUES (2, 1, 'CATAMONA挂耳式咖啡', '', 1, '', 1, 2, 2);
INSERT INTO `productdir` VALUES (46, 1, '查理曼(Charemagne)颗粒巧克力', '', 1, '', 22, 2, 46);
INSERT INTO `productdir` VALUES (49, 1, '礼盒定制', '', 1, '', 0, 1, 1);
INSERT INTO `productdir` VALUES (32, 1, '套盒礼盒', '\n\n', 1, '', 57, 2, 67);
INSERT INTO `productdir` VALUES (22, 1, '巧克力产品', '', 1, '', 0, 1, 50);
INSERT INTO `productdir` VALUES (23, 1, '咖啡礼盒', '', 1, '', 57, 2, 65);
INSERT INTO `productdir` VALUES (24, 1, '魔术礼盒', '', 1, '', 57, 2, 66);
INSERT INTO `productdir` VALUES (25, 1, '查理曼(Charemagne)片式巧克力', '', 1, '', 22, 2, 1);
INSERT INTO `productdir` VALUES (50, 1, '企业定制 Enterprice', '', 1, '', 49, 2, 50);
INSERT INTO `productdir` VALUES (51, 1, '婚庆定制 Wedding', '', 1, '', 49, 2, 51);
INSERT INTO `productdir` VALUES (52, 1, '节日定制 Festival', '', 1, '', 49, 2, 52);
INSERT INTO `productdir` VALUES (57, 1, '礼盒系列', '', 1, '', 0, 1, 57);
INSERT INTO `productdir` VALUES (58, 1, '婚庆系列', '嘉丽婚庆巧克力礼袋、礼盒', 1, '', 57, 2, 58);
INSERT INTO `productdir` VALUES (59, 1, '甜蜜礼盒系列', '', 1, '', 57, 2, 59);
INSERT INTO `productdir` VALUES (60, 1, '片式巧克力礼盒系列', '', 1, '', 57, 2, 60);
INSERT INTO `productdir` VALUES (61, 1, '巧克力咖啡系列', '', 1, '', 57, 2, 61);
INSERT INTO `productdir` VALUES (62, 1, '甜心礼盒', '', 1, '', 57, 2, 62);
INSERT INTO `productdir` VALUES (63, 1, '财星礼盒', '', 1, '', 57, 2, 63);
INSERT INTO `productdir` VALUES (64, 1, '多宝格礼盒', '', 1, '', 57, 2, 64);

-- --------------------------------------------------------

-- 
-- 表的结构 `productinfo`
-- 

CREATE TABLE `productinfo` (
  `id_prodinfo` int(11) NOT NULL auto_increment,
  `id_proddir` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `tag` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `isnew` int(1) NOT NULL default '1',
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodinfo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- 
-- 导出表中的数据 `productinfo`
-- 

INSERT INTO `productinfo` VALUES (1, 46, 0, 1, 'Lime莱姆 Citron vert', 'Denise女士善用冲突美表现在巧克力上，这款是经典的一种。分明是玫瑰的造型，用的是黑巧克力，及豪迈性格的莱姆酒，混合着柚子的水果香，强烈对比的搭配让人耳目一新，展现多层次口感。牛奶巧克力的甜味，莱姆酒混着柚子的酸香，最后巧克力淡淡的苦，形成又期待又怕受伤害的复杂感情，是爱的魅惑吧！', '<img alt="" src="/upload/other/images/20140218_071951.png" />', '', 1, 1, '2013-11-29 12:54:24', '2014-02-18 15:19:57', '0000-00-00 00:00:00', 0, 8);
INSERT INTO `productinfo` VALUES (2, 46, 0, 1, 'Tiramisy提拉米苏 Cafe+Amaretto', '外壳是黑巧克力，乳白的内馅像意式奶油冰淇淋，融合了淡淡的咖啡香和杏仁酒味，这是巧妙的创意，却浑然天成，“喀嚓”一声之后，醇厚浓郁的奶香提拉米苏像破涌而出，迷惑你的味蕾，甜蜜之感溢满心头。', '<img alt="" src="/upload/other/images/20140218_072204.png" />', '', 1, 1, '2013-11-29 12:59:11', '2014-02-18 15:22:39', '0000-00-00 00:00:00', 0, 7);
INSERT INTO `productinfo` VALUES (3, 46, 0, 1, 'Love咖啡 Cafe', '  外形是双心拥抱的牛奶巧克力，象征着相依相偎天长地久的誓言。内馅是细致的焦糖咖啡口味，品尝起来是浓浓的焦糖咖啡奶香。聪明的Denise女士也知道，咖啡巧克力是绝配，苦后满满回甘的香甜厚实感，这就是恋爱的滋味吧。“等待+聚首”心心相印的默契。', '<img alt="" src="/upload/other/images/20140218_072317.png" />', '', 1, 1, '2013-11-29 13:00:05', '2014-02-18 15:23:29', '0000-00-00 00:00:00', 0, 6);
INSERT INTO `productinfo` VALUES (4, 46, 0, 1, 'Martinique兰姆葡萄干 Rhum Raisins', '  大气的椭圆型牛奶巧克力外壳，一口咬下去，一股浓浓兰姆酒葡萄干的酸香，隽永而细致，弥漫包覆在唇齿之间，满满进入鼻腔，三者融合产生共振共鸣，余韵绵绵。', '<img alt="" src="/upload/other/images/20140218_072409.png" />', '', 1, 1, '2013-11-29 13:04:40', '2014-02-18 15:24:15', '0000-00-00 00:00:00', 0, 5);
INSERT INTO `productinfo` VALUES (5, 46, 0, 1, 'Champagne马克香槟松露 Marcde Champagne', '  心形样貌又兼有黑松露刚出土的朴质气息，给人一心一意的专属感。内馅用的是浓浓香槟酒跟牛奶巧克力。伴着黑巧克力外壳在口中满满融化，前段先是浓浓的奶香，中后段香槟酒缓缓溢出，越来越浓，一种优雅高贵的气韵萦绕在口颊，充满了愉悦的幸福感。', '<img alt="" src="/upload/other/images/20140218_072459.png" />', '', 1, 1, '2013-11-29 13:06:33', '2014-02-18 15:25:04', '0000-00-00 00:00:00', 0, 4);
INSERT INTO `productinfo` VALUES (6, 46, 0, 1, 'Istanbul榛子果仁 Praline Noisette', ' 虽是大众化的做法，但此款仍别出心裁，运用榛子果仁细化跟牛奶巧克力混合，坚果香巧妙隐藏在巧克力中，尝不到颗粒，这才是Denise女士的用心之处，不是让顾客吃到满嘴的坚果，而是取其精华，让那浓郁芬芳在口颊中久久不散。', '<img alt="" src="/upload/other/images/20140218_072552.png" />', '', 1, 1, '2013-11-29 13:08:36', '2014-02-18 15:26:03', '0000-00-00 00:00:00', 0, 3);
INSERT INTO `productinfo` VALUES (7, 46, 0, 1, 'Limoni柠檬 Lemon', ' 柠檬白巧克力玫瑰造型是颇受欢迎的一款，白巧克力+牛奶+柠檬，浓郁的奶香味配上柠檬酸味，酸酸甜甜，比例组合完美，酸甜交辉，仿佛二八佳人，充满浪漫的渴望。', '<img alt="" src="/upload/other/images/20140218_072640.png" />', '', 1, 1, '2013-11-29 13:11:08', '2014-02-18 15:26:45', '0000-00-00 00:00:00', 0, 2);
INSERT INTO `productinfo` VALUES (8, 46, 0, 1, 'Monkey椰子 Coconut', '  高贵华丽的钻石造型，先是惊艳你的眼。内馅是丰富的椰子仁，东南亚特有的椰香与兰姆酒巧妙的搭配，牛奶椰香巧克力漫上舌尖，待缠绵的巧克力滑进舌腔后，方才醒悟，有些小精灵在你舌头跳舞，原来是一粒粒白色的椰仁活跃在齿颊上，需你细细亲吻，满满咀嚼，一种浪漫的南洋风情在心里回荡不已。', '<img alt="" src="/upload/other/images/20140218_072714.png" />', '', 1, 1, '2013-11-29 13:13:20', '2014-02-18 15:27:30', '0000-00-00 00:00:00', 0, 1);
INSERT INTO `productinfo` VALUES (9, 58, 0, 1, '婚庆系列', '嘉丽婚庆巧克力礼袋、礼盒', '<img alt="" src="/upload/other/images/20131202_070229.jpg" />', '', 1, 1, '2013-12-02 14:55:51', '2014-02-18 15:35:57', '0000-00-00 00:00:00', 0, 9);
INSERT INTO `productinfo` VALUES (10, 59, 0, 1, '甜蜜礼盒系列', '小两口巧克力礼盒、吉丽四喜巧克力礼盒等', '<img alt="" src="/upload/other/images/20131202_071203.jpg" /><br />\r\n<img alt="" src="/upload/other/images/20131202_071213.jpg" /><br />\r\n', '', 1, 1, '2013-12-02 15:09:19', '2014-02-18 15:37:02', '0000-00-00 00:00:00', 0, 10);
INSERT INTO `productinfo` VALUES (11, 60, 0, 1, '片式巧克力礼盒系列', '健康嘉惠巧克力礼盒', '<img alt="" src="/upload/other/images/20131202_071631.jpg" /><br />\r\n<img alt="" src="/upload/other/images/20131202_071641.jpg" /><br />\r\n', '', 1, 1, '2013-12-02 15:16:03', '2014-02-18 15:37:48', '0000-00-00 00:00:00', 0, 11);
INSERT INTO `productinfo` VALUES (12, 61, 0, 1, '巧克力咖啡系列', '甜蜜飘香巧克力咖啡礼盒', '<img alt="" src="/upload/other/images/20131202_071905.jpg" /><br />\r\n<img alt="" src="/upload/other/images/20131202_071913.jpg" /><br />\r\n', '', 1, 1, '2013-12-02 15:17:12', '2014-02-18 15:38:25', '0000-00-00 00:00:00', 0, 12);
INSERT INTO `productinfo` VALUES (13, 62, 0, 1, '甜心礼盒', '吉丽甜心巧克力礼盒', '<img alt="" src="/upload/other/images/20131202_072134.jpg" /><br />\r\n<img alt="" src="/upload/other/images/20131202_072143.jpg" /><br />\r\n', '', 1, 1, '2013-12-02 15:19:34', '2014-02-18 15:39:09', '0000-00-00 00:00:00', 0, 13);
INSERT INTO `productinfo` VALUES (14, 63, 0, 1, '财星礼盒', '吉丽财星巧克力礼盒', '<img alt="" src="/upload/other/images/20131202_072421.jpg" />', '', 1, 1, '2013-12-02 15:22:47', '2014-02-18 15:39:30', '0000-00-00 00:00:00', 0, 14);
INSERT INTO `productinfo` VALUES (15, 64, 0, 1, '多宝格礼盒', '吉丽多宝巧克力豪华礼盒', '<img alt="" src="/upload/other/images/20131202_072715.jpg" /><br />\r\n<img alt="" src="/upload/other/images/20131202_072723.jpg" /><br />\r\n', '', 1, 1, '2013-12-02 15:24:43', '2014-02-18 15:40:00', '0000-00-00 00:00:00', 0, 15);
INSERT INTO `productinfo` VALUES (16, 23, 0, 1, '咖啡礼盒', '吉丽飘香咖啡礼盒', '<img alt="" src="/upload/other/images/20131202_073005.jpg" />', '', 1, 1, '2013-12-02 15:27:41', '2014-02-18 15:40:23', '0000-00-00 00:00:00', 0, 16);
INSERT INTO `productinfo` VALUES (17, 24, 0, 1, '魔术礼盒', '吉丽魔术巧克力礼盒', '<img alt="" src="/upload/other/images/20131202_073114.jpg" />', '', 1, 1, '2013-12-02 15:30:11', '2014-02-18 15:40:50', '0000-00-00 00:00:00', 0, 17);
INSERT INTO `productinfo` VALUES (18, 32, 0, 1, '套盒礼盒', '吉丽神秘巧克力礼盒', '<img alt="" src="/upload/other/images/20131202_073406.jpg" />', '', 1, 1, '2013-12-02 15:32:29', '2014-02-18 15:41:13', '0000-00-00 00:00:00', 0, 18);
INSERT INTO `productinfo` VALUES (19, 2, 0, 1, 'CATAMONA挂耳式咖啡', 'Delicado推荐四种口味，严选中美洲，亚洲，非洲，南美咖啡豆新鲜研磨，提供健康、快速、香醇、浓郁的咖啡。因产地不同，各有不同的韵味，支撑挂耳式滤泡咖啡包，可以随着您的心情，选择喜欢的口味，随时随地都能享受一杯新鲜研磨的现泡咖啡。', '<p>\r\n	Delicado推荐四种口味，严选中美洲，亚洲，非洲，南美咖啡豆新鲜研磨，提供健康、快速、香醇、浓郁的咖啡。因产地不同，各有不同的韵味，支撑挂耳式滤泡咖啡包，可以随着您的心情，选择喜欢的口味，随时随地都能享受一杯新鲜研磨的现泡咖啡。<br />\r\n	<br />\r\n	<img alt="" src="/upload/other/images/20140218_074441.png" />\r\n	</p>\r\n<p>\r\n	■ 南美洲&middot;滑顺芳香 自然甘醇<br />\r\n	■ 非 洲&middot;狂野馨香 纯度饱满<br />\r\n	■ 亚 洲&middot;麦芽奶香 浓郁丰富<br />\r\n	■ 中美洲&middot;明亮果香 焦糖甘甜</p>\r\n', '', 1, 1, '2014-02-18 15:43:32', '2014-02-18 15:46:40', '0000-00-00 00:00:00', 0, 19);
INSERT INTO `productinfo` VALUES (20, 50, 0, 1, '企业定制 Enterprise', 'Delikado公司为企业、婚庆、节日等提供个性化的定制服务，可以根据需求印制公司LOGO，个性化文字，能自主选择巧克力口味与盒子图案。', '<p>\r\n	Delikado公司为企业、婚庆、节日等提供个性化的定制服务，可以根据需求印制公司LOGO，个性化文字，能自主选择巧克力口味与盒子图案。<br />\r\n	<br />\r\n	<img alt="" src="/upload/other/images/20140218_075228.jpg" /></p>\r\n', '', 1, 1, '2014-02-18 15:49:55', '2014-02-18 15:52:33', '0000-00-00 00:00:00', 0, 20);

-- --------------------------------------------------------

-- 
-- 表的结构 `productpic`
-- 

CREATE TABLE `productpic` (
  `id_prodpic` int(11) NOT NULL auto_increment,
  `id_prodinfo` int(11) NOT NULL,
  `id_hr` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `opicname` varchar(250) NOT NULL,
  `spicname` varchar(250) NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `type` varchar(3) NOT NULL,
  `indate` datetime NOT NULL,
  `modate` datetime NOT NULL,
  `deldate` datetime NOT NULL,
  `browsecount` int(11) NOT NULL,
  PRIMARY KEY  (`id_prodpic`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- 
-- 导出表中的数据 `productpic`
-- 

INSERT INTO `productpic` VALUES (2, 18, 1, '', '', '', '1392705928.png', '', 1, 'PNG', '2014-02-18 14:45:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (3, 17, 1, '', '', '', '1392706256.png', '', 1, 'PNG', '2014-02-18 14:50:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (4, 16, 1, '', '', '', '1392706353.png', '', 1, 'PNG', '2014-02-18 14:52:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (5, 15, 1, '', '', '', '1392706407.png', '', 1, 'PNG', '2014-02-18 14:53:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (6, 14, 1, '', '', '', '1392706486.png', '', 1, 'PNG', '2014-02-18 14:54:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (7, 13, 1, '', '', '', '1392706585.png', '', 1, 'PNG', '2014-02-18 14:56:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (8, 12, 1, '', '', '', '1392706670.png', '', 1, 'PNG', '2014-02-18 14:57:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (9, 11, 1, '', '', '', '1392706747.png', '', 1, 'PNG', '2014-02-18 14:59:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (10, 10, 1, '', '', '', '1392706856.png', '', 1, 'PNG', '2014-02-18 15:00:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (11, 9, 1, '', '', '', '1392706946.png', '', 1, 'PNG', '2014-02-18 15:02:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (12, 1, 1, '', '', '', '1392707955.png', '', 1, 'PNG', '2014-02-18 15:19:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (13, 2, 1, '', '', '', '1392708108.png', '', 1, 'PNG', '2014-02-18 15:21:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (14, 3, 1, '', '', '', '1392708207.png', '', 1, 'PNG', '2014-02-18 15:23:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (15, 4, 1, '', '', '', '1392708242.png', '', 1, 'PNG', '2014-02-18 15:24:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (16, 5, 1, '', '', '', '1392708291.png', '', 1, 'PNG', '2014-02-18 15:24:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (17, 6, 1, '', '', '', '1392708360.png', '', 1, 'PNG', '2014-02-18 15:26:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (18, 7, 1, '', '', '', '1392708392.png', '', 1, 'PNG', '2014-02-18 15:26:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (19, 8, 1, '', '', '', '1392708447.png', '', 1, 'PNG', '2014-02-18 15:27:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (20, 19, 1, '', '', '', '1392709693.png', '', 1, 'PNG', '2014-02-18 15:48:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `productpic` VALUES (21, 20, 1, '', '', '', '1392709857.png', '', 1, 'PNG', '2014-02-18 15:50:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `siteset`
-- 

CREATE TABLE `siteset` (
  `id_siteset` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `otherheader` text NOT NULL,
  `iscopy` int(1) NOT NULL default '0',
  `rmailbox` varchar(50) NOT NULL,
  `smailbox` varchar(50) NOT NULL,
  `smailboxpass` varchar(50) NOT NULL,
  `icp` varchar(25) NOT NULL,
  `mapcode` text NOT NULL,
  `statistics` text NOT NULL,
  `isstyle` varchar(8) NOT NULL,
  `weburl` text NOT NULL,
  `newsnum` int(2) NOT NULL,
  `productnum` int(2) NOT NULL,
  `bannertime` int(11) NOT NULL default '3000',
  PRIMARY KEY  (`id_siteset`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `siteset`
-- 

INSERT INTO `siteset` VALUES (1, 1, '吉麗嘉多', '吉麗嘉多', '吉麗嘉多', '', 0, '', '', '', '', '<iframe width="100%" height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://ditu.google.cn/maps?f=q&source=s_q&hl=zh-CN&geocode=&q=%E6%B1%9F%E8%8B%8F%E7%9C%81+%E9%87%91%E5%9D%9B%E5%B8%82+%E7%9B%B4%E6%BA%AA%E9%95%87+%E4%BA%9A%E7%BB%86%E8%B7%AF18%E5%8F%B7&aq=&sll=31.230416,121.473701&sspn=2.019731,4.22699&brcurrent=3,0x35b451e286f4b2e7:0xa4064172619da05d,0,0x35b412ca0d729ef3:0xc0b4244a816f3c38%3B5,0,0&ie=UTF8&hq=&hnear=%E6%B1%9F%E8%8B%8F%E7%9C%81%E5%B8%B8%E5%B7%9E%E5%B8%82%E9%87%91%E5%9D%9B%E5%B8%82%E4%BA%9A%E7%BB%86%E8%B7%AF&t=m&ll=31.793628,119.453917&spn=0.036476,0.008497&z=14&iwloc=A&output=embed"></iframe><br /><small><a href="http://ditu.google.cn/maps?f=q&source=embed&hl=zh-CN&geocode=&q=%E6%B1%9F%E8%8B%8F%E7%9C%81+%E9%87%91%E5%9D%9B%E5%B8%82+%E7%9B%B4%E6%BA%AA%E9%95%87+%E4%BA%9A%E7%BB%86%E8%B7%AF18%E5%8F%B7&aq=&sll=31.230416,121.473701&sspn=2.019731,4.22699&brcurrent=3,0x35b451e286f4b2e7:0xa4064172619da05d,0,0x35b412ca0d729ef3:0xc0b4244a816f3c38%3B5,0,0&ie=UTF8&hq=&hnear=%E6%B1%9F%E8%8B%8F%E7%9C%81%E5%B8%B8%E5%B7%9E%E5%B8%82%E9%87%91%E5%9D%9B%E5%B8%82%E4%BA%9A%E7%BB%86%E8%B7%AF&t=m&ll=31.793628,119.453917&spn=0.036476,0.008497&z=14&iwloc=A" style="color:#0000FF;text-align:left">查看大图</a></small>', '', '', 'www.delikado.biz', 6, 6, 0);

-- --------------------------------------------------------

-- 
-- 表的结构 `title`
-- 

CREATE TABLE `title` (
  `id_title` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `lang` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 导出表中的数据 `title`
-- 

INSERT INTO `title` VALUES (15, 'q', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `webmenu`
-- 

CREATE TABLE `webmenu` (
  `id_webmenu` int(11) NOT NULL auto_increment,
  `lang` int(1) NOT NULL default '1',
  `name` varchar(25) NOT NULL,
  `url` text NOT NULL,
  `dele` int(1) NOT NULL default '1',
  `fatherid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `ordernum` int(11) NOT NULL,
  PRIMARY KEY  (`id_webmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 导出表中的数据 `webmenu`
-- 

INSERT INTO `webmenu` VALUES (1, 1, '网站首页----HOME', '/', 1, 0, 1, 8);
INSERT INTO `webmenu` VALUES (2, 1, '关于我们----About us', '/about/aboutus.php', 1, 0, 1, 7);
INSERT INTO `webmenu` VALUES (3, 1, '产品中心----Products', '/product/products.php', 1, 0, 1, 6);
INSERT INTO `webmenu` VALUES (4, 1, '新闻中心----News', '/news/news.php', 1, 0, 1, 5);
INSERT INTO `webmenu` VALUES (5, 1, '联系我们----Contact us', '/contactus/contactus.php', 1, 0, 1, 4);
INSERT INTO `webmenu` VALUES (11, 1, '公司介绍----Introduction', '/about/intro.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (12, 1, '关于我们----About us', '/about/aboutus.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (13, 1, '总经理致辞----CEO''s Message', '/about/ceomessage.php', 1, 2, 2, 0);
INSERT INTO `webmenu` VALUES (14, 1, '产品中心----Products', '/product/products.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (15, 1, '资料下载----PDF download', '/product/productpdf.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (16, 1, '我们的工厂----Our factory', '/product/ourfactory.php', 1, 3, 2, 0);
INSERT INTO `webmenu` VALUES (17, 1, '公司新闻----Company news', '/news/companynews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (18, 1, '产品新闻----Product news', '/news/productnews.php', 1, 4, 2, 0);
INSERT INTO `webmenu` VALUES (19, 1, '加入我们----Join us', '/news/joinus.php', 1, 4, 2, 0);
