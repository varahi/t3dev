-- MySQL dump 10.13  Distrib 5.6.43, for Linux (x86_64)
--
-- Host: localhost    Database: typo3_dev
-- ------------------------------------------------------
-- Server version	5.6.43-log

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_dashboards` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `identifier` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgets` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES (1,0,1591975089,1591975089,2,0,0,0,0,'367f5cae6c5fa81ecdbc33f847c6efa7aaba6327','Моя панель инструментов','{\"b5582ba93d5c44e19486bca17afb1d51a666cbb2\":{\"identifier\":\"t3information\"},\"35b8acd4db155c7fe9e7c9238d20f1c07996cb60\":{\"identifier\":\"t3news\"},\"615accb164d7639eac3cd37a8729f00901d5cfd6\":{\"identifier\":\"docGettingStarted\"}}');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8mb4_unicode_ci,
  `explicit_allowdeny` text COLLATE utf8mb4_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8mb4_unicode_ci,
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `pagetypes_select` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8mb4_unicode_ci,
  `tables_modify` text COLLATE utf8mb4_unicode_ci,
  `groupMods` text COLLATE utf8mb4_unicode_ci,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `file_permissions` text COLLATE utf8mb4_unicode_ci,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `subgroup` text COLLATE utf8mb4_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `category_perms` text COLLATE utf8mb4_unicode_ci,
  `availableWidgets` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` longblob,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `options` smallint(5) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8mb4_unicode_ci,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci,
  `file_permissions` text COLLATE utf8mb4_unicode_ci,
  `workspace_perms` smallint(6) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text COLLATE utf8mb4_unicode_ci,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `category_perms` text COLLATE utf8mb4_unicode_ci,
  `tx_news_categorymounts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password_reset_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1571142697,1571142697,0,0,0,0,0,NULL,'_cli_',0,'$argon2i$v=19$m=65536,t=16,p=2$RlZxcDA3bDVoRE1MeDV6MQ$U8PMwSO30r+ycYgusl8ivGN73aeZFfyr3+RmozY+EHk',1,'','','',NULL,0,'',NULL,'','a:13:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:15:\"help_AboutAbout\";s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1571142697;}',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL,'',''),(2,0,1571142800,1571142800,0,0,0,0,0,NULL,'t3dev',0,'$argon2i$v=19$m=65536,t=16,p=2$eENRLk9MZjgyV3FNQU1pbQ$gZZ0H5XUuE9QdT5h+++3taI53IliILVsjGeumnzLoMs',1,'','','',NULL,0,'',NULL,'','a:39:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:14:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:353:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":12:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:12:\"\0*\0timeFrame\";i:0;s:9:\"\0*\0action\";i:-1;s:14:\"\0*\0groupByPage\";b:0;s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;}\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:23:{s:32:\"86205c5935270b8ee413592ec1b62292\";a:4:{i:0;s:71:\"«Т3 Студия» - разработка сайтов на TYPO3 CMS\";i:1;a:6:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:35:\"&edit%5Bsys_template%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"5c29b66d3610949be77d8b197754163d\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:12;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:5:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"list\";s:9:\"list_type\";s:8:\"news_pi1\";s:23:\"tx_gridelements_columns\";s:1:\"0\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:263:\"&edit%5Btt_content%5D%5B12%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=list&defVals%5Btt_content%5D%5Blist_type%5D=news_pi1&defVals%5Btt_content%5D%5Btx_gridelements_columns%5D=0\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:12;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"61765c6a3de2e0ba09d6230397278147\";a:4:{i:0;s:34:\"<em>[Без названия]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:12;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B12%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:12;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"ba3c4f958c0df74c2141e33b51d1caae\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:13;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:5:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"list\";s:9:\"list_type\";s:8:\"news_pi1\";s:23:\"tx_gridelements_columns\";s:1:\"0\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:263:\"&edit%5Btt_content%5D%5B13%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=list&defVals%5Btt_content%5D%5Blist_type%5D=news_pi1&defVals%5Btt_content%5D%5Btx_gridelements_columns%5D=0\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:13;s:3:\"pid\";i:8;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"0d1c7dfc75595e7311ece17f44305463\";a:4:{i:0;s:71:\"Немного об Extbase (MVC фреймворк внутри TYPO3)\";i:1;a:6:{s:4:\"edit\";a:1:{s:25:\"tx_news_domain_model_news\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:48:\"&edit%5Btx_news_domain_model_news%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:25:\"tx_news_domain_model_news\";s:3:\"uid\";i:2;s:3:\"pid\";i:19;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"3af505b920348c1a79bf62ea28cbec90\";a:4:{i:0;s:8:\"О TYPO3\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B5%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:5;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"faf05e94ae1a714a094874cd432eba99\";a:4:{i:0;s:56:\"Система управления сайтами TYPO3\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:14;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:4:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:7:\"textpic\";s:23:\"tx_gridelements_columns\";s:1:\"0\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:218:\"&edit%5Btt_content%5D%5B14%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=textpic&defVals%5Btt_content%5D%5Btx_gridelements_columns%5D=0\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:14;s:3:\"pid\";i:16;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c31c3d00814edbf9b2ddab640af3f55d\";a:4:{i:0;s:56:\"Система управления сайтами TYPO3\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:14;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B14%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:14;s:3:\"pid\";i:16;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"8900c77103e2f451ea79f6f9dccf0b4b\";a:4:{i:0;s:33:\"Страницы новостей\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:20;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B20%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:20;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"4869cf322808343c3d6ca616a691b6a3\";a:4:{i:0;s:66:\"TYPO3 Neos - первые впечатления от работы\";i:1;a:6:{s:4:\"edit\";a:1:{s:25:\"tx_news_domain_model_news\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:48:\"&edit%5Btx_news_domain_model_news%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:25:\"tx_news_domain_model_news\";s:3:\"uid\";i:1;s:3:\"pid\";i:19;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"f2e55f66d3c30bf4b08228e399515d71\";a:4:{i:0;s:235:\"<span title=\"Наиболее важные аспекты выбора TYPO3 для руководителей предприятий:\">Наиболее важные аспекты выбора TYPO3 для руководит...</span>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:18;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:4:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"text\";s:23:\"tx_gridelements_columns\";s:1:\"0\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:215:\"&edit%5Btt_content%5D%5B18%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=text&defVals%5Btt_content%5D%5Btx_gridelements_columns%5D=0\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:18;s:3:\"pid\";i:17;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"2e7d52ffc2a9f8f7c051b25430d0e338\";a:4:{i:0;s:251:\"<span title=\"Наиболее важные аспекты выбора TYPO3 для администраторов и редакторов сайта:\">Наиболее важные аспекты выбора TYPO3 для администр...</span>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:19;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:4:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"text\";s:23:\"tx_gridelements_columns\";s:1:\"0\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:215:\"&edit%5Btt_content%5D%5B19%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=text&defVals%5Btt_content%5D%5Btx_gridelements_columns%5D=0\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:19;s:3:\"pid\";i:17;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"22cbd9b921ab5848edaac19c41752085\";a:4:{i:0;s:251:\"<span title=\"Наиболее важные аспекты выбора TYPO3 для администраторов и редакторов сайта:\">Наиболее важные аспекты выбора TYPO3 для администр...</span>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:19;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B19%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:19;s:3:\"pid\";i:17;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"8f5796bca42f8bd6dc35e07ad5f5b9d4\";a:4:{i:0;s:46:\"Демо сайты на TYPO3 CMS и Neos CMS\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:20;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:4:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:6:\"header\";s:23:\"tx_gridelements_columns\";s:1:\"0\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:217:\"&edit%5Btt_content%5D%5B20%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=header&defVals%5Btt_content%5D%5Btx_gridelements_columns%5D=0\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:20;s:3:\"pid\";i:18;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"c312013d83c1a6ad7fec8b36a37ba3c8\";a:4:{i:0;s:54:\"Почему нужно использовать TYPO3\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:17;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"071da5ee18fb0676a687d80d8adcd3f2\";a:4:{i:0;s:67:\"Демо сайты на назодятся в разработке\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:21;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:4:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"text\";s:23:\"tx_gridelements_columns\";s:1:\"0\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:215:\"&edit%5Btt_content%5D%5B21%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=text&defVals%5Btt_content%5D%5Btx_gridelements_columns%5D=0\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:21;s:3:\"pid\";i:18;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"f2cda034b8fdf31e30dd385cd7fc0887\";a:4:{i:0;s:33:\"Новости - подробно\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:8;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B8%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:8;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"696addfecc296b326ff6e9f04c7ff3e1\";a:4:{i:0;s:14:\"Главная\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"9dfac8d2d5461ece439c1fe60b8ae39d\";a:4:{i:0;s:35:\"Хранилище новостей\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:19;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B19%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:19;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"a1e6cf62423e9d1594c4d8e78f64efe7\";a:4:{i:0;s:31:\"Общий обзор cms TYPO3\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:21;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B21%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:21;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"1fb361b8b98734379ffe9ebbb815a72b\";a:4:{i:0;s:29:\"Информация о TYPO3\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:16;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B16%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:16;s:3:\"pid\";i:5;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"45c776bcfdb3b1f389c0eee97ec316b5\";a:4:{i:0;s:25:\"Вышла TYPO3 v10 LTS \";i:1;a:6:{s:4:\"edit\";a:1:{s:25:\"tx_news_domain_model_news\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:48:\"&edit%5Btx_news_domain_model_news%5D%5B3%5D=edit\";i:3;a:5:{s:5:\"table\";s:25:\"tx_news_domain_model_news\";s:3:\"uid\";i:3;s:3:\"pid\";i:19;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"f87337ea07fd5e46b7487a4d63a03a03\";a:4:{i:0;s:64:\"Гарантийное обслуживание включает\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:8;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B8%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:8;s:3:\"pid\";i:10;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"ea5808446ef89a93a3ae0c95ac46d0d0\";}s:6:\"web_ts\";a:5:{s:8:\"function\";s:88:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateConstantEditorModuleFunctionController\";s:19:\"constant_editor_cat\";s:7:\"content\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:23:\"ts_browser_showComments\";s:1:\"1\";}s:8:\"web_list\";a:1:{s:15:\"bigControlPanel\";s:1:\"1\";}s:7:\"tx_solr\";s:116:\"O:53:\"ApacheSolrForTypo3\\Solr\\System\\Mvc\\Backend\\ModuleData\":2:{s:7:\"\0*\0site\";N;s:7:\"\0*\0core\";s:13:\"/solr/core_en\";}\";s:20:\"system_txschedulerM1\";a:1:{s:8:\"function\";s:9:\"scheduler\";}s:13:\"system_config\";a:2:{s:4:\"tree\";s:8:\"confVars\";s:11:\"regexSearch\";b:0;}s:16:\"opendocs::recent\";a:3:{s:32:\"ea5808446ef89a93a3ae0c95ac46d0d0\";a:4:{i:0;s:83:\"Условия соблюдения гарантийных обязательств\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:9;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B9%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:9;s:3:\"pid\";i:10;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"20ed475662b97ac33d3aa853a74f9c9c\";a:4:{i:0;s:19:\"О Компании\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:2;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"96ad24e4b460061620d725ace3306000\";a:4:{i:0;s:203:\"<span title=\"T3 Студия - создание и поддержка сайтов на TYPO3 CMS и Neos CMS\">T3 Студия - создание и поддержка сайтов на TYPO3 C...</span>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";s:1:\"0\";s:9:\"workspace\";N;}i:2;s:42:\"&edit%5Btt_content%5D%5B2%5D=edit&noView=0\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:2;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:9:\"clipboard\";a:5:{s:6:\"normal\";a:0:{}s:5:\"tab_1\";a:2:{s:4:\"mode\";s:0:\"\";s:2:\"el\";a:0:{}}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:5:\"tab_1\";}s:16:\"browse_links.php\";a:2:{s:10:\"expandPage\";s:1:\"0\";s:12:\"expandFolder\";s:15:\"1:/user_upload/\";}s:9:\"file_list\";a:1:{s:13:\"displayThumbs\";s:1:\"1\";}s:28:\"dashboard/current_dashboard/\";s:40:\"367f5cae6c5fa81ecdbc33f847c6efa7aaba6327\";}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:15:\"help_AboutAbout\";s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"ru\";s:19:\"firstLoginTimeStamp\";i:1571142808;s:15:\"moduleSessionID\";a:13:{s:10:\"web_layout\";s:32:\"d56a8cfc621fad53269be206a366e61c\";s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:32:\"d56a8cfc621fad53269be206a366e61c\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"85cc4cc5f6a52c75e5e2613b57f3c7a3\";s:10:\"FormEngine\";s:32:\"85cc4cc5f6a52c75e5e2613b57f3c7a3\";s:6:\"web_ts\";s:32:\"85cc4cc5f6a52c75e5e2613b57f3c7a3\";s:8:\"web_list\";s:32:\"e2b6931c7415c4f23d3d231ea36664f4\";s:7:\"tx_solr\";s:32:\"3ff4dbd7f4a3ba9271f149b670eb943a\";s:20:\"system_txschedulerM1\";s:32:\"3ff4dbd7f4a3ba9271f149b670eb943a\";s:16:\"opendocs::recent\";s:32:\"85cc4cc5f6a52c75e5e2613b57f3c7a3\";s:9:\"clipboard\";s:32:\"e2b6931c7415c4f23d3d231ea36664f4\";s:16:\"browse_links.php\";s:32:\"85cc4cc5f6a52c75e5e2613b57f3c7a3\";s:9:\"file_list\";s:32:\"85cc4cc5f6a52c75e5e2613b57f3c7a3\";s:28:\"dashboard/current_dashboard/\";s:32:\"85cc4cc5f6a52c75e5e2613b57f3c7a3\";}s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1571142889}}\";s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:0:\"\";s:15:\"recursiveDelete\";i:0;s:18:\"resetConfiguration\";s:0:\"\";s:42:\"dragAndDropHideNewElementWizardInfoOverlay\";i:0;s:17:\"hideColumnHeaders\";i:0;s:18:\"hideContentPreview\";i:0;s:19:\"showGridInformation\";i:0;s:19:\"disableDragInWizard\";i:0;s:25:\"disableCopyFromPageButton\";i:0;s:11:\"newsoverlay\";s:0:\"\";s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:5:{s:3:\"0_1\";s:1:\"1\";s:3:\"0_3\";s:1:\"1\";s:3:\"0_2\";s:1:\"1\";s:3:\"0_4\";s:1:\"1\";s:3:\"0_5\";s:1:\"1\";}}}}s:10:\"inlineView\";s:274:\"{\"site\":{\"1\":{\"site_language\":[\"0\"]}},\"tx_news_domain_model_news\":{\"2\":{\"sys_file_reference\":[1]},\"1\":{\"sys_file_reference\":{\"4\":\"\"},\"tt_content\":[15,16,17]},\"3\":{\"sys_file_reference\":{\"4\":\"5\"},\"tx_news_domain_model_link\":[1]}},\"tt_content\":{\"14\":{\"sys_file_reference\":[]}}}\";s:7:\"reports\";a:1:{s:9:\"selection\";a:2:{s:9:\"extension\";s:10:\"tx_reports\";s:6:\"report\";s:6:\"status\";}}s:16:\"frontend_editing\";i:1;s:24:\"frontend_editing_overlay\";i:0;s:21:\"hideYoastInPageModule\";i:0;s:10:\"modulemenu\";s:2:\"{}\";s:11:\"browseTrees\";a:1:{s:11:\"browsePages\";s:39:\"[{\"0\":1,\"1\":1,\"2\":1,\"4\":1,\"3\":1,\"5\":1}]\";}}',NULL,NULL,1,'',0,NULL,1591963839,0,NULL,0,NULL,'','');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache`
--

LOCK TABLES `cache_adminpanel_requestcache` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache_tags`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache_tags`
--

LOCK TABLES `cache_adminpanel_requestcache_tags` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_news_category`
--

DROP TABLE IF EXISTS `cache_news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_news_category`
--

LOCK TABLES `cache_news_category` WRITE;
/*!40000 ALTER TABLE `cache_news_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_news_category_tags`
--

DROP TABLE IF EXISTS `cache_news_category_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_news_category_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_news_category_tags`
--

LOCK TABLES `cache_news_category_tags` WRITE;
/*!40000 ALTER TABLE `cache_news_category_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_news_category_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext COLLATE utf8mb4_unicode_ci,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_vhs_main`
--

DROP TABLE IF EXISTS `cache_vhs_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_vhs_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_vhs_main`
--

LOCK TABLES `cache_vhs_main` WRITE;
/*!40000 ALTER TABLE `cache_vhs_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_vhs_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_vhs_main_tags`
--

DROP TABLE IF EXISTS `cache_vhs_main_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_vhs_main_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_vhs_main_tags`
--

LOCK TABLES `cache_vhs_main_tags` WRITE;
/*!40000 ALTER TABLE `cache_vhs_main_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_vhs_main_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_vhs_markdown`
--

DROP TABLE IF EXISTS `cache_vhs_markdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_vhs_markdown` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_vhs_markdown`
--

LOCK TABLES `cache_vhs_markdown` WRITE;
/*!40000 ALTER TABLE `cache_vhs_markdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_vhs_markdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_vhs_markdown_tags`
--

DROP TABLE IF EXISTS `cache_vhs_markdown_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_vhs_markdown_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_vhs_markdown_tags`
--

LOCK TABLES `cache_vhs_markdown_tags` WRITE;
/*!40000 ALTER TABLE `cache_vhs_markdown_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_vhs_markdown_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8mb4_unicode_ci,
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `ses_data` mediumblob,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8mb4_unicode_ci,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` blob,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8mb4_unicode_ci,
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci,
  `felogin_forgotHash` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `rowDescription` text COLLATE utf8mb4_unicode_ci,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_source` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text COLLATE utf8mb4_unicode_ci,
  `is_siteroot` smallint(6) NOT NULL DEFAULT '0',
  `php_tree_stop` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text COLLATE utf8mb4_unicode_ci,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT '0',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT '0',
  `fe_login_mode` smallint(6) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8mb4_unicode_ci,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT '0',
  `no_follow` smallint(6) NOT NULL DEFAULT '0',
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `og_image` int(10) unsigned NOT NULL DEFAULT '0',
  `twitter_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8mb4_unicode_ci,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT '0',
  `canonical_link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hide_breadcrumb` int(10) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `twitter_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitemap_priority` decimal(1,1) NOT NULL DEFAULT '0.5',
  `sitemap_changefreq` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tx_csseo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tx_csseo_tw_creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tx_csseo_tw_site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `slug` (`slug`(127)),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1591973737,1571142907,2,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'a:54:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:16:\"tx_csseo_keyword\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:19:\"tx_csseo_tw_creator\";N;s:16:\"tx_csseo_tw_site\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:15:\"hide_breadcrumb\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Главная','/',1,'',1,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591973737,'','',0,'','','',0,0,0,0,0,0,'pagets__1','pagets__2','',0,0,'',0,0,'','',0,'','',0,'',1,0,'summary',0.5,'','','',''),(2,1,1591799206,1571143093,2,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'a:33:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:13:\"shortcut_mode\";N;s:8:\"shortcut\";N;s:8:\"abstract\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"target\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'О Компании','/o-kompanii',4,'',0,0,'',9,0,'',0,'',0,0,'',0,'',0,'',0,1591798886,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'summary',0.5,'','','',''),(3,1,1591801598,1571143111,2,0,0,0,0,'',512,'',0,0,0,0,NULL,0,'a:53:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:16:\"tx_csseo_keyword\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:19:\"tx_csseo_tw_creator\";N;s:16:\"tx_csseo_tw_site\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Новости','/novosti',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591975159,'','',0,'','','',0,0,0,0,0,0,'pagets__1','pagets__1','',0,0,'',0,0,'','',0,'','',0,'',0,0,'summary',0.5,'','','',''),(4,1,1591801544,1571143121,2,0,0,0,0,'',768,'',0,0,0,0,NULL,0,'a:33:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:13:\"shortcut_mode\";N;s:8:\"shortcut\";N;s:8:\"abstract\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"target\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Услуги','/uslugi',4,'',0,0,'',12,0,'',0,'',0,0,'',0,'',0,'',0,1571143121,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'summary',0.5,'','','',''),(5,1,1591968447,1571143134,2,0,0,0,0,'',1024,'',0,0,0,0,NULL,0,'a:33:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:13:\"shortcut_mode\";N;s:8:\"shortcut\";N;s:8:\"abstract\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"target\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'О TYPO3','/o-typo3',4,'',0,0,'',16,0,'',0,'',0,0,'',0,'',0,'',0,1571143134,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'summary',0.5,'','','',''),(6,1,1591885944,1571143155,2,0,0,0,0,'',1280,'',0,0,0,0,NULL,0,'a:1:{s:5:\"title\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Наши клиенты','/portfolio',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591885944,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(7,1,1571143166,1571143166,2,0,0,0,0,'',1536,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Контакты','/kontakty',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1571143166,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(8,3,1571144041,1571144037,2,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Новости - подробно','/novosti-podrobno',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591977301,'','',0,'','','',1,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(9,2,1571144068,1571144064,2,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Информация','/informacija',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591799162,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(10,2,1591211398,1571144086,2,0,0,0,0,'',512,'',0,0,0,0,NULL,0,'a:1:{s:4:\"slug\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Гарантия на сайт','/o-kompanii/garantija-na-sait',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591977448,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(11,2,1591211398,1571144102,2,0,0,0,0,'',768,'',0,0,0,0,NULL,0,'a:1:{s:4:\"slug\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Документы реквизиты и договора','/o-kompanii/dokumenty-rekvizity-i-dogovora',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591211398,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(12,4,1591801560,1571144123,2,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'a:53:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:16:\"tx_csseo_keyword\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:19:\"tx_csseo_tw_creator\";N;s:16:\"tx_csseo_tw_site\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Создание сайта на TYPO3 CMS','/uslugi/sozdanie-saita-na-typo3-cms',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591802024,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'summary',0.5,'','','',''),(13,4,1571144143,1571144143,2,0,0,0,0,'',512,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Обновление TYPO3 сайтов','/uslugi/obnovlenie-typo3-saitov',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1571144143,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(14,4,1571144158,1571144158,2,0,0,0,0,'',768,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Переход на TYPO3 CMS','/uslugi/perekhod-na-typo3-cms',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1571144158,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(15,4,1571144171,1571144171,2,0,0,0,0,'',1024,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Техническая поддержка TYPO3 сайтов','/uslugi/tekhnicheskaja-podderzhka-typo3-saitov',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1571144171,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(16,5,1591974431,1571144185,2,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'a:54:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:16:\"tx_csseo_keyword\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:19:\"tx_csseo_tw_creator\";N;s:16:\"tx_csseo_tw_site\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:15:\"hide_breadcrumb\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Информация о TYPO3','/o-typo3/informacija-o-typo3',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591974431,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'summary',0.5,'','','',''),(17,5,1571144204,1571144204,2,0,0,0,0,'',512,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Почему TYPO3','/o-typo3/pochemu-typo3',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591973547,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(18,5,1571144220,1571144220,2,0,0,0,0,'',768,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Демо сайты','/o-typo3/demo-saity',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1591973591,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(19,0,1591974059,1571144262,2,0,0,0,0,'',512,'',0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,2,0,31,27,0,'Хранилище новостей','/2',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,0,'','news',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'',0.5,'','','',''),(20,3,1591971946,1591971928,2,0,0,0,0,'',128,'',0,0,0,0,NULL,0,'a:13:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:6:\"hidden\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Страницы новостей','/1',254,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0,0,'summary',0.0,'','','',''),(21,5,1591974409,1591974368,2,0,0,0,0,'',384,'',0,0,0,0,NULL,0,'a:54:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:16:\"tx_csseo_keyword\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:19:\"tx_csseo_tw_creator\";N;s:16:\"tx_csseo_tw_site\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:15:\"hide_breadcrumb\";N;}',0,0,0,0,0,0,0,2,0,31,27,0,'Общий обзор CMS TYPO3','/o-typo3/obshchii-obzor-cms-typo3',1,'',0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1591974409,'','',0,'','','',0,0,0,0,0,0,'','','',0,0,'',0,0,'',NULL,0,'',NULL,0,'',0,0,'summary',0.5,'','','','');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `images` int(10) unsigned DEFAULT '0',
  `single_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(11) NOT NULL DEFAULT '0',
  `import_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES (1,19,1591797498,1591797498,2,0,0,0,0,256,'',0,0,NULL,0,'',0,0,0,0,0,0,0,'Новости компании',0,0,'0',0,0,0,'','','','','','','novosti-kompanii'),(2,19,1591797511,1591797511,2,0,0,0,0,128,'',0,0,NULL,0,'',0,0,0,0,0,0,0,'Новости TYPO3',0,0,'0',0,0,0,'','','','','','','novosti-typo3'),(3,19,1591797548,1591797548,2,0,0,0,0,64,'',0,0,NULL,0,'',0,0,0,0,0,0,0,'Новости Neos CMS',0,0,'0',0,0,0,'','','','','','','novosti-neos-cms'),(4,19,1591797562,1591797562,2,0,0,0,0,32,'',0,0,NULL,0,'',0,0,0,0,0,0,0,'Symfony',0,0,'0',0,0,0,'','','','','','','symfony'),(5,19,1591797578,1591797578,2,0,0,0,0,16,'',0,0,NULL,0,'',0,0,0,0,0,0,0,'Разное',0,0,'0',0,0,0,'','','','','','','raznoe');
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
INSERT INTO `sys_category_record_mm` VALUES (5,1,'tx_news_domain_model_news','categories',0,1),(3,1,'tx_news_domain_model_news','categories',0,2),(2,2,'tx_news_domain_model_news','categories',0,1);
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8mb4_unicode_ci,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` smallint(6) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text COLLATE utf8mb4_unicode_ci,
  `identifier_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1571148310,0,0,0,'2',0,'/typo3conf/ext/tmpl/Resources/Public/Images/typo3.png','5a73c0af4cb94d4011aefc709a3f0ee4337e9ff7','49629f1701456359454d3928f72d4e55a691321a','png','image/png','typo3.png','49d2b81579ea1b273f7883d6aa8fe07bee0a1b86',10160,1571146260,1571145799),(2,0,1591211884,0,0,0,'2',0,'/typo3conf/ext/yoast_seo/Resources/Public/Images/LogoMaxServ2019.png','8447f2488a06289d6710f3f45333e15c13d94ebc','541e5745f988b6d8decd9a07378689157358d577','png','image/png','LogoMaxServ2019.png','fb3fcb62d465b1f5315d50206dae2909b06c3940',79473,1591210285,1587581177),(3,0,1591211885,0,0,0,'2',0,'/typo3conf/ext/yoast_seo/Resources/Public/Images/LogoYoast.png','59e233908f9a8e5a33e7d24ee2ba56fd8d6ff564','541e5745f988b6d8decd9a07378689157358d577','png','image/png','LogoYoast.png','601ba6cfe573606e3b143bd89b41ceb628eb65b0',7694,1591210285,1587581177),(4,0,1591211885,0,0,0,'2',0,'/typo3conf/ext/yoast_seo/Resources/Public/Images/Basic_course_banner.png','bf257e5fae7072c7bc6267523bb70a2cc9e1a443','541e5745f988b6d8decd9a07378689157358d577','png','image/png','Basic_course_banner.png','a95f06c5d6e0f2155a3b72c9005bc3c99647e4dd',108271,1591210285,1587581177),(5,0,1591211885,0,0,0,'2',0,'/typo3conf/ext/yoast_seo/Resources/Public/Images/Copywriting_course_banner.png','3dd756d6875802bef450db36a37a6a0c3ef5c788','541e5745f988b6d8decd9a07378689157358d577','png','image/png','Copywriting_course_banner.png','82a22cbb52833b2263e127066c466bd91baebf72',131662,1591210285,1587581177),(6,0,1591211885,0,0,0,'2',0,'/typo3conf/ext/yoast_seo/Resources/Public/Images/Multilingual_SEO_banner.png','f2b575d3f71cb5e35e8e477f032ff14770e903fe','541e5745f988b6d8decd9a07378689157358d577','png','image/png','Multilingual_SEO_banner.png','22c27fd05af817c570bdb7145b0e370509b56d54',173027,1591210285,1587581177),(7,0,1591211885,0,0,0,'2',0,'/typo3conf/ext/yoast_seo/Resources/Public/Images/Site_structure_banner.png','c0f2fe2e1e89b88a6822afa004b638c5e30dc59b','541e5745f988b6d8decd9a07378689157358d577','png','image/png','Site_structure_banner.png','61aa1ffc5acf347be9a8310a5a176c9cda5cc920',148274,1591210285,1587581177),(8,0,1591211885,0,0,0,'2',0,'/typo3conf/ext/yoast_seo/Resources/Public/Images/Structured_data_banner.png','0e8a9a3af5b46a0300980db26fbd44828c52919c','541e5745f988b6d8decd9a07378689157358d577','png','image/png','Structured_data_banner.png','f053c743f5dcef7ba0d02fb2ebbbfdf809b57b5e',131359,1591210285,1587581177),(9,0,1591211885,0,0,0,'2',0,'/typo3conf/ext/yoast_seo/Resources/Public/Images/Technical_SEO_1_banner.png','20ab620712db1fdb7f425f3b9ea455d10d39368d','541e5745f988b6d8decd9a07378689157358d577','png','image/png','Technical_SEO_1_banner.png','54a103c31535b0a51811702366ad9696f39987e9',171228,1591210285,1587581177),(10,0,1591795762,0,0,0,'2',0,'/typo3conf/ext/tmpl/Resources/Public/Icons/arrow-down.png','4b2e16e69fef6dd89439de57cc6e6339aebee248','57be52a140c0f39aabee65d02c2a08f50160b2da','png','image/png','arrow-down.png','024bab08f8fdebd32b5ad608602f928dc9b5053f',4128,1571146262,1571145798),(11,0,1591796301,0,0,0,'2',0,'/typo3conf/ext/tmpl/Resources/Public/Icons/licence.png','6415eda39d1c1df7572b81288665d6dc733e0b8d','57be52a140c0f39aabee65d02c2a08f50160b2da','png','image/png','licence.png','d871bbfdd359e57af733774dd9381a7564ed0e75',4314,1571146262,1571145798),(12,0,1591801955,0,0,0,'2',0,'/typo3conf/ext/tmpl/Resources/Public/Icons/settings.png','8144ff9509fd5dca2ed919c23e6a4c286481e568','57be52a140c0f39aabee65d02c2a08f50160b2da','png','image/png','settings.png','161c2b38b1de772daedec430ad338ea94bad5085',5149,1571146262,1571145798),(13,0,1591967336,0,0,1,'2',0,'/user_upload/extbase.jpg','6851b56053895bf7eaa7ac12baebb6e882efdd50','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','extbase.jpg','b5264efa8884a142ebe0c276b0a9d58fd2375fd6',221974,1591967336,1591967336),(14,0,1591968650,0,0,1,'2',0,'/user_upload/Typo3.png','b475f25ce153918c6adcf3ce21119d241f8a2ac8','19669f1e02c2f16705ec7587044c66443be70725','png','image/png','Typo3.png','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2',22283,1591968650,1591968650),(15,0,1591971733,0,0,0,'2',0,'/typo3conf/ext/tmpl/Resources/Public/Icons/document_pencil.png','32a3a1cfdef365d8bf11b0874cfc93b9ac311566','57be52a140c0f39aabee65d02c2a08f50160b2da','png','image/png','document_pencil.png','cae17e52012148d022d855c6a2486b3dd9a9aa89',4633,1571146262,1571145798),(16,0,1591971997,0,0,1,'2',0,'/user_upload/rentspecstroy.jpg','55314176b97115bd608fc4b61f5a00c6cff9cf85','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','rentspecstroy.jpg','915e218861ed06ea1425d1928d3141ed9e1c8971',357690,1591971997,1591971997),(17,0,1591973552,0,0,0,'2',0,'/typo3conf/ext/tmpl/Resources/Public/Icons/document.png','62265a059d9cd6c99120fab48521fe81b7b8b104','57be52a140c0f39aabee65d02c2a08f50160b2da','png','image/png','document.png','ea2e358efab47bfe97f1fad3e61b3c993ddcc55b',3910,1571146262,1571145798);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text COLLATE utf8mb4_unicode_ci,
  `recursive` smallint(6) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `alternative` text COLLATE utf8mb4_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1571148310,1571148309,2,0,0,NULL,0,'',0,0,0,0,0,0,0,1,NULL,129,156,NULL,NULL,0),(2,0,1591211884,1591211884,2,0,0,NULL,0,'',0,0,0,0,0,0,0,2,NULL,1467,391,NULL,NULL,0),(3,0,1591211884,1591211884,2,0,0,NULL,0,'',0,0,0,0,0,0,0,3,NULL,520,240,NULL,NULL,0),(4,0,1591211884,1591211884,2,0,0,NULL,0,'',0,0,0,0,0,0,0,4,NULL,600,470,NULL,NULL,0),(5,0,1591211884,1591211884,2,0,0,NULL,0,'',0,0,0,0,0,0,0,5,NULL,600,470,NULL,NULL,0),(6,0,1591211884,1591211884,2,0,0,NULL,0,'',0,0,0,0,0,0,0,6,NULL,600,470,NULL,NULL,0),(7,0,1591211884,1591211884,2,0,0,NULL,0,'',0,0,0,0,0,0,0,7,NULL,600,470,NULL,NULL,0),(8,0,1591211884,1591211884,2,0,0,NULL,0,'',0,0,0,0,0,0,0,8,NULL,600,470,NULL,NULL,0),(9,0,1591211884,1591211884,2,0,0,NULL,0,'',0,0,0,0,0,0,0,9,NULL,600,470,NULL,NULL,0),(10,0,1591795761,1591795761,2,0,0,NULL,0,'',0,0,0,0,0,0,0,10,NULL,32,32,NULL,NULL,0),(11,0,1591796301,1591796301,2,0,0,NULL,0,'',0,0,0,0,0,0,0,11,NULL,32,32,NULL,NULL,0),(12,0,1591801955,1591801955,2,0,0,NULL,0,'',0,0,0,0,0,0,0,12,NULL,32,32,NULL,NULL,0),(13,0,1591967336,1591967336,2,0,0,NULL,0,'',0,0,0,0,0,0,0,13,NULL,1366,768,NULL,NULL,0),(14,0,1591968650,1591968650,2,0,0,NULL,0,'',0,0,0,0,0,0,0,14,NULL,600,434,NULL,NULL,0),(15,0,1591971731,1591971731,0,0,0,NULL,0,'',0,0,0,0,0,0,0,15,NULL,32,32,NULL,NULL,0),(16,0,1591971997,1591971997,2,0,0,NULL,0,'',0,0,0,0,0,0,0,16,NULL,1069,768,NULL,NULL,0),(17,0,1591973552,1591973552,0,0,0,NULL,0,'',0,0,0,0,0,0,0,17,NULL,32,32,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci,
  `configuration` blob,
  `configurationsha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1589717783,1571148309,0,1,'',NULL,'a:11:{s:5:\"width\";s:3:\"129\";s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','0d4638c9ecfa3505c20ebb7e24001cf3078b35e4','49d2b81579ea1b273f7883d6aa8fe07bee0a1b86','Image.CropScaleMask','ab8d4c8e6c',NULL,NULL),(2,1589721135,1589721135,0,1,'',NULL,'a:11:{s:5:\"width\";i:129;s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','ecf24c55d796fd32ffa59a69aec92d5595030d9c','49d2b81579ea1b273f7883d6aa8fe07bee0a1b86','Image.CropScaleMask','a42691fafb',NULL,NULL),(3,1591211885,1591211885,0,2,'/typo3temp/assets/_processed_/2/4/csm_LogoMaxServ2019_0e763907f7.png','csm_LogoMaxServ2019_0e763907f7.png','a:7:{s:5:\"width\";N;s:6:\"height\";i:50;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','dac50fe8d93741b5529ebb87b2389e652c16ee5a','fb3fcb62d465b1f5315d50206dae2909b06c3940','Image.CropScaleMask','0e763907f7',188,50),(4,1591211885,1591211885,0,3,'/typo3temp/assets/_processed_/0/0/csm_LogoYoast_6b11680a84.png','csm_LogoYoast_6b11680a84.png','a:7:{s:5:\"width\";N;s:6:\"height\";i:60;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','62d7552df6ab4f97c8cddfe7a4734e087c95cf26','601ba6cfe573606e3b143bd89b41ceb628eb65b0','Image.CropScaleMask','6b11680a84',130,60),(5,1591211885,1591211885,0,4,'/typo3temp/assets/_processed_/1/3/csm_Basic_course_banner_fe1feadbb2.png','csm_Basic_course_banner_fe1feadbb2.png','a:7:{s:5:\"width\";i:400;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','01aa9ddbde7509b1c73b0a23f41664fddf9f1940','a95f06c5d6e0f2155a3b72c9005bc3c99647e4dd','Image.CropScaleMask','fe1feadbb2',400,314),(6,1591211885,1591211885,0,5,'/typo3temp/assets/_processed_/d/4/csm_Copywriting_course_banner_39d2a7f9c5.png','csm_Copywriting_course_banner_39d2a7f9c5.png','a:7:{s:5:\"width\";i:400;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','01aa9ddbde7509b1c73b0a23f41664fddf9f1940','82a22cbb52833b2263e127066c466bd91baebf72','Image.CropScaleMask','39d2a7f9c5',400,314),(7,1591211885,1591211885,0,6,'/typo3temp/assets/_processed_/8/d/csm_Multilingual_SEO_banner_3318a1bed2.png','csm_Multilingual_SEO_banner_3318a1bed2.png','a:7:{s:5:\"width\";i:400;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','01aa9ddbde7509b1c73b0a23f41664fddf9f1940','22c27fd05af817c570bdb7145b0e370509b56d54','Image.CropScaleMask','3318a1bed2',400,314),(8,1591211885,1591211885,0,7,'/typo3temp/assets/_processed_/2/9/csm_Site_structure_banner_9c658a9b38.png','csm_Site_structure_banner_9c658a9b38.png','a:7:{s:5:\"width\";i:400;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','01aa9ddbde7509b1c73b0a23f41664fddf9f1940','61aa1ffc5acf347be9a8310a5a176c9cda5cc920','Image.CropScaleMask','9c658a9b38',400,314),(9,1591211885,1591211885,0,8,'/typo3temp/assets/_processed_/7/2/csm_Structured_data_banner_6fc1b49656.png','csm_Structured_data_banner_6fc1b49656.png','a:7:{s:5:\"width\";i:400;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','01aa9ddbde7509b1c73b0a23f41664fddf9f1940','f053c743f5dcef7ba0d02fb2ebbbfdf809b57b5e','Image.CropScaleMask','6fc1b49656',400,314),(10,1591211885,1591211885,0,9,'/typo3temp/assets/_processed_/b/9/csm_Technical_SEO_1_banner_7970eac53d.png','csm_Technical_SEO_1_banner_7970eac53d.png','a:7:{s:5:\"width\";i:400;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','01aa9ddbde7509b1c73b0a23f41664fddf9f1940','54a103c31535b0a51811702366ad9696f39987e9','Image.CropScaleMask','7970eac53d',400,314),(11,1591795762,1591795762,0,10,'',NULL,'a:7:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','0126e450c1e52b460d58cc6b1d377d5a30e659a1','024bab08f8fdebd32b5ad608602f928dc9b5053f','Image.CropScaleMask','c42cec1121',NULL,NULL),(12,1591796301,1591796301,0,11,'',NULL,'a:7:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','0126e450c1e52b460d58cc6b1d377d5a30e659a1','d871bbfdd359e57af733774dd9381a7564ed0e75','Image.CropScaleMask','42d863e35a',NULL,NULL),(13,1591801955,1591801955,0,12,'',NULL,'a:7:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','0126e450c1e52b460d58cc6b1d377d5a30e659a1','161c2b38b1de772daedec430ad338ea94bad5085','Image.CropScaleMask','24f81fe745',NULL,NULL),(14,1591967336,1591967336,1,13,'/_processed_/0/0/preview_extbase_af784ea7cf.jpg','preview_extbase_af784ea7cf.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.Preview','af784ea7cf',64,36),(15,1591967337,1591967337,1,13,'/_processed_/0/0/csm_extbase_5236242a86.jpg','csm_extbase_5236242a86.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','5236242a86',267,150),(16,1591967337,1591967337,1,13,'/_processed_/0/0/preview_extbase_fae0c51d16.jpg','preview_extbase_fae0c51d16.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.Preview','fae0c51d16',45,25),(17,1591967353,1591967353,1,13,'/_processed_/0/0/preview_extbase_73eb5cd31a.jpg','preview_extbase_73eb5cd31a.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.Preview','73eb5cd31a',45,25),(18,1591967355,1591967355,1,13,'/_processed_/0/0/csm_extbase_dffbb25604.jpg','csm_extbase_dffbb25604.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1200;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','1495e2df9df1b6ca7f74752327ebb626a23b3676','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','dffbb25604',1200,675),(19,1591967355,1591967355,1,13,'/_processed_/0/0/csm_extbase_94f9f347b1.jpg','csm_extbase_94f9f347b1.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:282;s:9:\"maxHeight\";s:0:\"\";s:4:\"crop\";N;}','46a68eaf10fc51ac2a48086b40820bff1e0b1126','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','94f9f347b1',282,159),(20,1591968650,1591968650,1,14,'/_processed_/b/8/preview_Typo3_2de48438f4.png','preview_Typo3_2de48438f4.png','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.Preview','2de48438f4',64,46),(21,1591968651,1591968651,1,14,'/_processed_/b/8/csm_Typo3_4c9f648429.png','csm_Typo3_4c9f648429.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','4c9f648429',208,150),(22,1591968651,1591968651,1,14,'/_processed_/b/8/preview_Typo3_4f6e8fceee.png','preview_Typo3_4f6e8fceee.png','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.Preview','4f6e8fceee',45,33),(23,1591968666,1591968666,1,14,'/_processed_/b/8/preview_Typo3_533d87f810.png','preview_Typo3_533d87f810.png','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.Preview','533d87f810',45,33),(24,1591968669,1591968669,1,14,'/_processed_/b/8/csm_Typo3_0c0cab2486.png','csm_Typo3_0c0cab2486.png','a:11:{s:5:\"width\";i:200;s:6:\"height\";i:144;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:700;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','5555c038c201216d0985d2d3db9a662fecd26f74','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','0c0cab2486',200,144),(25,1591968669,1591968669,1,14,'/_processed_/b/8/csm_Typo3_4d725e120e.png','csm_Typo3_4d725e120e.png','a:11:{s:5:\"width\";i:200;s:6:\"height\";i:144;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:600;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','e0fb4f1227bb500f2ae8bacb4388d9f0d6598829','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','4d725e120e',200,144),(26,1591968670,1591968670,1,14,'/_processed_/b/8/csm_Typo3_f314ce8b09.png','csm_Typo3_f314ce8b09.png','a:11:{s:5:\"width\";i:200;s:6:\"height\";i:144;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:480;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','402fb58879b45d1413a7dda8c696c561f3f03596','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','f314ce8b09',200,144),(27,1591968670,1591968670,1,14,'/_processed_/b/8/csm_Typo3_f2eb9db199.png','csm_Typo3_f2eb9db199.png','a:11:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','1668789293c0418b610f62d423465637c0820b25','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','f2eb9db199',800,579),(28,1591968799,1591968799,1,13,'/_processed_/0/0/csm_extbase_6163e03412.jpg','csm_extbase_6163e03412.jpg','a:7:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','e9ce9fb3d5d0f996e39ba115aade6c109aa64dcf','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','6163e03412',800,450),(29,1591969722,1591969722,1,13,'/_processed_/0/0/csm_extbase_f023aecacc.jpg','csm_extbase_f023aecacc.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:480;s:9:\"maxHeight\";s:0:\"\";s:4:\"crop\";N;}','a6df5401a2e48cf983f9ff897da143451b941697','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','f023aecacc',480,270),(30,1591969801,1591969801,1,13,'/_processed_/0/0/csm_extbase_8ee82cd633.jpg','csm_extbase_8ee82cd633.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:360;s:9:\"maxHeight\";s:0:\"\";s:4:\"crop\";N;}','d05e744c04f3e9f3b7338ae21ac7ae72ca381123','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','8ee82cd633',360,203),(31,1591970000,1591970000,1,13,'/_processed_/0/0/preview_extbase_b684436ae0.jpg','preview_extbase_b684436ae0.jpg','a:3:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"crop\";N;}','24e2730ad52329bde94ed7a722393b6e97a484b5','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.Preview','b684436ae0',64,36),(32,1591971733,1591971733,0,15,'',NULL,'a:7:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','0126e450c1e52b460d58cc6b1d377d5a30e659a1','cae17e52012148d022d855c6a2486b3dd9a9aa89','Image.CropScaleMask','38c0da2ff9',NULL,NULL),(33,1591971997,1591971997,1,16,'/_processed_/7/8/preview_rentspecstroy_1a8e97ae93.jpg','preview_rentspecstroy_1a8e97ae93.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.Preview','1a8e97ae93',64,46),(34,1591971998,1591971998,1,16,'/_processed_/7/8/csm_rentspecstroy_eace9cf0cf.jpg','csm_rentspecstroy_eace9cf0cf.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','eace9cf0cf',209,150),(35,1591971998,1591971998,1,16,'/_processed_/7/8/preview_rentspecstroy_e03cb8dc10.jpg','preview_rentspecstroy_e03cb8dc10.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.Preview','e03cb8dc10',45,32),(36,1591972002,1591972002,1,16,'/_processed_/7/8/preview_rentspecstroy_dc2a8e538a.jpg','preview_rentspecstroy_dc2a8e538a.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.Preview','dc2a8e538a',45,32),(37,1591972016,1591972016,1,16,'/_processed_/7/8/preview_rentspecstroy_d525f25780.jpg','preview_rentspecstroy_d525f25780.jpg','a:3:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"crop\";N;}','24e2730ad52329bde94ed7a722393b6e97a484b5','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.Preview','d525f25780',64,46),(38,1591972139,1591972139,1,16,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1200;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','1495e2df9df1b6ca7f74752327ebb626a23b3676','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','77e424259e',NULL,NULL),(39,1591972140,1591972140,1,16,'/_processed_/7/8/csm_rentspecstroy_21846968b8.jpg','csm_rentspecstroy_21846968b8.jpg','a:11:{s:5:\"width\";i:1069;s:6:\"height\";i:768;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:700;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','29700ad1d7b7520e5825c85b219efa704938ffef','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','21846968b8',700,503),(40,1591972140,1591972140,1,16,'/_processed_/7/8/csm_rentspecstroy_8d38de88a3.jpg','csm_rentspecstroy_8d38de88a3.jpg','a:11:{s:5:\"width\";i:1069;s:6:\"height\";i:768;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:600;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','c29c55dc9191df5c233b5988a373eb68e6cc2472','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','8d38de88a3',600,431),(41,1591972140,1591972140,1,16,'/_processed_/7/8/csm_rentspecstroy_44dac3f613.jpg','csm_rentspecstroy_44dac3f613.jpg','a:11:{s:5:\"width\";i:1069;s:6:\"height\";i:768;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:480;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','f03bec7699d46c5c3aaef5823a422bdd105d672c','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','44dac3f613',480,345),(42,1591972140,1591972140,1,16,'/_processed_/7/8/csm_rentspecstroy_d4fa5f4a1f.jpg','csm_rentspecstroy_d4fa5f4a1f.jpg','a:11:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','1668789293c0418b610f62d423465637c0820b25','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','d4fa5f4a1f',800,575),(43,1591972140,1591972140,1,16,'/_processed_/7/8/csm_rentspecstroy_784055b54e.jpg','csm_rentspecstroy_784055b54e.jpg','a:7:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','e9ce9fb3d5d0f996e39ba115aade6c109aa64dcf','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','784055b54e',800,575),(44,1591972140,1591972140,1,16,'/_processed_/7/8/csm_rentspecstroy_a3e9cfdd1f.jpg','csm_rentspecstroy_a3e9cfdd1f.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:360;s:9:\"maxHeight\";s:0:\"\";s:4:\"crop\";N;}','d05e744c04f3e9f3b7338ae21ac7ae72ca381123','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','a3e9cfdd1f',360,259),(45,1591972200,1591972200,1,16,'/_processed_/7/8/csm_rentspecstroy_d915b8a4e7.jpg','csm_rentspecstroy_d915b8a4e7.jpg','a:11:{s:5:\"width\";i:200;s:6:\"height\";i:143;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:700;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','c98b5f54cfe2a73aed1be170028fd456ac4f355a','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','d915b8a4e7',200,143),(46,1591972200,1591972200,1,16,'/_processed_/7/8/csm_rentspecstroy_cd77c1c687.jpg','csm_rentspecstroy_cd77c1c687.jpg','a:11:{s:5:\"width\";i:200;s:6:\"height\";i:143;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:600;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','a446eab14d58c8e6aa773867cfe38d878a7dae6d','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','cd77c1c687',200,143),(47,1591972200,1591972200,1,16,'/_processed_/7/8/csm_rentspecstroy_2c7400b749.jpg','csm_rentspecstroy_2c7400b749.jpg','a:11:{s:5:\"width\";i:200;s:6:\"height\";i:143;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:480;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','8499674413239f6900b029879ff47fdfac0c838f','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','2c7400b749',200,143),(48,1591972212,1591972212,1,16,'/_processed_/7/8/csm_rentspecstroy_70e214fc02.jpg','csm_rentspecstroy_70e214fc02.jpg','a:11:{s:5:\"width\";i:360;s:6:\"height\";i:258;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:700;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','072c9c0fae45480c62c11ffc60a6e218c01975de','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','70e214fc02',360,258),(49,1591972212,1591972212,1,16,'/_processed_/7/8/csm_rentspecstroy_1d2f4e3f17.jpg','csm_rentspecstroy_1d2f4e3f17.jpg','a:11:{s:5:\"width\";i:360;s:6:\"height\";i:258;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:600;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','a9e45dcf3eb19d9b8c185d411c56ae95862e3ff5','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','1d2f4e3f17',360,258),(50,1591972212,1591972212,1,16,'/_processed_/7/8/csm_rentspecstroy_f04d021034.jpg','csm_rentspecstroy_f04d021034.jpg','a:11:{s:5:\"width\";i:360;s:6:\"height\";i:258;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:480;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";s:12:\" -quality 85\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','cd0858a3b168467aa27fea6a6191c69707660dad','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','f04d021034',360,258),(51,1591973552,1591973552,0,17,'',NULL,'a:7:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','0126e450c1e52b460d58cc6b1d377d5a30e659a1','ea2e358efab47bfe97f1fad3e61b3c993ddcc55b','Image.CropScaleMask','c1b4aba315',NULL,NULL),(52,1591974381,1591974381,1,14,'/_processed_/b/8/preview_Typo3_fe4750490d.png','preview_Typo3_fe4750490d.png','a:3:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"crop\";N;}','24e2730ad52329bde94ed7a722393b6e97a484b5','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.Preview','fe4750490d',64,46),(53,1591974830,1591974830,1,14,'',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1200;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','1495e2df9df1b6ca7f74752327ebb626a23b3676','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','96bbb80534',NULL,NULL),(54,1591974863,1591974863,1,14,'/_processed_/b/8/csm_Typo3_7ee62b499d.png','csm_Typo3_7ee62b499d.png','a:7:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','e9ce9fb3d5d0f996e39ba115aade6c109aa64dcf','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','7ee62b499d',800,579),(55,1591974863,1591974863,1,14,'/_processed_/b/8/csm_Typo3_01e87d16db.png','csm_Typo3_01e87d16db.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:360;s:9:\"maxHeight\";s:0:\"\";s:4:\"crop\";N;}','d05e744c04f3e9f3b7338ae21ac7ae72ca381123','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','01e87d16db',360,261),(56,1591975167,1591975167,1,14,'/_processed_/b/8/csm_Typo3_47d24a7971.png','csm_Typo3_47d24a7971.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:100;s:9:\"maxHeight\";i:100;s:4:\"crop\";N;}','1de85feb3e25752eaaeafd731583414ea1d5b62a','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','47d24a7971',100,72),(57,1591975167,1591975167,1,13,'/_processed_/0/0/csm_extbase_4e3c970f3e.jpg','csm_extbase_4e3c970f3e.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:100;s:9:\"maxHeight\";i:100;s:4:\"crop\";N;}','1de85feb3e25752eaaeafd731583414ea1d5b62a','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','4e3c970f3e',100,56),(58,1591975167,1591975167,1,16,'/_processed_/7/8/csm_rentspecstroy_e9dc45d4db.jpg','csm_rentspecstroy_e9dc45d4db.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:100;s:9:\"maxHeight\";i:100;s:4:\"crop\";N;}','1de85feb3e25752eaaeafd731583414ea1d5b62a','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','e9dc45d4db',100,72),(59,1591976568,1591976568,1,14,'/_processed_/b/8/csm_Typo3_22266dbf92.png','csm_Typo3_22266dbf92.png','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:250;s:9:\"maxHeight\";i:140;s:4:\"crop\";N;}','385592551c80b0bcdf7d7eb075edfd7aaa784d70','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','22266dbf92',194,140),(60,1591976569,1591976569,1,13,'/_processed_/0/0/csm_extbase_0771bf94b7.jpg','csm_extbase_0771bf94b7.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:250;s:9:\"maxHeight\";i:140;s:4:\"crop\";N;}','385592551c80b0bcdf7d7eb075edfd7aaa784d70','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','0771bf94b7',249,140),(61,1591976569,1591976569,1,16,'/_processed_/7/8/csm_rentspecstroy_5d3bb30731.jpg','csm_rentspecstroy_5d3bb30731.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:250;s:9:\"maxHeight\";i:140;s:4:\"crop\";N;}','385592551c80b0bcdf7d7eb075edfd7aaa784d70','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','5d3bb30731',195,140),(62,1591976938,1591976938,1,14,'/_processed_/b/8/csm_Typo3_8b46a1f131.png','csm_Typo3_8b46a1f131.png','a:7:{s:5:\"width\";s:4:\"250c\";s:6:\"height\";s:4:\"140c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f09b8e4c33fb1177adcb14d3ec25b3e7a170460e','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','8b46a1f131',250,140),(63,1591976939,1591976939,1,13,'/_processed_/0/0/csm_extbase_4eeda16809.jpg','csm_extbase_4eeda16809.jpg','a:7:{s:5:\"width\";s:4:\"250c\";s:6:\"height\";s:4:\"140c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f09b8e4c33fb1177adcb14d3ec25b3e7a170460e','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','4eeda16809',250,140),(64,1591976939,1591976939,1,16,'/_processed_/7/8/csm_rentspecstroy_f1843eac5d.jpg','csm_rentspecstroy_f1843eac5d.jpg','a:7:{s:5:\"width\";s:4:\"250c\";s:6:\"height\";s:4:\"140c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','f09b8e4c33fb1177adcb14d3ec25b3e7a170460e','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','f1843eac5d',250,140),(65,1591976969,1591976969,1,14,'/_processed_/b/8/csm_Typo3_0feb0d11d1.png','csm_Typo3_0feb0d11d1.png','a:7:{s:5:\"width\";s:4:\"360c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bc264bf3b48a81cc417487fd59b9079de4a45959','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','0feb0d11d1',360,261),(66,1591976969,1591976969,1,13,'/_processed_/0/0/csm_extbase_651a604177.jpg','csm_extbase_651a604177.jpg','a:7:{s:5:\"width\";s:4:\"360c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bc264bf3b48a81cc417487fd59b9079de4a45959','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','651a604177',360,203),(67,1591976969,1591976969,1,16,'/_processed_/7/8/csm_rentspecstroy_bffa878161.jpg','csm_rentspecstroy_bffa878161.jpg','a:7:{s:5:\"width\";s:4:\"360c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','bc264bf3b48a81cc417487fd59b9079de4a45959','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','bffa878161',360,259),(68,1591976984,1591976984,1,14,'/_processed_/b/8/csm_Typo3_89dd68714d.png','csm_Typo3_89dd68714d.png','a:7:{s:5:\"width\";s:4:\"300c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','45a674487a268cc33f383eae25ecb9f9944d1720','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','89dd68714d',300,217),(69,1591976984,1591976984,1,13,'/_processed_/0/0/csm_extbase_9365848b1b.jpg','csm_extbase_9365848b1b.jpg','a:7:{s:5:\"width\";s:4:\"300c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','45a674487a268cc33f383eae25ecb9f9944d1720','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','9365848b1b',300,169),(70,1591976984,1591976984,1,16,'/_processed_/7/8/csm_rentspecstroy_e196368eb9.jpg','csm_rentspecstroy_e196368eb9.jpg','a:7:{s:5:\"width\";s:4:\"300c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','45a674487a268cc33f383eae25ecb9f9944d1720','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','e196368eb9',300,216),(71,1591976999,1591976999,1,14,'/_processed_/b/8/csm_Typo3_ef74bd4d81.png','csm_Typo3_ef74bd4d81.png','a:7:{s:5:\"width\";s:4:\"260c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','c3997a03d23757f97fdfdafda0c86e3a74953919','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','ef74bd4d81',260,189),(72,1591977000,1591977000,1,13,'/_processed_/0/0/csm_extbase_66d3bd46cb.jpg','csm_extbase_66d3bd46cb.jpg','a:7:{s:5:\"width\";s:4:\"260c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','c3997a03d23757f97fdfdafda0c86e3a74953919','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','66d3bd46cb',260,147),(73,1591977000,1591977000,1,16,'/_processed_/7/8/csm_rentspecstroy_8645525c7f.jpg','csm_rentspecstroy_8645525c7f.jpg','a:7:{s:5:\"width\";s:4:\"260c\";s:6:\"height\";s:0:\"\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','c3997a03d23757f97fdfdafda0c86e3a74953919','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','8645525c7f',260,187),(74,1591977016,1591977016,1,14,'/_processed_/b/8/csm_Typo3_dcab233312.png','csm_Typo3_dcab233312.png','a:7:{s:5:\"width\";s:4:\"260c\";s:6:\"height\";s:4:\"150c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','db6f343f3ba31a8ee33c75135ad8aec846c3ea61','8f4fc93ec4e580efa3f7b0f40b0a3decd941adc2','Image.CropScaleMask','dcab233312',260,150),(75,1591977016,1591977016,1,13,'/_processed_/0/0/csm_extbase_230247fd38.jpg','csm_extbase_230247fd38.jpg','a:7:{s:5:\"width\";s:4:\"260c\";s:6:\"height\";s:4:\"150c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','db6f343f3ba31a8ee33c75135ad8aec846c3ea61','b5264efa8884a142ebe0c276b0a9d58fd2375fd6','Image.CropScaleMask','230247fd38',260,150),(76,1591977016,1591977016,1,16,'/_processed_/7/8/csm_rentspecstroy_22a48fb3d0.jpg','csm_rentspecstroy_22a48fb3d0.jpg','a:7:{s:5:\"width\";s:4:\"260c\";s:6:\"height\";s:4:\"150c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','db6f343f3ba31a8ee33c75135ad8aec846c3ea61','915e218861ed06ea1425d1928d3141ed9e1c8971','Image.CropScaleMask','22a48fb3d0',260,150);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `alternative` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT '0',
  `showinpreview` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,19,1591974814,1591967352,2,0,0,0,0,NULL,'a:9:{s:13:\"showinpreview\";N;s:11:\"alternative\";N;s:11:\"description\";N;s:4:\"link\";N;s:5:\"title\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',0,0,0,0,0,0,0,13,2,'tx_news_domain_model_news','fal_media',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,1),(2,16,1591968717,1591968666,2,0,0,0,0,NULL,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,14,14,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,0),(3,19,1591972786,1591972002,2,0,0,0,0,NULL,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,16,1,'tx_news_domain_model_news','fal_media',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,2),(4,19,1591972451,1591972131,2,0,0,0,0,NULL,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,16,15,'tt_content','image',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,0),(5,19,1591977321,1591974668,2,0,0,0,0,NULL,'a:9:{s:13:\"showinpreview\";N;s:11:\"alternative\";N;s:11:\"description\";N;s:4:\"link\";N;s:5:\"title\";N;s:4:\"crop\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',0,0,0,0,0,0,0,14,3,'tx_news_domain_model_news','fal_media',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0,1);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8mb4_unicode_ci,
  `configuration` text COLLATE utf8mb4_unicode_ci,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  `is_browsable` smallint(6) NOT NULL DEFAULT '0',
  `is_public` smallint(6) NOT NULL DEFAULT '0',
  `is_writable` smallint(6) NOT NULL DEFAULT '0',
  `is_online` smallint(6) NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT '1',
  `processingfolder` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1571142899,1571142899,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT '0',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `actiontype` smallint(6) NOT NULL DEFAULT '0',
  `usertype` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `workspace` int(11) DEFAULT '0',
  `correlation_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `action` smallint(5) unsigned NOT NULL DEFAULT '0',
  `recuid` int(10) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `details_nr` smallint(6) NOT NULL DEFAULT '0',
  `IP` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8mb4_unicode_ci,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT '0',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_unicode_ci,
  `data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `parent` (`pid`),
  KEY `errorcount` (`tstamp`,`error`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci,
  `personal` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `updatedon` int(10) unsigned NOT NULL DEFAULT '0',
  `createdon` int(10) unsigned NOT NULL DEFAULT '0',
  `createdby` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `source_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source_path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `force_https` smallint(5) unsigned NOT NULL DEFAULT '0',
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT '307',
  `hitcount` int(11) NOT NULL DEFAULT '0',
  `lasthiton` int(11) NOT NULL DEFAULT '0',
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
INSERT INTO `sys_redirect` VALUES (1,0,1591211398,1591211398,2,0,0,0,0,'*','/1',0,0,0,0,'/o-kompanii',307,0,0,0),(2,0,1591211398,1591211398,2,0,0,0,0,'*','/1/garantija-na-sait',0,0,0,0,'/o-kompanii/garantija-na-sait',307,0,0,0),(3,0,1591211398,1591211398,2,0,0,0,0,'*','/1/dokumenty-rekvizity-i-dogovora',0,0,0,0,'/o-kompanii/dokumenty-rekvizity-i-dogovora',307,0,0,0),(4,0,1591801975,1591801560,2,1,0,0,0,'*','/sozdanie-saita-na-typo3-cms',0,0,0,0,'/uslugi/sozdanie-saita-na-typo3-cms',307,0,0,0),(5,0,1591973420,1591971946,2,1,0,0,0,'t3dev.localhost','/stranicy-novostei',0,0,0,0,'/1',307,0,0,0),(6,0,1591974418,1591974409,2,1,0,0,0,'t3dev.localhost','/obshchii-obzor-cms-typo3',0,0,0,0,'/o-typo3/obshchii-obzor-cms-typo3',307,0,0,0),(7,0,1591974648,1591974431,2,1,0,0,0,'t3dev.localhost','/obshchaja-informacija',0,0,0,0,'/o-typo3/informacija-o-typo3',307,0,0,0);
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('08dda64e164f907f66e2c75906225193','sys_file',14,'storage','','','',0,0,0,'sys_file_storage',1,''),('0a88d50a543d1faaba2ae6723481681d','sys_file_reference',2,'uid_local','','','',0,0,0,'sys_file',14,''),('0bd7bda40572dd9a35a61eb25947529c','sys_category',2,'items','','','',0,0,0,'tx_news_domain_model_news',2,''),('12f6d6701e3ae01cb53e11fa8c2b6acb','pages',5,'shortcut','','','',0,0,0,'pages',16,''),('1b6e4617f9eef096e4df446dd6d5a929','tx_news_domain_model_news',3,'fal_media','','','',0,0,0,'sys_file_reference',5,''),('2569b2c6aefb48f5ea23b301a27d26db','tx_news_domain_model_news',1,'content_elements','','','',1,0,0,'tt_content',16,''),('3a4cb44b8a9e264766e17bd24ee92a98','sys_file_reference',1,'uid_local','','','',0,0,0,'sys_file',13,''),('3bc7bbe23c8411ab822fff90375954e6','sys_file',13,'storage','','','',0,0,0,'sys_file_storage',1,''),('3e92074a3699a2542bbef7551a929f2d','tt_content',13,'pi_flexform','additional/lDEF/settings.backPid/vDEF/','','',0,0,0,'pages',3,''),('3f88c13a8b99340f818b8af1ec7e6f4e','tt_content',12,'pi_flexform','sDEF/lDEF/settings.startingpoint/vDEF/','','',0,0,0,'pages',19,''),('4d4fd559963c6fc0bb178d78bf8bb7b1','sys_file_reference',4,'uid_local','','','',0,0,0,'sys_file',16,''),('655993e1a639290c437d2980acdbdb39','sys_file',16,'storage','','','',0,0,0,'sys_file_storage',1,''),('6edcea919f862ed1f8b7eec96adf5a58','tx_news_domain_model_news',1,'fal_media','','','',0,0,0,'sys_file_reference',3,''),('6f057010d6e89e0a18757d6401c854d7','pages',2,'shortcut','','','',0,0,0,'pages',9,''),('716c3732467064750744e89395bd05d9','tx_news_domain_model_news',1,'content_elements','','','',0,0,0,'tt_content',15,''),('71e21da5ee5c34c9e72b41791e8148aa','tx_news_domain_model_news',1,'content_elements','','','',2,0,0,'tt_content',17,''),('81beb53076e90e30814e95207d8f9251','tt_content',14,'image','','','',0,0,0,'sys_file_reference',2,''),('85b1d7f67b81301e852b72dbee5ba653','tt_content',13,'pi_flexform','additional/lDEF/settings.listPid/vDEF/','','',0,0,0,'pages',3,''),('89133f63406abbb0e876aa5fdc4ff543','tx_news_domain_model_news',2,'fal_media','','','',0,0,0,'sys_file_reference',1,''),('8f83c131050edea02c9f0fa7d2941db5','pages',4,'shortcut','','','',0,0,0,'pages',12,''),('97ed70c570953efb6bc1adcce4b3a4d3','sys_category',5,'items','','','',0,0,0,'tx_news_domain_model_news',1,''),('b552c3c80466d810dd6b43fc130a921b','sys_file_reference',3,'uid_local','','','',0,0,0,'sys_file',16,''),('cfd0045bb42263835e290c2fad8fdd0f','tt_content',12,'pi_flexform','additional/lDEF/settings.detailPid/vDEF/','','',0,0,0,'pages',8,''),('d02d47a8781e47638aea3bc06de90d4c','tt_content',15,'image','','','',0,0,0,'sys_file_reference',4,''),('d763526c4ecdcf979f458e447e822cf8','sys_category',3,'items','','','',0,0,0,'tx_news_domain_model_news',1,''),('e6c50a7f8a82235bfb9709e6672275bb','tx_news_domain_model_news',3,'related_links','','','',0,0,0,'tx_news_domain_model_link',1,''),('fd2e7ec844e09a3fec2f0a41774fb28d','sys_file_reference',5,'uid_local','','','',0,0,0,'sys_file',14,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'extensionDataImport','typo3/sysext/core/ext_tables_static+adt.sql','s:0:\"\";'),(2,'extensionDataImport','typo3/sysext/scheduler/ext_tables_static+adt.sql','s:0:\"\";'),(3,'extensionDataImport','typo3/sysext/extbase/ext_tables_static+adt.sql','s:0:\"\";'),(4,'extensionDataImport','typo3/sysext/fluid/ext_tables_static+adt.sql','s:0:\"\";'),(5,'extensionDataImport','typo3/sysext/frontend/ext_tables_static+adt.sql','s:0:\"\";'),(6,'extensionDataImport','typo3/sysext/fluid_styled_content/ext_tables_static+adt.sql','s:0:\"\";'),(7,'extensionDataImport','typo3/sysext/filelist/ext_tables_static+adt.sql','s:0:\"\";'),(8,'extensionDataImport','typo3/sysext/impexp/ext_tables_static+adt.sql','s:0:\"\";'),(9,'extensionDataImport','typo3/sysext/form/ext_tables_static+adt.sql','s:0:\"\";'),(10,'extensionDataImport','typo3/sysext/install/ext_tables_static+adt.sql','s:0:\"\";'),(11,'extensionDataImport','typo3/sysext/info/ext_tables_static+adt.sql','s:0:\"\";'),(12,'extensionDataImport','typo3/sysext/linkvalidator/ext_tables_static+adt.sql','s:0:\"\";'),(13,'extensionDataImport','typo3/sysext/recordlist/ext_tables_static+adt.sql','s:0:\"\";'),(14,'extensionDataImport','typo3/sysext/backend/ext_tables_static+adt.sql','s:0:\"\";'),(15,'extensionDataImport','typo3/sysext/reports/ext_tables_static+adt.sql','s:0:\"\";'),(16,'extensionDataImport','typo3/sysext/setup/ext_tables_static+adt.sql','s:0:\"\";'),(17,'extensionDataImport','typo3/sysext/rte_ckeditor/ext_tables_static+adt.sql','s:0:\"\";'),(18,'extensionDataImport','typo3/sysext/about/ext_tables_static+adt.sql','s:0:\"\";'),(19,'extensionDataImport','typo3/sysext/adminpanel/ext_tables_static+adt.sql','s:0:\"\";'),(20,'extensionDataImport','typo3/sysext/belog/ext_tables_static+adt.sql','s:0:\"\";'),(21,'extensionDataImport','typo3/sysext/beuser/ext_tables_static+adt.sql','s:0:\"\";'),(22,'extensionDataImport','typo3/sysext/extensionmanager/ext_tables_static+adt.sql','s:32:\"9beb0be917f14fdde2c9cb940a47d38e\";'),(23,'extensionDataImport','typo3/sysext/felogin/ext_tables_static+adt.sql','s:0:\"\";'),(24,'extensionDataImport','typo3/sysext/lowlevel/ext_tables_static+adt.sql','s:0:\"\";'),(25,'extensionDataImport','typo3/sysext/redirects/ext_tables_static+adt.sql','s:0:\"\";'),(26,'extensionDataImport','typo3/sysext/seo/ext_tables_static+adt.sql','s:0:\"\";'),(27,'extensionDataImport','typo3/sysext/sys_note/ext_tables_static+adt.sql','s:0:\"\";'),(28,'extensionDataImport','typo3/sysext/t3editor/ext_tables_static+adt.sql','s:0:\"\";'),(29,'extensionDataImport','typo3/sysext/tstemplate/ext_tables_static+adt.sql','s:0:\"\";'),(30,'extensionDataImport','typo3/sysext/viewpage/ext_tables_static+adt.sql','s:0:\"\";'),(31,'extensionDataImport','typo3conf/ext/rte_ckeditor_image/ext_tables_static+adt.sql','s:0:\"\";'),(32,'extensionDataImport','typo3conf/ext/dpn_glossary/ext_tables_static+adt.sql','s:0:\"\";'),(33,'extensionDataImport','typo3conf/ext/fancybox/ext_tables_static+adt.sql','s:0:\"\";'),(34,'extensionDataImport','typo3conf/ext/gridelements/ext_tables_static+adt.sql','s:0:\"\";'),(35,'extensionDataImport','typo3conf/ext/lfeditor/ext_tables_static+adt.sql','s:0:\"\";'),(36,'extensionDataImport','typo3conf/ext/powermail/ext_tables_static+adt.sql','s:0:\"\";'),(37,'extensionDataImport','typo3conf/ext/sourceopt/ext_tables_static+adt.sql','s:0:\"\";'),(38,'extensionDataImport','typo3conf/ext/tmpl/ext_tables_static+adt.sql','s:0:\"\";'),(39,'extensionDataImport','typo3conf/ext/vhs/ext_tables_static+adt.sql','s:0:\"\";'),(40,'extensionDataImport','typo3conf/ext/ws_scss/ext_tables_static+adt.sql','s:0:\"\";'),(41,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate','i:1;'),(42,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ExtensionManagerTables','i:1;'),(43,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),(44,'installUpdate','TYPO3\\CMS\\Install\\Updates\\StartModuleUpdate','i:1;'),(45,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(46,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseRowsUpdateWizard','i:1;'),(47,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CommandLineBackendUserRemovalUpdate','i:1;'),(48,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:1;'),(49,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:1;'),(50,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:1;'),(51,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:1;'),(52,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:1;'),(53,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),(54,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate','i:1;'),(55,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate','i:1;'),(56,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate','i:1;'),(57,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate','i:1;'),(58,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate','i:1;'),(59,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate','i:1;'),(60,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),(61,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),(62,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),(63,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SeparateSysHistoryFromSysLogUpdate','i:1;'),(64,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),(65,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(66,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),(67,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),(68,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),(69,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),(70,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),(71,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),(72,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),(73,'installUpdate','Featdd\\DpnGlossary\\Updates\\SlugUpdateWizard','i:1;'),(75,'languagePacks','baseUrl','s:33:\"https://localize.typo3.org/xliff/\";'),(76,'extensionDataImport','typo3conf/ext/cs_seo/ext_tables_static+adt.sql','s:0:\"\";'),(77,'extensionDataImport','typo3conf/ext/news/ext_tables_static+adt.sql','s:0:\"\";'),(78,'languagePacks','ru-dpn_glossary','i:1571142951;'),(79,'languagePacks','ru-lfeditor','i:1571142953;'),(80,'languagePacks','ru-sourceopt','i:1591970128;'),(81,'languagePacks','ru-tmpl','i:1591970128;'),(82,'languagePacks','ru','i:1591970128;'),(83,'extensionDataImport','typo3conf/ext/solr/ext_tables_static+adt.sql','s:0:\"\";'),(84,'tx_reports','status.highestSeverity','i:2;'),(87,'core','formProtectionSessionToken:2','s:64:\"2a68ce4fc5131c004068b71cdd793a4ed468da64bcbc5d84669cba00201dbdbb\";'),(88,'languagePacks','ru-cs_seo','i:1591970125;'),(89,'languagePacks','ru-frontend_editing','i:1591970126;'),(90,'languagePacks','ru-gridelements','i:1591970127;'),(91,'languagePacks','ru-news','i:1591970127;'),(92,'languagePacks','ru-powermail','i:1591970127;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clear` smallint(5) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text COLLATE utf8mb4_unicode_ci,
  `constants` text COLLATE utf8mb4_unicode_ci,
  `config` text COLLATE utf8mb4_unicode_ci,
  `basedOn` tinytext COLLATE utf8mb4_unicode_ci,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1591967874,1571142995,2,0,0,0,0,256,NULL,0,0,0,0,0,0,0,0,'«Т3 Студия» - разработка сайтов на TYPO3 CMS','«Т3 Студия» - разработка сайтов на TYPO3 CMS',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:seo/Configuration/TypoScript/XmlSitemap,EXT:news/Configuration/TypoScript,EXT:sourceopt/Configuration/TypoScript,EXT:cs_seo/Configuration/TypoScript,EXT:cs_seo/Configuration/TypoScript/Additional/Tracking/GoogleTagManager/,EXT:news/Configuration/TypoScript/Sitemap,EXT:tmpl/Configuration/TypoScript,EXT:fancybox/Configuration/TypoScript','','#config.index_enable = 1\r\n','',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8mb4_unicode_ci,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_source` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `assets` int(10) unsigned NOT NULL DEFAULT '0',
  `image` int(10) unsigned NOT NULL DEFAULT '0',
  `imagewidth` int(10) unsigned NOT NULL DEFAULT '0',
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `frame_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8mb4_unicode_ci,
  `pages` text COLLATE utf8mb4_unicode_ci,
  `colPos` int(11) NOT NULL DEFAULT '0',
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT '0',
  `file_collections` text COLLATE utf8mb4_unicode_ci,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT '0',
  `imageheight` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext COLLATE utf8mb4_unicode_ci,
  `accessibility_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8mb4_unicode_ci,
  `category_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `backupColPos` smallint(6) NOT NULL DEFAULT '-2',
  `tx_gridelements_backend_layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tx_gridelements_children` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_container` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_columns` int(11) NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_news_related_news` int(11) NOT NULL DEFAULT '0',
  `gridelements_shortcut_page_order_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `gridelements` (`tx_gridelements_container`,`tx_gridelements_columns`),
  KEY `index_newscontent` (`tx_news_related_news`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',17,1591973547,1571155800,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'text','Почему нужно использовать TYPO3','','<p>В настоящее время существует большое количество систем управления контентом, предназначенных для различных сфер применения. Наиболее оптимальная область применения TYPO3 - это корпоративные сайты и сайты Intranet, хотя это и не исключает применения TYPO3 в других областях.<br /> <br /> Закономерный вопрос, который может возникнуть у руководителя какого-либо предприятия, чем же TYPO3 лучше других подобных систем (в том числе и коммерческих) и почему стоит выбрать именно её.</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'14','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(2,'',1,1591795779,1591211303,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'text','T3 Студия - создание и поддержка сайтов на TYPO3 CMS и Neos CMS','','<p>T3 Студия (ООО «Новые Системы») предлагает создание web-сайтов с использованием мощной системы управления контентом <strong><a data-gentics-aloha-object-id=\"6b404b47-b1a7-ccb9-fd12-506f6b1aab79\" data-gentics-aloha-repository=\"node-repository\" href=\"http://typo3.ru.net/services/sozdanie-sajta\">TYPO3 CMS</a></strong> (тáйпо три).&nbsp;</p>\r\n<p>Система TYPO3 позволяет построить сайт любой сложности с возможностью его дальнейшего масштабирования, управлять которым сможет любой офисный сотрудник владеющий навыками работы в текстовом редакторе.</p>\r\n<p><strong>TYPO3 CMS</strong> – является мощной промышленной системой с открытым исходным кодом и высокими стандартами безопасности. Наиболее оптимальная область применения TYPO3 - это корпоративные сайты и сайты Intranet, хотя это и не исключает применения TYPO3 в других областях. TYPO3 используется на сайтах EPSON, Mercedes Benz, Audi, FORD, KONICA MINOLTA, SANYO, Philips, CISCO WebEx, UNESCO, GREENPEACE и многих других крупных корпораций.</p>\r\n<p>Мы оказываем весь спектр услуг связанных с разработкой и поддержкой сайтов на системе <strong>TYPO3</strong>. Мы осуществляем полный цикл работ по созданию сайта - с «нуля» до качественно сделанного готового продукта, удобного для использования заказчиком.</p>\r\n<p>С начала 2014 года мы дополнительно предлагаем услуги по созданию сайтов на <a data-gentics-aloha-object-id=\"5bce995f-abaa-f35f-1b25-62306f4dc4d0\" data-gentics-aloha-repository=\"node-repository\" href=\"http://typo3.ru.net/services/typo3neos-development\"><strong>Neos CMS</strong></a>. Также мы оказываем услуги технической поддержки TYPO3 сайтов.</p>\r\n<p>Мы осуществляем информационную и техническую поддержку созданных нами сайтов.</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'10','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(3,'',9,1591799162,1591794990,2,0,0,0,0,'',32,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'text','О Компании','','<p>«Т3 Студия» - первая в Северо-Западном регионе веб-студия, предлагающая разработку сайтов с использованием системы управления контентом <strong>TYPO3 CMS</strong> и <strong>Neos CMS</strong>.<br /> <br /> Мы активно работаем с TYPO3 с 2007 года, за это время нашими специалистами накоплен большой опыт работы с этой мощной системой, которым мы успешно оперируем при создании веб-проектов.<br /> <br /> С начала 2014 года мы дополнительно предлагаем услуги по созданию сайтов на Neos CMS. Также мы оказываем услуги технической поддержки TYPO3 сайтов.<br /> <br /> В нашей работе мы используем передовые, и в то же время стабильные технологии веб-разработки. Мы следим за всеми тенденциями веба. Ваш сайт не будет архаичным изделием \"на коленке\".</p>\r\n<p>Для каждого нашего заказчика мы осуществляем индивидуальный комплексный подход. Кратко это можно изложить следующим образом:</p>\r\n<ol> 	<li>Внимательное изучение бизнес-задач клиента.</li> 	<li>Предложение нескольких способов решения поставленной задачи. &nbsp; &nbsp;</li> 	<li>Соучастный выбор оптимального решения.&nbsp;</li> </ol>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'11','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(4,'',9,1591799162,1591798812,2,0,0,0,0,'',64,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'text','Один сайт для всех устройств','center','<p>Мы делаем качественную и удобную для использования верстку. Ваш сайт будет красиво отображаться как на обычном компьютере, так и на любом мобильном устройстве. Управлять сайтом вы также сможете и с компьютера и с планшета.</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(5,'',9,1591799162,1591798856,2,0,0,0,0,'',128,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'text','Мы профессионалы своего дела','center','<p>Мы прекрасно знаем свое дело. Мы следим за всеми тенденциями в мире веб-разработки и сео маркетинга. Вам будет легко продвигать свой сайт. Технологии которые мы используем для работы не устареют через год-два-три. Мы используем только стабильные версии программного обеспечения.</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(6,'',9,1591799162,1591798886,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'text','Каждому сайту - своя индивидуальность','center','<p>У каждого сайта могут быть свои функциональные особенности. Такой функционал, \"под заказчика\" мы пишем сами, а не адаптируем уже готовый. Как это делает большинство веб-студий.</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(7,'',10,1591801125,1591801125,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'text',' Гарантия на сайт','','<p>На все разработанные нами сайты, мы даем гарантию - <strong>6 месяцев</strong> с момента размещения сайта на сервере или в домене заказчика.</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'11','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(8,'',10,1591977438,1591801171,2,0,0,0,0,'',512,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'text','Гарантийное обслуживание включает','center','<ul> 	<li>Исправление обнаруженных ошибок по запросу заказчика в функциональных расширениях, разработанных исполнителем;</li> 	<li>Исправление грамматических и орфографических ошибок по запросу заказчика, если они были допущены исполнителем;</li> 	<li>Устранение обнаруженных несоответствий между сопроводительной документацией на сайт (Договор и ТЗ) и функционированием сайта по запросу заказчика.</li> </ul>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(9,'',10,1591977448,1591801199,2,0,0,0,0,'',768,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'text','Условия соблюдения гарантийных обязательств','center','<p>Гарантийные обязательства полностью утрачивают свою силу, в случае если заказчик нарушает хотя бы один из следующих пунктов в период действия сроков гарантийного обслуживания:</p>\r\n<ul> 	<li>Гарантии утрачивают свою силу, в случае наличия финансовых и бухгалтерских обязательств со стороны заказчика (не оплачены все счета, не подписаны и не переданы исполнителю все договора и закрывающие акты);</li> 	<li>Гарантии утрачивают свою силу, в случае переноса сайта с того сервера, на котором сайт был размещён и протестирован исполнителем, на сервер не соответсвующий необходимиому программному обеспечению;</li> 	<li>Гарантии утрачивают свою силу, если заказчик внес любые изменения в работу функциональных модулей на сайт без согласования с исполнителем;</li> 	<li>Гарантии утрачивают свою силу, если заказчик удалил с сайта ссылки на интернет-агентство «Т3 Студия» без согласования с исполнителем;</li> 	<li>Гарантии утрачивают свою силу, по решению судебных органов РФ, а также в иных случаях, в соответствии с действующим законодательством РФ.</li> </ul>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(10,'',12,1591801953,1591801953,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'text','Создание сайта на на базе TYPO3 CMS','','<p>Наша Веб-студия предлагает разработку сайтов с использованием системы управления контентом <strong>TYPO3 CMS.</strong></p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'16','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(11,'',12,1591802024,1591802003,2,0,0,0,0,'',512,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'text','ПОСТАНОВКА ЗАДАЧИ','center','<p>Для начала необходимо определить основную цель сайта, навигационную структуру и функциональные особенности сайта. Мы не сторонники многостраничных опросных листов. Зачастую, понимание того каким должен быть сайт, приходит к заказчику во время его изготовления. Поэтому для того, чтобы начать достаточно ответить всего лишь на несколько вопросов.&nbsp;</p>\r\n<p>Минимум необходимых для начала работы сведений мы можем получить по телефону, или с помощью простого опросного листа, который вы можете скачать ниже.</p>\r\n\r\n<p><strong>Далее разработка вашего сайта будет состоять из трех этапов работ:</strong></p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(12,'',3,1591975159,1591965163,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:25:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'0','news_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\">19</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.selectedList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;list;News-&gt;detail</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\">8</value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(13,'',8,1591967236,1591967236,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'0','news_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;list;News-&gt;detail</value>\n                </field>\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.selectedList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(14,'',16,1591968717,1591968476,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:31:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:5:\"image\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'textpic','Система управления сайтами TYPO3','','<p>TYPO3 - система управления сайтами (CMS/CMF) с открытым исходным кодом и свободной лицензией.</p>\r\n<p>TYPO3 - это «промышленная» программная система (более 8500 внедрений), сделанная с немецким качеством и отвечающая высоким стандартам безопасности. Она используется на сайтах двух швейцарских банков и нескольких европейских платежных систем.</p>\r\n<p>TYPO3 является достойным конкурентом коммерческих систем. Для крупных проектов, рассматривается как альтернатива Microsoft CMS, Microsoft Sharepoint, Oracle Portal, Synkron, Vignette, Documentum.</p>\r\n<p>При использовании коммерческих CMS стоимость лицензии может резко возрасти, если добавить контент-редакторы, дополнительные расширения, каталог товаров или модуль интернет-магазина. Это не относится к TYPO3. С моделью лицензирования открытого программного обеспечения вы можете минимизировать размеры начальных вложений, что увеличивает коэффициент рентабельности инвестиций.</p>\r\n<p>Помимо финансовой выгоды от использования системы с открытым кодом - это свобода выбора. С подобным коммерческим программным обеспечением, невозможно его изменять, создавать дополнительную функциональность, или даже контролировать данные, так как существуют ограничения по условиями контракта, который это запрещает. Присутствует зависимость от компании-разработчика системы. В итоге можно прийти к очень дорогому варианту, а стоимость миграции данных на другую систему управления сайтом может стать астрономической.</p>\r\n<p>К счастью можно избежать этих проблем, выбирая TYPO3. Вы не только будете наслаждаться преимуществами надежной CMS/CMF, которой пользуются уже многие годы во всем мире, но также найдете поддержку у большого сообщества разработчиков. Вы сможете контролировать все стороны системы с самого начала.</p>\r\n<p>TYPO3 исторически появилась, как коммерческая система управления сайтом, рассчитанная на корпоративных заказчиков. Переход TYPO3 в разряд открытых систем, по мнению многих специалистов, был вызван бумом открытого кода в США и Европе.</p>\r\n<p>Заказчики в этих странах быстро поняли преимущества такого подхода, и разработчики TYPO3 сменили вектор с продажи лицензий на свое ПО, на поддержку и развитие системы, а продажи перешли под управление веб-студий. И что из этого получилось мы можем наблюдать: развитая система управления сайтом для корпоративных заказчиков, которая имеет практически все, что может понадобиться. Если бизнесу требуется от сайта специфический функционал, то на этот случай<br /> История</p>\r\n<p>TYPO3 развивается с 1998 года, сначала как коммерческая разработка, затем как Open Source система. TYPO3 стала инструментом нескольких десятков крупных и средних европейских веб-студий (преимущественно немецких).</p>\r\n<p>Сейчас система интенсивно развивается. Каждый год выпускаются одна-две версии ядра системы, интенсивно развиваются ключевые модули (Digital Assert Management (DAM), новости, визуальный редактор, форум).</p>\r\n<p>В конце 2004 года создана \"TYPO3 Ассоциация\", официальная организация с платным членством, координирующая и финансирующая развитие ядра TYPO3 и ключевых модулей, а также продвижение и маркетинг.</p>',0,0,0,0,1,200,18,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',1,'10','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(15,'',19,1591972786,1591972083,2,0,0,0,0,'',1,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,'textpic','','','<p>Популярная во всем мире и получившая заслуженное признание TYPO3 CMS, будет продолжать развиваться, обновляться и улучшаться. TYPO3 CMS и TYPO3 Neos являются качественно разными продуктами, и предназначены для сайтов разного типа. Для некоторых проектов, TYPO3 CMS может быть лучшим выбором в то вреsмя как для других, Neos способен показать свою силу.</p>\r\n<p>Ниже хочу описать мои первые впечатления от работы с данным программным продуктом. Отмечу, что данная заметка основана на небольшом эмпирическом опыте, который естественным образом не исключает ошибок.</p>\r\n<p>Я не буду описывать процесс установки, хочу лишь обратить внимание на три важные вещи. Не программисты могут эту часть пропустить.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p>1. Очень желательно, чтобы ваша БД был установлена в кодировке utf8_unicode_ci, Это нужно в случае, если вы будете устанавливать или создавать свои расширения, и обновлять БД посредством doctrine.</p>\r\n<p>Дело в том, что в doctrine установлена кодировка utf8_unicode_ci. И если уже имеющиеся таблицы в вашей БД будут иметь кодировку utf8_general_ci, то обновление командой ./flow doctrine:update будет вызывать ошибку для таблиц с внешними ключами \"mysql errno 1005\".<br /> Создаваемые таблицы, и имеющиеся таблицы, должны быть в одинаковой кодировке.</p>\r\n<p>Если нет возможности установить для БД utf8_unicode_ci, то идем в Packages/Libraries/doctrine/dbal/lib/Doctrine/DBAL/Platforms/MySqlPlatform.php<br /> И в строке 385 меняем utf8_unicode_ci на utf8_general_ci</p>\r\n<pre>\r\n if ( ! isset($options[\'collate\'])) {\r\n    $options[\'collate\'] = \'utf8_general_ci\';\r\n}\r\n</pre>\r\n<p>2. Также проверьте, поддерживает ли ваш сервер установку PHP Variables _SERVER. Я столкнулся с тем, что мой сервер не имел такой поддержки, в следствие чего я не мог установить контекст для flow ни через .htaccess, ни через настройки virtual host в apache. Если такой поддержки нет, то вероятно установка TYPO3 Neos через инсталлятор закончится ошибкой,<br /> из-за того, что будет добавляться лишний сегмент в ссылке mydomain.tld/index.php/setup.<br /> Смотрите через phpinfo PHP Variables _SERVER[\"REDIRECT_FLOW_CONTEXT\"]</p>\r\n<p>3. Укажите в конфигурационном файле driverOptions: utf8</p>\r\n<pre>\r\n TYPO3:\r\n  Flow:\r\n    core:\r\n      phpBinaryPathAndFilename: /usr/bin/php\r\n    persistence:\r\n      backendOptions:\r\n        driver: pdo_mysql\r\n        dbname: your_db_name\r\n        user: your_db_user\r\n        password: db_pass\r\n        host: 127.0.0.1\r\n        driverOptions:\r\n          1002: \'SET NAMES utf8\'\r\n</pre>',0,0,0,0,1,360,18,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',1,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,1,0),(16,'',19,1591972786,1591972506,2,0,0,0,0,'',2,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,'text','Итак, сначала напишу, что мне не понравилось в Neos','center','<p>Для того, чтобы было понятно, я буду использовать терминологию TYPO3 CMS, не слишком углубляясь в детали.</p>\r\n<p>1. Предположим вы создаете сайт командой</p>\r\n<pre>\r\n ./flow site:kickstart VendorName.SiteName VendorName.SiteName </pre>\r\n<p>После этого будут созданы необходимые папки, файлы и минимальный код. Также будут созданы 2 страницы: главная и дочерняя. И в них будет иметься всего лишь одна область для контента: {content.main -&gt; f:format.raw()}</p>\r\n<p>Если же вы создадите еще одну область для контента и пропишете ее в шаблоне (к примеру {content.sidebar -&gt; f:format.raw()} ), то при рендеринге уже созданных страниц, будет вылезать ошибка.</p>\r\n<p>Что делать, если вам нужно на главной странице, больше одной области контента? Нужно заранее создать необходимое количество областей контента в NodeTypes.yaml, затем удалить дочернюю страницу, которая была создана через kickstart, и создать новую. И сделать главную страницу ссылкой на новую дочернюю, которая уже будет поддерживать нужное количество областей контента.</p>\r\n<p>2. В TYPO3 Neos нет возможности изменить тип страницы или тип элемента контента из \"админки\". Для элементов контента это может быть не так и важно, а вот для того, чтобы сделать главную страницу ссылкой, нужно войти в phpmyadmin и в таблице typo3_typo3cr_domain_model_nodedata найти главную страницу, и заменить nodetype с TYPO3.Neos.NodeTypes:Page на TYPO3.Neos:Shortcut. В целом это не очень удобно как для разработчика, так в дальнейшем и для редактора сайта.</p>\r\n<p>3. Предположим, вы создали страницу на которой есть элементы контента \"Текст с изображением\". Если вы удалите эти изображения через административный интерфейс, то элементы контента на которых были удаленные картинки будут также удалены. И в дальнейшем поведение поведение этой страницы будет очень странным. Я создавал на таких страницах новые элементы контента, они создавались без ошибок, но в дальнейшем также бесследно исчезали. Выход один - удалить и создать заново страницу.</p>\r\n<p>4. При создании новых страниц, система пытается автоматически задать псевдоним ссылки, исходя из названия создаваемой страницы. Если вы создаете страницы на русском языке, то здесь возникает проблема, и появляются всяческие ошибки. Я сначала создавал страницы по английски, и затем их переименовывал.</p>\r\n<p>5. По поводу текстового редактора. TYPO3 Neos использует редактор Aloha <a href=\"https://www.alohaeditor.org/\" target=\"_blank\">www.aloha-editor.org</a> Меня порадовало то, что он умеет вырезать \"мусор\" (font-size, font-color) когда вставляешь текст из текстовых процессоров, типа ms word или openoffice. Это тоже делалось в TYPO3 CMS соответствующей настройкой. Но в TYPO3 CMS еще можно настроить стили для текстов и блоков. Как сделать это в Aloha, я не нашел. Вообще поведение этого редактора не всегда понятно, зачастую, сделать в нем какие-то элементарные правки, оказывается нелегким делом. Возможно это дело привычки.</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,1,0),(17,'',19,1591972786,1591972751,2,0,0,0,0,'',3,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,'text','Из того, что понравилось','center','<p>1. Редактировать контент на сайте действительно удобно. Вы буквально будете редактировать то что вы видите. Самый настоящий \"What You See Is What You Get\" не на уровне текстового редактора, но на уровне всего сайта. Панели управления, слева - это дерево страниц и дерево элементов контента, справа - это свойства этих же элементов, при необходимости скрываются и не мешают наслаждаться работой с контентом.</p>\r\n<p>2. Для медиа элементов можно создать необходимое количество тегов, и при загрузке категоризовать их. При создании галерей, изображений, и т.д., картинки очень удобно брать из загруженных медиа элементов.</p>\r\n<p>3. Существует возможность включения авто-публикации. Т.е. вы что-то меняете или создаете на сайте, и это сразу становится опубликованным.</p>\r\n<p>4. Для разработчика стало проще создавать собственные плагины. При внесении дополнительных свойств в вашу модель, не нужно \"ковыряться\" в TCA, как это делалось в TYPO3 CMS. Достаточно выполнить команду ./flow doctrine:update и БД будет обновлена.</p>\r\n<p>5. Простота в создании собственных элементов контента. Простые элементы контента, такие как слайдер, небольшая галерея, можно создать даже без использования php. Они конфигурируются посредством языка Yaml</p>\r\n<p>6. Система имеет жесткую структуру каталогов. Это значит, что вы должны дейстовать по правилам, и тот, кто возможно будет заниматься этим сайтом после вас, не \"заблудится\" в файлах и папках.</p>\r\n<p>На данный момент, TYPO3 Neos, мне видится, хорошим выбором для не очень сложных сайтов, с очень удобным интерфейсом редактирования.</p>\r\n<p>Однако не стоить забывать о том, что \"фундаментом\" для TYPO3 Neos, является очень мощный фреймворк - TYPO3 Flow. Который также постоянно развивается и впитывает в себя всё самое лучшее из современной методологии разработки веб-приложений. Поэтому, кончено же, сфера применения TYPO3 Neos не ограничится простыми сайтами.</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,1,0),(18,'',17,1591973438,1591973438,2,0,0,0,0,'',512,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'text','Наиболее важные аспекты выбора TYPO3 для руководителей предприятий:','center','<ol> 	<li>TYPO3 – это система с открытым исходным кодом, имеет лицензию GPL. Т.е. За ее использование не придется платить. При этом система очень активно развивается и имеет большое количество разработчиков (1 300 веб-студий) по всему миру. Вы можете быть уверенны в том, что стагнации в сообществе TYPO3 не будет.</li> 	<li>TYPO3 является очень стабильной системой и входит в 10-ку самых безопасных. Таким образом это является частью стабильности и безопасности и вашего бизнеса.</li> 	<li>TYPO3 не предъявляет слишком завышенных требований к серверной части и программному обеспечению, для системы такого уровня. Распространенность хостинга работающего на ПО apache+php+mysql очень велика, выбор только за вами.</li> 	<li>TYPO3 очень масштабируемая система, начав с небольшого сайта, в дальнейшем его можно превратить в мощный портал с большим количеством функционала. При этом сохраняя одну инсталляцию системы и используя только одно дерево страниц, сайт можно сделать многодоменным и многоязычным.</li> 	<li>Во всем мире и в каждом регионе существует большое количество веб-студий работающих с TYPO3. Таким образом, если по какой-либо причине вы теряете связь с прежним разработчиком – это не помешает в дальнейшем нормально развивать сайт.</li> 	<li>TYPO3 имеет богатые SEO возможности. Вы не будете ограничены в технических средствах необходимых для SEO оптимизации и раскрутке вашего сайта. TYPO3 легко позволяет создавать красивые \"человекопонятные\" ссылки и управлять наиболее важными тегами title и метатегами Keywords и Description индивидуально для каждой страницы.</li> 	<li>TYPO3 может быть интегрирована с любым дизайном, без каких-либо условных ограничений, что не всегда возможно со многими портальными системами.</li> </ol>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(19,'',17,1591973484,1591973472,2,0,0,0,0,'',768,0,0,0,0,NULL,0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;s:25:\"tx_gridelements_container\";N;}',0,0,0,0,0,0,0,'text','Наиболее важные аспекты выбора TYPO3 для администраторов и редакторов сайта:','center','<ol> 	<li>Удобство редактирования, включающее в себя: наглядное дерево страниц сайта, встроенный html редактор, возможность удобного и быстрого копирования и перемещения блоков контента, внутренний поиск по сайту, удобная работа с файлами и изображениями и масса других возможностей. При ознакомлении с парадигмой работы с TYPO3 и небольшой тренировки, через 30 минут можно успешно работать с сайтом.</li> 	<li>Гибкое разделение прав внутренних пользователей работающих с сайтом. Каждому пользователю или группе можно назначить только тот участок сайта с которым он будет работать.</li> 	<li>Огромное количество готовых расширений, увеличивающих функционал сайта, практически на все случаи жизни.</li> 	<li>Большое количество документации, как по работе с системой и расширениям, так и по более сложным вопросам больше связанным с разработкой.</li> 	<li>Разделение кода ядра системы от внешнего представления, что позволяет обновлять систему до актуальной версии не затрагивая при этом текущей реализации сайта.</li> 	<li>Работа с закрытыми разделами сайта, доступными определенным внешним (фронт-енд) пользователям или группам.</li> </ol>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'2','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(20,'',18,1591973526,1591973526,2,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'header','Демо сайты на TYPO3 CMS и Neos CMS','',NULL,0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'15','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0),(21,'',18,1591973591,1591973591,2,0,0,0,0,'',512,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'text','','','<p>Демо сайты на назодятся в разработке</p>',0,0,0,0,0,0,0,2,0,0,'0','default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,-2,'0',0,0,0,0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_csseo_domain_model_evaluation`
--

DROP TABLE IF EXISTS `tx_csseo_domain_model_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_csseo_domain_model_evaluation` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `results` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_csseo_domain_model_evaluation`
--

LOCK TABLES `tx_csseo_domain_model_evaluation` WRITE;
/*!40000 ALTER TABLE `tx_csseo_domain_model_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_csseo_domain_model_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_csseo_domain_model_meta`
--

DROP TABLE IF EXISTS `tx_csseo_domain_model_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_csseo_domain_model_meta` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `l10n_diffsource` mediumblob,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `canonical` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(5) unsigned NOT NULL DEFAULT '0',
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `og_image` int(10) unsigned NOT NULL DEFAULT '0',
  `tw_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tw_description` text COLLATE utf8mb4_unicode_ci,
  `tw_image` int(10) unsigned NOT NULL DEFAULT '0',
  `tw_creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tw_site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_csseo_domain_model_meta`
--

LOCK TABLES `tx_csseo_domain_model_meta` WRITE;
/*!40000 ALTER TABLE `tx_csseo_domain_model_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_csseo_domain_model_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `review_state` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext COLLATE utf8mb4_unicode_ci,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `authorcompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(11) NOT NULL DEFAULT '0',
  `documentation_link` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `wsdl_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gridelements_backend_layout`
--

DROP TABLE IF EXISTS `tx_gridelements_backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gridelements_backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `frame` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `horizontal` smallint(6) NOT NULL DEFAULT '0',
  `top_level_layout` smallint(6) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci,
  `pi_flexform_ds` mediumtext COLLATE utf8mb4_unicode_ci,
  `pi_flexform_ds_file` text COLLATE utf8mb4_unicode_ci,
  `icon` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gridelements_backend_layout`
--

LOCK TABLES `tx_gridelements_backend_layout` WRITE;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_linkvalidator_link`
--

DROP TABLE IF EXISTS `tx_linkvalidator_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_linkvalidator_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_title` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `url_response` text COLLATE utf8mb4_unicode_ci,
  `last_check` int(11) NOT NULL DEFAULT '0',
  `link_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` int(11) NOT NULL DEFAULT '-1',
  `element_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `needs_recheck` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_linkvalidator_link`
--

LOCK TABLES `tx_linkvalidator_link` WRITE;
/*!40000 ALTER TABLE `tx_linkvalidator_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_linkvalidator_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_link`
--

DROP TABLE IF EXISTS `tx_news_domain_model_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8mb4_unicode_ci,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `parent` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `uri` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_link`
--

LOCK TABLES `tx_news_domain_model_link` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_link` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_link` VALUES (1,19,1591977321,1591977247,2,0,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,'',0,0,0,0,0,1,0,0,'Источник новости',NULL,3,'','https://typo3.org/article/typo3-v10-lts-safe-and-sound');
/*!40000 ALTER TABLE `tx_news_domain_model_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `editlock` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8mb4_unicode_ci,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `sorting` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `teaser` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci,
  `datetime` bigint(20) NOT NULL DEFAULT '0',
  `archive` bigint(20) NOT NULL DEFAULT '0',
  `author` tinytext COLLATE utf8mb4_unicode_ci,
  `author_email` tinytext COLLATE utf8mb4_unicode_ci,
  `categories` int(11) NOT NULL DEFAULT '0',
  `related` int(11) NOT NULL DEFAULT '0',
  `related_from` int(11) NOT NULL DEFAULT '0',
  `related_files` tinytext COLLATE utf8mb4_unicode_ci,
  `fal_related_files` int(10) unsigned DEFAULT '0',
  `related_links` tinytext COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tags` int(11) NOT NULL DEFAULT '0',
  `media` text COLLATE utf8mb4_unicode_ci,
  `fal_media` int(10) unsigned DEFAULT '0',
  `internalurl` text COLLATE utf8mb4_unicode_ci,
  `externalurl` text COLLATE utf8mb4_unicode_ci,
  `istopnews` int(11) NOT NULL DEFAULT '0',
  `content_elements` int(11) NOT NULL DEFAULT '0',
  `path_segment` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_title` tinytext COLLATE utf8mb4_unicode_ci,
  `import_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `sys_language_uid_l10n_parent` (`sys_language_uid`,`l10n_parent`),
  KEY `import` (`import_id`,`import_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `path_segment` (`path_segment`(185),`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news`
--

LOCK TABLES `tx_news_domain_model_news` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_news` VALUES (1,19,1591972786,1591797405,2,0,0,0,'',0,0,0,0,0,0,0,0,0,'a:27:{s:4:\"type\";N;s:9:\"istopnews\";N;s:5:\"title\";N;s:12:\"path_segment\";N;s:6:\"teaser\";N;s:8:\"datetime\";N;s:7:\"archive\";N;s:8:\"bodytext\";N;s:16:\"content_elements\";N;s:9:\"fal_media\";N;s:17:\"fal_related_files\";N;s:10:\"categories\";N;s:7:\"related\";N;s:13:\"related_links\";N;s:4:\"tags\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:17:\"alternative_title\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:5:\"notes\";N;}',0,0,0,0,0,'','',NULL,0,'TYPO3 Neos - первые впечатления от работы','6 марта 2014 года нашей студией запущен первый в России сайт rentspecstroy.ru на новой системе управления контентом TYPO3 Neos neos.typo3.org\r\n\r\nTYPO3 Neos это система управления контентом (CMS) следующего поколения, с открытым исходным кодом, распространяемая по лицензии GNU/GPL. TYPO3 Neos создана на базе PHP фреймворка TYPO3 Flow flow.typo3.org. Отныне, сообщество TYPO3 будет предоставлять два разных продукта CMS: TYPO3 CMS и TYPO3 Neos.','',1394459760,0,'Дмитрий Васильев','',2,0,0,NULL,0,'0','0','','',0,NULL,1,NULL,NULL,0,3,'typo3-neos-pervye-vpechatlenija-ot-raboty','','',''),(2,19,1591974814,1591797657,2,0,0,0,'',0,0,0,0,0,0,0,0,0,'a:27:{s:4:\"type\";N;s:9:\"istopnews\";N;s:5:\"title\";N;s:12:\"path_segment\";N;s:6:\"teaser\";N;s:8:\"datetime\";N;s:7:\"archive\";N;s:8:\"bodytext\";N;s:16:\"content_elements\";N;s:9:\"fal_media\";N;s:17:\"fal_related_files\";N;s:10:\"categories\";N;s:7:\"related\";N;s:13:\"related_links\";N;s:4:\"tags\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:17:\"alternative_title\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:5:\"notes\";N;}',0,0,0,0,0,'','',NULL,0,'Немного об Extbase (MVC фреймворк внутри TYPO3)','Преамбула. Эта заметка предназначена для тех кто сравнивает различные CMS (Системы управления контентом), фреймворки и другие возможные платформы для создания сайтов, с целью выбора наиболее подходящей. Это могут быть руководители IT отделов различных организаций, или просто продвинутые пользователи.','<p>Итак, снова о TYPO3. Одной из множества интересных особенностей TYPO3 является наличие встроенного «внутрь» самой CMS полноценного MVC фреймворка под названием Extbase.</p>\r\n<p>Немного истории. Extbase портирован в TYPO3 из фреймоврка TYPO3 Flow flow.typo3.org/home. TYPO3 Flow — это достаточно молодой php фреймворк (его разработка началась в 2008 году), который вобрал в себя все самые успешные современные концепции для построения веб-приложений. И хотя php фреймворков не так уж и мало, TYPO3 Flow “грозит» быть одним из самых мощных, и на то есть все основания.</p>\r\n<p>Вкратце, что такое MVC фреймворк. MVC это аббревиатура от Model -View - Controller (модель-представление-поведение ) . Это концепция программирования, при которой модель данных приложения, его отображение и управление приложением разделены на три отдельных составляющих. Когда происходит изменение или расширение какой-либо части, то это оказывает минимальное воздействие на остальные компоненты. Как следствие, уже готовое приложение можно без особых усилий расширять в функциональном плане или изменять его внешний вид. Добавлю также, что такая методология ведет к более строгому стилю программирования, и в случае если разработчик приложения по каким-то причинам не может далее его поддерживать, то его последователь без труда разберется в коде. Это немаловажно для заказчика.</p>\r\n<p>Extbase использует парадигму DDD (Domain Driven Design). Проектирование на основе предметной области. Такой подход хорошо применим в тех случаях, когда разработчик не особенно близко знаком с бизнес-логикой заказчика, и может, либо совместно с заказчиком, либо основываясь на его рекомендациях, грамотно спроектировать архитектуру будущего приложения. Для первоначально создания «скелета» приложения, Extbase использует специальный инструмент «Архитектор расширений», где можно легко создавать объекты будущей модели и определять связи между ними. (рис. 001.jpg) Таким образом проектирование происходит как-бы не «снизу» как это было раньше, когда создавались таблицы в базе данных, их отношения, и в дальнейшем было тяжело что-либо изменить, а «сверху». Сначала создаем архитектуру понятную обычному человеческому восприятию, а затем ее реализовываем. При этом DDD не отрицает, ни объектно-ориентированного программирования, ни MVC, но лишь дополняет существующие практики.</p>\r\n<p>Extbase освобождает разработчика от изнурительного написания sql запросов к базе данных. Вместо этого extbase использует встроенную ORM (object-relational mapping.), концепцию, которая связывает базу данных с с концепциями объектно-ориентированного программирования. Т.е. программист пишет запросы к БД в привычном ему стиле ООП. Это немаловажно, т. к. избавит от возможных ошибок к sql запросам, а также в целом ускорит написание приложения.</p>\r\n<p>Extbase позволяет разработчику практически полностью снять с себя бремя задач по проверке вводимых данных от пользователя во всевозможные формы. Это безусловный плюс к безопасности будущего приложения, и опять же, это увеличивает скорость разработки.</p>\r\n<p>Всё изложенное выше, позволяет с уверенностью констатировать, что использование extbase увеличит скорость разработки, улучшит качество конечного продукта и в конечном счете приведет к более полному взаимопониманию заказчика и разработчика.</p>',1421676000,0,'Дмитрий Васильев','dmitry@t3dev.ru',1,0,0,NULL,0,'0','0','','',0,NULL,1,NULL,NULL,0,0,'nemnogo-ob-extbase-mvc-freimvork-vnutri-typo3','','',''),(3,19,1591977321,1591974640,2,0,0,0,'',0,0,0,0,0,0,0,0,0,'a:27:{s:4:\"type\";N;s:9:\"istopnews\";N;s:5:\"title\";N;s:12:\"path_segment\";N;s:6:\"teaser\";N;s:8:\"datetime\";N;s:7:\"archive\";N;s:8:\"bodytext\";N;s:16:\"content_elements\";N;s:9:\"fal_media\";N;s:17:\"fal_related_files\";N;s:10:\"categories\";N;s:7:\"related\";N;s:13:\"related_links\";N;s:4:\"tags\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:17:\"alternative_title\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:5:\"notes\";N;}',0,0,0,0,0,'','',NULL,0,'Вышла TYPO3 v10 LTS ','Новая Long Term Support (LTS) версия TYPO3 включает набор дополнительных возможностей и улучшений административного интерфейса (Dashboard, новый визард для форм, восстановление пароля для BackEnd пользователей, новые возможности проверки внутренних ссылок на сайте), большой набор улучшений для интеграторов и разработчиков модулей.','<p>После публикации пяти спринтерских выпусков с июля 2019 года, TYPO3 сообщество может с гордостью заявить, что оснастило TYPO3 самыми современными библиотеками PHP и представило некоторые новые корпоративные функции. TYPO3 поднимает планку еще выше, а ядро системы более стабильно, чем когда-либо.</p>\r\n<p>В этой статье кратко изложены основные изменения всех выпусков спринта 10.x и почему владельцы веб-сайтов, интеграторы, разработчики и редакторы будут использовать новую версию LTS.</p>',1587481800,0,'','',0,0,0,NULL,0,'1','0','','',0,NULL,1,NULL,NULL,0,0,'vyshla-typo3-v10-lts','','','');
/*!40000 ALTER TABLE `tx_news_domain_model_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_related_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_related_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_related_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_related_mm`
--

LOCK TABLES `tx_news_domain_model_news_related_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_tag_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_tag_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_tag_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_tag_mm`
--

LOCK TABLES `tx_news_domain_model_news_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_ttcontent_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_ttcontent_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_ttcontent_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_ttcontent_mm`
--

LOCK TABLES `tx_news_domain_model_news_ttcontent_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_ttcontent_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_ttcontent_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_tag`
--

DROP TABLE IF EXISTS `tx_news_domain_model_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_tag` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` smallint(6) NOT NULL DEFAULT '0',
  `hidden` smallint(6) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext COLLATE utf8mb4_unicode_ci,
  `l10n_source` int(11) NOT NULL DEFAULT '0',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `seo_headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_tag`
--

LOCK TABLES `tx_news_domain_model_tag` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_powermail_domain_model_answer`
--

DROP TABLE IF EXISTS `tx_powermail_domain_model_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_powermail_domain_model_answer` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `mail` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_type` int(10) unsigned NOT NULL DEFAULT '0',
  `field` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `mail` (`mail`),
  KEY `deleted` (`deleted`),
  KEY `hidden` (`hidden`),
  KEY `starttime` (`starttime`),
  KEY `endtime` (`endtime`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_powermail_domain_model_answer`
--

LOCK TABLES `tx_powermail_domain_model_answer` WRITE;
/*!40000 ALTER TABLE `tx_powermail_domain_model_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_powermail_domain_model_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_powermail_domain_model_field`
--

DROP TABLE IF EXISTS `tx_powermail_domain_model_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_powermail_domain_model_field` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `page` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_element` int(11) NOT NULL DEFAULT '0',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefill_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_from_typoscript` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` int(11) NOT NULL DEFAULT '0',
  `validation_configuration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `multiselect` smallint(5) unsigned NOT NULL DEFAULT '0',
  `datepicker_settings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feuser_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sender_email` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender_name` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mandatory` smallint(5) unsigned NOT NULL DEFAULT '0',
  `own_marker_select` smallint(5) unsigned NOT NULL DEFAULT '0',
  `marker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `auto_marker` smallint(5) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `parent_page` (`page`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_powermail_domain_model_field`
--

LOCK TABLES `tx_powermail_domain_model_field` WRITE;
/*!40000 ALTER TABLE `tx_powermail_domain_model_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_powermail_domain_model_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_powermail_domain_model_form`
--

DROP TABLE IF EXISTS `tx_powermail_domain_model_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_powermail_domain_model_form` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` smallint(5) unsigned NOT NULL DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_dummy_record` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_powermail_domain_model_form`
--

LOCK TABLES `tx_powermail_domain_model_form` WRITE;
/*!40000 ALTER TABLE `tx_powermail_domain_model_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_powermail_domain_model_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_powermail_domain_model_mail`
--

DROP TABLE IF EXISTS `tx_powermail_domain_model_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_powermail_domain_model_mail` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `sender_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sender_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `receiver_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feuser` int(11) NOT NULL DEFAULT '0',
  `sender_ip` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `form` int(11) NOT NULL DEFAULT '0',
  `answers` int(10) unsigned NOT NULL DEFAULT '0',
  `marketing_referer_domain` text COLLATE utf8mb4_unicode_ci,
  `marketing_referer` text COLLATE utf8mb4_unicode_ci,
  `marketing_country` text COLLATE utf8mb4_unicode_ci,
  `marketing_mobile_device` smallint(5) unsigned NOT NULL DEFAULT '0',
  `marketing_frontend_language` int(11) NOT NULL DEFAULT '0',
  `marketing_browser_language` text COLLATE utf8mb4_unicode_ci,
  `marketing_page_funnel` text COLLATE utf8mb4_unicode_ci,
  `spam_factor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_powermail_domain_model_mail`
--

LOCK TABLES `tx_powermail_domain_model_mail` WRITE;
/*!40000 ALTER TABLE `tx_powermail_domain_model_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_powermail_domain_model_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_powermail_domain_model_page`
--

DROP TABLE IF EXISTS `tx_powermail_domain_model_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_powermail_domain_model_page` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_state` smallint(6) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob,
  `l10n_state` text COLLATE utf8mb4_unicode_ci,
  `form` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fields` int(10) unsigned NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `parent_form` (`form`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_powermail_domain_model_page`
--

LOCK TABLES `tx_powermail_domain_model_page` WRITE;
/*!40000 ALTER TABLE `tx_powermail_domain_model_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_powermail_domain_model_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `disable` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT '0',
  `lastexecution_failure` text COLLATE utf8mb4_unicode_ci,
  `lastexecution_context` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob,
  `serialized_executions` mediumblob,
  `task_group` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(10) unsigned NOT NULL DEFAULT '0',
  `crdate` int(10) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `groupName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-12 15:59:23
