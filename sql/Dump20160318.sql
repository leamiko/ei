CREATE DATABASE  IF NOT EXISTS `lenggirl` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lenggirl`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: lenggirl
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `think_auth_group`
--

DROP TABLE IF EXISTS `think_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '' COMMENT '用户组名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `rules` char(80) NOT NULL DEFAULT '' COMMENT '规则',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_group`
--

LOCK TABLES `think_auth_group` WRITE;
/*!40000 ALTER TABLE `think_auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_auth_group_access`
--

DROP TABLE IF EXISTS `think_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_group_access`
--

LOCK TABLES `think_auth_group_access` WRITE;
/*!40000 ALTER TABLE `think_auth_group_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_auth_rule`
--

DROP TABLE IF EXISTS `think_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_auth_rule`
--

LOCK TABLES `think_auth_rule` WRITE;
/*!40000 ALTER TABLE `think_auth_rule` DISABLE KEYS */;
INSERT INTO `think_auth_rule` VALUES (6,'Admin/User/listuser','列出用户',1,1,''),(7,'Admin/User/listusers','真的列出用户',1,1,''),(8,'Admin/User/adduser','增加用户',1,1,''),(9,'Admin/User/addusers','真的增加用户',1,1,'');
/*!40000 ALTER TABLE `think_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_category`
--

DROP TABLE IF EXISTS `think_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `content` text,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '0表示未开启，1表示开启',
  `username` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='文章目录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_category`
--

LOCK TABLES `think_category` WRITE;
/*!40000 ALTER TABLE `think_category` DISABLE KEYS */;
INSERT INTO `think_category` VALUES (10,'是否为 都是','<p>的是v<br/></p>','2016-03-13 17:28:14',NULL,0,1,'hunterhug'),(3,'啥傻乎乎','&lt;p&gt;哇哈哈&lt;br/&gt;&lt;/p&gt;','2016-03-09 21:33:04','2016-03-10 21:38:11',6,0,'hunterhug'),(9,'wefwe','<p>&lt;p&gt;ewfwef&lt;/p&gt;<br/></p>','2016-03-10 22:32:35',NULL,0,1,'hunterhug');
/*!40000 ALTER TABLE `think_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_comment`
--

DROP TABLE IF EXISTS `think_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_comment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(64) NOT NULL,
  `content` tinytext NOT NULL,
  `createtime` int(11) unsigned DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `pid` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_comment`
--

LOCK TABLES `think_comment` WRITE;
/*!40000 ALTER TABLE `think_comment` DISABLE KEYS */;
INSERT INTO `think_comment` VALUES (84,'sss','dds',1454561383,'569929309@qq.com',1,0),(85,'dsc','dscsdcsd',1454561398,'569929309@qq.com',1,0);
/*!40000 ALTER TABLE `think_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_paper`
--

DROP TABLE IF EXISTS `think_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_paper` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL,
  `content` mediumtext,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `order` mediumint(8) DEFAULT '0',
  `view` mediumint(8) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '0表示待审核，1表示已审核，2表示回收站',
  `cid` int(11) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `desccontent` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_paper`
--

LOCK TABLES `think_paper` WRITE;
/*!40000 ALTER TABLE `think_paper` DISABLE KEYS */;
INSERT INTO `think_paper` VALUES (1,'rger','reg','<p>rg<br/></p>','2016-03-12 12:54:15','2016-03-13 17:10:22',0,0,0,3,'20160312/56e3a0f658b3e.jpg','hunterhug',NULL),(2,'yth','yh','<p>rtgrt<br/></p>','2016-03-12 13:02:29','2016-03-13 17:10:22',0,0,0,3,'20160312/56e3a2e3c15f5.jpg','hunterhug',NULL),(3,'ehtt','rther','<p>trh<br/></p>','2016-03-12 13:03:11','2016-03-13 17:10:22',0,0,0,9,'20160312/56e3a30e576c0.jpg','hunterhug',NULL),(4,'ewf','wef','<p>wef<br/></p>','2016-03-12 13:03:58','2016-03-13 17:10:22',0,0,0,3,'20160312/56e3a33ca9814.jpg','hunterhug','ewf'),(6,'2222222\'\'','2','<p>2<img alt=\"psu.jpg\" src=\"/pictures/image/20160312/1457762160180518.jpg\" title=\"1457762160180518.jpg\"/></p>','2016-03-12 13:45:53','2016-03-13 17:10:22',2,2,0,3,'20160312/56e3af8b3b615.jpg','hunterhug','2								');
/*!40000 ALTER TABLE `think_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_pcategory`
--

DROP TABLE IF EXISTS `think_pcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_pcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `content` text,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '0表示未开启，1表示开启',
  `username` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_pcategory`
--

LOCK TABLES `think_pcategory` WRITE;
/*!40000 ALTER TABLE `think_pcategory` DISABLE KEYS */;
INSERT INTO `think_pcategory` VALUES (12,'发的白癜风','&lt;p&gt;方便u&lt;br/&gt;&lt;/p&gt;','2016-03-13 17:33:32','2016-03-13 19:49:58',0,1,'hunterhug'),(13,'加5u','<p>65u<br/></p>','2016-03-13 19:45:32','2016-03-13 19:49:59',0,1,'hunterhug');
/*!40000 ALTER TABLE `think_pcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_photo`
--

DROP TABLE IF EXISTS `think_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '图片标题',
  `desc` tinytext COMMENT '图片描述',
  `url` varchar(200) DEFAULT NULL COMMENT '跳转地点',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `storeplace` varchar(200) DEFAULT NULL COMMENT '图片存放地点',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='图片轮转表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_photo`
--

LOCK TABLES `think_photo` WRITE;
/*!40000 ALTER TABLE `think_photo` DISABLE KEYS */;
INSERT INTO `think_photo` VALUES (1,NULL,'fffffff','http://hunterhug.github.io','2016-03-06 20:30:39','hunterhug','20160306/56dc22a8c43df.jpg',0,1),(6,'regergfffffffffffffffffffffff','ergreffffffffffffffffffff','http://hunterhug.github.io','2016-03-06 20:48:15','hunterhug','20160306/56dc2706923f5.jpg',8,1),(7,'hrth','rthrt','http://hunterhug.github.io','2016-03-06 20:58:56','hunterhug','20160306/56dc2989f00cf.jpg',0,1),(8,'11111111111111111111ffffffffff','trhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgregtrhrgreg','http://hunterhug.github.io','2016-03-06 20:59:19','hunterhug','20160306/56dc45b623ec0.jpg',1,1),(9,'dgre','gerg','http://hunterhug.github.io','2016-03-06 22:51:41','hunterhug','20160306/56dc43fae2b36.jpg',0,0),(10,'btbrt','trbtrb','http://hunterhug.github.io','2016-03-08 19:25:02','hunterhug','20160308/56deb68cb4d01.jpg',0,0);
/*!40000 ALTER TABLE `think_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_product`
--

DROP TABLE IF EXISTS `think_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_product` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `price` text,
  `content` mediumtext,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `order` mediumint(8) DEFAULT '0',
  `view` mediumint(8) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '0表示待审核，1表示已审核，2表示回收站',
  `cid` int(11) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `desccontent` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='产品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_product`
--

LOCK TABLES `think_product` WRITE;
/*!40000 ALTER TABLE `think_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_user`
--

DROP TABLE IF EXISTS `think_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `lastloginip` varchar(40) DEFAULT NULL,
  `loginnum` mediumint(8) unsigned DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态（0表示冻结，1表示正常，3删除）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_user`
--

LOCK TABLES `think_user` WRITE;
/*!40000 ALTER TABLE `think_user` DISABLE KEYS */;
INSERT INTO `think_user` VALUES (1,'hunterhug','一只尼玛','e10adc3949ba59abbe56e057f20f883e','2016-03-13 17:07:56','0.0.0.0',81,'569929309@qq.com','2016-02-11 14:08:29','2016-02-11 21:57:16',0),(23,'eewfwef','wfw','e10adc3949ba59abbe56e057f20f883e',NULL,'0.0.0.0',0,'569929309@qq.com','2016-02-11 20:58:24',NULL,3),(21,'freferf','1234','e10adc3949ba59abbe56e057f20f883e',NULL,'0.0.0.0',0,'569929309@qq.com','2016-02-11 20:27:46',NULL,3),(22,'admin','666','e10adc3949ba59abbe56e057f20f883e','2016-02-13 17:20:51','0.0.0.0',2,'569929309@qq.com','2016-02-11 20:28:18',NULL,1),(19,'fergreg','111111','e10adc3949ba59abbe56e057f20f883e',NULL,'0.0.0.0',0,'569929309@qq.com','2016-02-11 20:26:58','2016-02-11 21:55:01',0),(20,'rtgrtg','rtgtrg','e10adc3949ba59abbe56e057f20f883e',NULL,'0.0.0.0',0,'569***@qq.com','2016-02-11 20:27:26',NULL,3),(24,'admins','1212','e10adc3949ba59abbe56e057f20f883e',NULL,'0.0.0.0',0,'569929309@qq.com','2016-02-11 21:14:18',NULL,0),(25,'123456','5656','e10adc3949ba59abbe56e057f20f883e',NULL,'0.0.0.0',0,'569929309@qq.com','2016-02-11 21:15:19',NULL,0),(26,'hunter','aa','e10adc3949ba59abbe56e057f20f883e','2016-02-13 14:56:39','0.0.0.0',1,'569929309@qq.com','2016-02-13 14:55:51',NULL,1),(27,'hunterhug1','111','e10adc3949ba59abbe56e057f20f883e',NULL,'0.0.0.0',0,'569929309@qq.com','2016-02-13 16:55:02',NULL,3),(28,'hunterhug2','xgxd','0ed1660671eb752038063c319c6615d5',NULL,'0.0.0.0',0,'569929309@qq.com','2016-02-14 13:26:12','2016-02-14 13:26:29',3),(29,'1234567','12345','fcea920f7412b5da7be0cf42b8c93759','2016-02-20 21:59:54','0.0.0.0',5,'569929309@qq.com','2016-02-16 22:31:57','2016-02-20 21:59:44',1);
/*!40000 ALTER TABLE `think_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_userinfo`
--

DROP TABLE IF EXISTS `think_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `realname` varchar(64) DEFAULT NULL COMMENT '真名',
  `personid` varchar(200) DEFAULT NULL COMMENT '身份证',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（0表示待审核，1表示已审核，2请求修改，3修改中）',
  `picture1` varchar(200) DEFAULT NULL COMMENT '身份证照片正',
  `picture2` varchar(200) DEFAULT NULL COMMENT '身份证反面',
  `phone` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `address` text COMMENT '通讯地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_userinfo`
--

LOCK TABLES `think_userinfo` WRITE;
/*!40000 ALTER TABLE `think_userinfo` DISABLE KEYS */;
INSERT INTO `think_userinfo` VALUES (1,'hunterhug','陈真','445121199304162023',1,'20160306/56dba2156a5ea.jpg','20160215/56c1ca71747ef.jpg','13247391421','中国台湾'),(2,'1234567','你三十岁','223323333333333333',1,'20160216/56c337380e54c.jpg','20160216/56c3373bb8a83.jpg','13247391421','fff');
/*!40000 ALTER TABLE `think_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_usersafe`
--

DROP TABLE IF EXISTS `think_usersafe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_usersafe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `question1` varchar(200) DEFAULT NULL,
  `question2` varchar(200) DEFAULT NULL,
  `question3` varchar(200) DEFAULT NULL,
  `answer1` varchar(200) DEFAULT NULL,
  `answer2` varchar(200) DEFAULT NULL,
  `answer3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_usersafe`
--

LOCK TABLES `think_usersafe` WRITE;
/*!40000 ALTER TABLE `think_usersafe` DISABLE KEYS */;
INSERT INTO `think_usersafe` VALUES (5,'hunterhug','我喜欢去哪里？','我最爱吃？','我最爱吃？','2','2','2'),(7,'1234567','我最爱吃？','我最爱吃？','我最爱吃？','1','1','1');
/*!40000 ALTER TABLE `think_usersafe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_webabout`
--

DROP TABLE IF EXISTS `think_webabout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_webabout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `about` mediumtext COMMENT '介绍',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  `title` varchar(200) DEFAULT NULL COMMENT '单页标题',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态（1表示开启，0表示关闭，3表示删除）',
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站介绍表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_webabout`
--

LOCK TABLES `think_webabout` WRITE;
/*!40000 ALTER TABLE `think_webabout` DISABLE KEYS */;
/*!40000 ALTER TABLE `think_webabout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_webinfo`
--

DROP TABLE IF EXISTS `think_webinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_webinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL COMMENT '网站拥有者',
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '网站标题',
  `desc` text COMMENT '网站描述',
  `logo` varchar(200) DEFAULT NULL COMMENT '网站logo',
  `address` text COMMENT '联系地址',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '网站状态（1表示开启，0表示关闭）',
  `phone` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `webinfo` text COMMENT '备案信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='网站信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_webinfo`
--

LOCK TABLES `think_webinfo` WRITE;
/*!40000 ALTER TABLE `think_webinfo` DISABLE KEYS */;
INSERT INTO `think_webinfo` VALUES (1,'hunterhug','中小企业智能管理系统','这是一个\r\n很好的网站','20160214/56c0516a60c72.jpg','广东省海珠区广东财经大学',0,'0768-6833066','粤ICP备16008312号-1'),(2,'hunter','DDD','DD','20160213/56bedbc433f1f.jpg','DD',1,'0768-6833066','DD'),(3,'admin','brtb','rtb',NULL,'brtb',1,'0768-6833066','bbr'),(4,'1234567','rrr','rrrrrr','20160217/56c497530527e.jpg','dd',1,'13247391421','ee');
/*!40000 ALTER TABLE `think_webinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-18  8:42:31