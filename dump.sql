
-- Dump of TYPO3 Connection "Default"
-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: db4022.mydbserver.com    Database: usr_p686704_1
-- ------------------------------------------------------
-- Server version	8.0.25-15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_layout` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `icon` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_dashboards` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `cruser_id` int unsigned NOT NULL DEFAULT '0',
  `widgets` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `identifier` (`identifier`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES (1,0,1739790141,1739790141,0,0,0,0,1,'{\"d808cafd730e9c507c82be7151baf844c76deadc\":{\"identifier\":\"t3information\"},\"713a987d6f4a534776e1e60f19ded85cc93345a7\":{\"identifier\":\"docGettingStarted\"}}','6ed34a762a2e2d0f0119cce121fb0631965db251','Mein Dashboard');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_groups` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `tables_select` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `db_mountpoints` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `file_mountpoints` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `file_permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `workspace_perms` smallint unsigned NOT NULL DEFAULT '0',
  `pagetypes_select` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `tables_modify` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `non_exclude_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `explicit_allowdeny` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `allowed_languages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `custom_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `groupMods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `mfa_providers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `TSconfig` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `subgroup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `category_perms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `availableWidgets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_users` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `disable` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'default',
  `uc` mediumblob DEFAULT (NULL),
  `workspace_id` int NOT NULL DEFAULT '0',
  `mfa` mediumblob DEFAULT (NULL),
  `password_reset_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `usergroup` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `avatar` int unsigned NOT NULL DEFAULT '0',
  `db_mountpoints` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `file_mountpoints` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `realName` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `admin` smallint unsigned NOT NULL DEFAULT '0',
  `options` smallint unsigned NOT NULL DEFAULT '3',
  `file_permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `workspace_perms` smallint unsigned NOT NULL DEFAULT '1',
  `userMods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `allowed_languages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `TSconfig` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `lastlogin` bigint NOT NULL DEFAULT '0',
  `category_perms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1739444865,1739437437,0,0,0,0,NULL,'de',_binary 'a:6:{s:10:\"moduleData\";a:11:{s:6:\"web_ts\";a:1:{s:6:\"action\";s:25:\"web_typoscript_infomodify\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:0:{}i:1;s:32:\"deac478137dd48a97e299bd046412e21\";}s:16:\"opendocs::recent\";a:8:{s:32:\"deac478137dd48a97e299bd046412e21\";a:5:{i:0;s:47:\"Auch Handschläge haben Qualitätsunterschiede.\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:2;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:97:\"/typo3/module/web/layout?token=b99a374f9bab9f14c3d1df254fdbc83937780f56&id=1#element-tt_content-2\";}s:32:\"ea5808446ef89a93a3ae0c95ac46d0d0\";a:5:{i:0;s:418:\"Lieber Gast! Unsere Datenschutzerklärung wird derzeit nur in deutscher Sprache bereitgestellt, um sicherzustellen, dass die angeführten Maßnahmen/Angaben auch wirklich korrekt sind und es zu keinen Fehlinterpretationen aufgrund einer unzureichenden Übersetzung kommen kann. Falls Sie Fragen zum Thema Datenschutz auf unserer Website haben, können Sie uns jederzeit kontaktieren. Vielen Dank für Ihr Verständnis!\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:9;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B9%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:9;s:3:\"pid\";i:5;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=b99a374f9bab9f14c3d1df254fdbc83937780f56&id=5\";}s:32:\"ffbd6ae78a9aa555f88d6295c30fb80c\";a:5:{i:0;s:602:\"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.&amp;nbsp;\r\nAt vero eos et accusam:\r\net justo duo dolores et ea rebum.Stet clita kasd gubergren, nosea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:10;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B10%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:10;s:3:\"pid\";i:5;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=b99a374f9bab9f14c3d1df254fdbc83937780f56&id=5\";}s:32:\"f87337ea07fd5e46b7487a4d63a03a03\";a:5:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:8;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B8%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:8;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=b99a374f9bab9f14c3d1df254fdbc83937780f56&id=3\";}s:32:\"af6a208f792a83220f87a953a62a081a\";a:5:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:6;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B6%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:6;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=b99a374f9bab9f14c3d1df254fdbc83937780f56&id=3\";}s:32:\"629911c017052e9e049ce359020150c0\";a:5:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B7%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:7;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=b99a374f9bab9f14c3d1df254fdbc83937780f56&id=3\";}s:32:\"494c59ed0b451cdb0042831766e2d4b1\";a:5:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:5;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B5%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:5;s:3:\"pid\";i:3;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=b99a374f9bab9f14c3d1df254fdbc83937780f56&id=3\";}s:32:\"c312013d83c1a6ad7fec8b36a37ba3c8\";a:5:{i:0;s:25:\"Mag Rechtsanwalt Schiestl\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=daaa50d12714646f5cdf678bfe83802a3aaf1270&id=1&\";}}s:29:\"web_typoscript_constanteditor\";a:2:{s:23:\"selectedTemplatePerPage\";a:1:{i:1;i:-1;}s:16:\"selectedCategory\";s:15:\"plugin.tx_csseo\";}s:23:\"backend_user_management\";a:0:{}s:17:\"typoscript_active\";a:6:{s:18:\"sortAlphabetically\";b:1;s:28:\"displayConstantSubstitutions\";b:1;s:15:\"displayComments\";b:1;s:23:\"selectedTemplatePerPage\";a:1:{i:1;i:-1;}s:18:\"constantConditions\";a:0:{}s:15:\"setupConditions\";a:0:{}}s:25:\"web_typoscript_infomodify\";a:1:{s:23:\"selectedTemplatePerPage\";a:1:{i:1;i:-1;}}s:12:\"pagetsconfig\";a:1:{s:6:\"action\";s:18:\"pagetsconfig_pages\";}s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:19:\"1:/user_upload/dev/\";}s:28:\"dashboard/current_dashboard/\";s:40:\"6ed34a762a2e2d0f0119cce121fb0631965db251\";}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"moduleSessionID\";a:11:{s:6:\"web_ts\";s:40:\"93b258b2bc3663cd43022798ad5326e60f1adde3\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"acccec90d8948020d95a62dac2e4103c46a76338\";s:10:\"FormEngine\";s:40:\"acccec90d8948020d95a62dac2e4103c46a76338\";s:16:\"opendocs::recent\";s:40:\"acccec90d8948020d95a62dac2e4103c46a76338\";s:29:\"web_typoscript_constanteditor\";s:40:\"93b258b2bc3663cd43022798ad5326e60f1adde3\";s:23:\"backend_user_management\";s:40:\"93b258b2bc3663cd43022798ad5326e60f1adde3\";s:17:\"typoscript_active\";s:40:\"93b258b2bc3663cd43022798ad5326e60f1adde3\";s:25:\"web_typoscript_infomodify\";s:40:\"93b258b2bc3663cd43022798ad5326e60f1adde3\";s:12:\"pagetsconfig\";s:40:\"93b258b2bc3663cd43022798ad5326e60f1adde3\";s:16:\"browse_links.php\";s:40:\"acccec90d8948020d95a62dac2e4103c46a76338\";s:28:\"dashboard/current_dashboard/\";s:40:\"0eed63fc7df5a1ecc1f28e5b4e242b49d4ecf581\";}s:10:\"inlineView\";s:391:\"{\"tt_content\":{\"NEW67addb2d21e41173753810\":{\"sys_file_reference\":[1]},\"NEW67af1a761b787393806261\":{\"sys_file_reference\":[2]},\"3\":{\"sys_file_reference\":[\"3\"]},\"NEW67af23f722b3d403072302\":{\"sys_file_reference\":[4]},\"4\":{\"sys_file_reference\":[\"4\"]},\"1\":{\"sys_file_reference\":[\"1\"]},\"NEW67b84425310cb893964122\":{\"sys_file_reference\":[7]},\"NEW67b84461ee733939609576\":{\"netwerk_facts_facts\":[3]}}}\";}',0,NULL,'','netwerker','$argon2i$v=19$m=65536,t=16,p=1$R1ZKbFdEL2RkZGpkUHlXag$E0GGBoffHhkGweyN89VcwgFVcqWwAfKNJXL1uXrM3yQ','',0,NULL,'','','',1,3,NULL,1,NULL,'',NULL,1741946124,NULL),(2,0,1739437553,1739437553,0,0,0,0,NULL,'default',_binary 'a:4:{s:10:\"moduleData\";a:0:{}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";}',0,NULL,'','_cli_','$argon2i$v=19$m=65536,t=16,p=1$TU91RFkuVHFTMGk3NkJXVw$KRwRqT8evipZlEftPWZA6Whz9DmQODvBXjpxq6JpcVM','',0,NULL,'','','',1,3,NULL,1,NULL,'',NULL,0,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_groups` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `subgroup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `felogin_redirectPid` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_users` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `disable` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `tx_extbase_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `uc` blob DEFAULT (NULL),
  `is_online` int unsigned NOT NULL DEFAULT '0',
  `mfa` mediumblob DEFAULT (NULL),
  `felogin_forgotHash` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `usergroup` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `name` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `telephone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fax` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `zip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `www` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `company` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `image` int unsigned NOT NULL DEFAULT '0',
  `lastlogin` bigint NOT NULL DEFAULT '0',
  `felogin_redirectPid` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netwerk_accordion_accordion`
--

DROP TABLE IF EXISTS `netwerk_accordion_accordion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netwerk_accordion_accordion` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `foreign_table_parent_uid` int unsigned NOT NULL DEFAULT '0',
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` longtext DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent_uid` (`foreign_table_parent_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netwerk_accordion_accordion`
--

LOCK TABLES `netwerk_accordion_accordion` WRITE;
/*!40000 ALTER TABLE `netwerk_accordion_accordion` DISABLE KEYS */;
/*!40000 ALTER TABLE `netwerk_accordion_accordion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netwerk_facts_facts`
--

DROP TABLE IF EXISTS `netwerk_facts_facts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netwerk_facts_facts` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `foreign_table_parent_uid` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` longtext DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent_uid` (`foreign_table_parent_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netwerk_facts_facts`
--

LOCK TABLES `netwerk_facts_facts` WRITE;
/*!40000 ALTER TABLE `netwerk_facts_facts` DISABLE KEYS */;
INSERT INTO `netwerk_facts_facts` VALUES (1,3,1740129426,1740129426,0,0,0,0,'',1,0,0,0,0,NULL,'',7,'+ 25','Jahre Erfahrung\r\nund Expertise'),(2,3,1740129426,1740129426,0,0,0,0,'',2,0,0,0,0,NULL,'',7,'+ 200','erfolgreich\r\nabgewickelte Fälle'),(3,3,1740129426,1740129426,0,0,0,0,'',3,0,0,0,0,NULL,'',7,'+ 250 ','zufriedene Kunden\r\nund Partner');
/*!40000 ALTER TABLE `netwerk_facts_facts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netwerk_roomteaser_items`
--

DROP TABLE IF EXISTS `netwerk_roomteaser_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netwerk_roomteaser_items` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `foreign_table_parent_uid` int unsigned NOT NULL DEFAULT '0',
  `image` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `text` longtext DEFAULT (NULL),
  `url` text NOT NULL DEFAULT (_utf8mb3''),
  `linktext` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent_uid` (`foreign_table_parent_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netwerk_roomteaser_items`
--

LOCK TABLES `netwerk_roomteaser_items` WRITE;
/*!40000 ALTER TABLE `netwerk_roomteaser_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `netwerk_roomteaser_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netwerk_teaser_teaser`
--

DROP TABLE IF EXISTS `netwerk_teaser_teaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netwerk_teaser_teaser` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `foreign_table_parent_uid` int unsigned NOT NULL DEFAULT '0',
  `image` int unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `linktitle` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`uid`),
  KEY `parent_uid` (`foreign_table_parent_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netwerk_teaser_teaser`
--

LOCK TABLES `netwerk_teaser_teaser` WRITE;
/*!40000 ALTER TABLE `netwerk_teaser_teaser` DISABLE KEYS */;
/*!40000 ALTER TABLE `netwerk_teaser_teaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netwerk_teaseroverview_teaser`
--

DROP TABLE IF EXISTS `netwerk_teaseroverview_teaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netwerk_teaseroverview_teaser` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `foreign_table_parent_uid` int unsigned NOT NULL DEFAULT '0',
  `icon` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` longtext DEFAULT (NULL),
  `url` text NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`uid`),
  KEY `parent_uid` (`foreign_table_parent_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netwerk_teaseroverview_teaser`
--

LOCK TABLES `netwerk_teaseroverview_teaser` WRITE;
/*!40000 ALTER TABLE `netwerk_teaseroverview_teaser` DISABLE KEYS */;
/*!40000 ALTER TABLE `netwerk_teaseroverview_teaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netwerk_teaserservices_items`
--

DROP TABLE IF EXISTS `netwerk_teaserservices_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netwerk_teaserservices_items` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `foreign_table_parent_uid` int unsigned NOT NULL DEFAULT '0',
  `image` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` longtext DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent_uid` (`foreign_table_parent_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netwerk_teaserservices_items`
--

LOCK TABLES `netwerk_teaserservices_items` WRITE;
/*!40000 ALTER TABLE `netwerk_teaserservices_items` DISABLE KEYS */;
INSERT INTO `netwerk_teaserservices_items` VALUES (1,3,1740129445,1740129363,0,0,0,0,'',1,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',6,1,'Versicherungsrecht','Unsere Kanzlei bietet Beratung und Unterstützung in Versicherungsangelegenheiten und Hilfestellung bei der Geltendmachung von Versicherungsansprüchen. Versicherungsverträge sind oft komplex und bieten vielfältige rechtliche Fragestellungen, sei es bei der Prüfung von Versicherungspolicen, der Regulierung von Schadensfällen oder der Klärung von Haftungsfragen. Unsere Kanzlei unterstützt Sie dabei, Ihre Ansprüche gegenüber Versicherungen erfolgreich durchzusetzen und Ihre Rechte zu wahren.'),(2,3,1740129445,1740129363,0,0,0,0,'',2,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',6,1,'Verwaltungsrecht','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor nisi at turpis cursus, at placerat magna aliquet. Vestibulum sollicitudin, sapien at euismod scelerisque, odio nisl feugiat augue, nec luctus elit nunc eu mauris. Vivamus sit amet ex at lorem tristique iaculis. Sed tempor, ante ac lobortis tincidunt, magna purus efficitur urna, eu fermentum nulla leo non leo. Nulla facilisi. Morbi ut bibendum nunc, nec congue est. Sed posuere leo vitae dui convallis, vel suscipit lorem gravida. Donec tincidunt erat at justo dapibus, et suscipit nisi volutpat. Pellentesque sit amet ex at ipsum.');
/*!40000 ALTER TABLE `netwerk_teaserservices_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netwerk_teasertext_items`
--

DROP TABLE IF EXISTS `netwerk_teasertext_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netwerk_teasertext_items` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `foreign_table_parent_uid` int unsigned NOT NULL DEFAULT '0',
  `image` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` longtext DEFAULT (NULL),
  `url` text NOT NULL DEFAULT (_utf8mb3''),
  `linktext` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent_uid` (`foreign_table_parent_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netwerk_teasertext_items`
--

LOCK TABLES `netwerk_teasertext_items` WRITE;
/*!40000 ALTER TABLE `netwerk_teasertext_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `netwerk_teasertext_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netwerk_textimages_elements`
--

DROP TABLE IF EXISTS `netwerk_textimages_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netwerk_textimages_elements` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `foreign_table_parent_uid` int unsigned NOT NULL DEFAULT '0',
  `icon` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `bodytext` longtext DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent_uid` (`foreign_table_parent_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netwerk_textimages_elements`
--

LOCK TABLES `netwerk_textimages_elements` WRITE;
/*!40000 ALTER TABLE `netwerk_textimages_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `netwerk_textimages_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `rowDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `perms_userid` int unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int unsigned NOT NULL DEFAULT '0',
  `perms_user` smallint unsigned NOT NULL DEFAULT '0',
  `perms_group` smallint unsigned NOT NULL DEFAULT '0',
  `perms_everybody` smallint unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int unsigned NOT NULL DEFAULT '0',
  `shortcut` int unsigned NOT NULL DEFAULT '0',
  `content_from_pid` int unsigned NOT NULL DEFAULT '0',
  `mount_pid` int unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int NOT NULL DEFAULT '0',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT '0.5',
  `doktype` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(57) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `TSconfig` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `php_tree_stop` smallint unsigned NOT NULL DEFAULT '0',
  `categories` int unsigned NOT NULL DEFAULT '0',
  `layout` int unsigned NOT NULL DEFAULT '0',
  `extendToSubpages` smallint unsigned NOT NULL DEFAULT '0',
  `nav_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `nav_hide` smallint unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `target` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lastUpdated` bigint NOT NULL DEFAULT '0',
  `newUntil` bigint NOT NULL DEFAULT '0',
  `cache_timeout` int unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `no_search` smallint unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int unsigned NOT NULL DEFAULT '0',
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `abstract` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `media` int unsigned NOT NULL DEFAULT '0',
  `is_siteroot` smallint unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` smallint NOT NULL DEFAULT '0',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint unsigned NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tsconfig_includes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `seo_title` varchar(57) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `no_index` smallint unsigned NOT NULL DEFAULT '0',
  `no_follow` smallint unsigned NOT NULL DEFAULT '0',
  `sitemap_changefreq` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `canonical_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT (_utf8mb3''),
  `og_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `og_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `og_image` int unsigned NOT NULL DEFAULT '0',
  `twitter_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `twitter_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `twitter_image` int unsigned NOT NULL DEFAULT '0',
  `twitter_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tx_staticfilecache_cache` smallint DEFAULT '1',
  `tx_staticfilecache_cache_force` smallint DEFAULT '0',
  `tx_staticfilecache_cache_offline` smallint DEFAULT '0',
  `tx_staticfilecache_cache_priority` int NOT NULL DEFAULT '0',
  `tx_csseo_title_only` smallint unsigned NOT NULL DEFAULT '0',
  `tx_csseo_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tx_csseo_tw_creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tx_csseo_tw_site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tx_csseo_json_ld` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1739443358,1739443339,0,0,0,0,'',256,NULL,0,0,0,0,NULL,_binary '{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"tx_csseo_title_only\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"tx_csseo_keyword\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"tx_csseo_tw_creator\":\"\",\"tx_csseo_tw_site\":\"\",\"abstract\":\"\",\"tx_csseo_json_ld\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"tx_staticfilecache_cache\":\"\",\"tx_staticfilecache_cache_force\":\"\",\"tx_staticfilecache_cache_offline\":\"\",\"tx_staticfilecache_cache_priority\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,1739443358,0,0,0,0,0.5,1,'Home','/',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,1,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',1,0,0,0,0,'','','',NULL),(2,1,1739444984,1739444971,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,1739444984,0,0,0,0,0.5,1,'Kanzlei','/kanzlei',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',1,0,0,0,0,'','','',NULL),(3,1,1739445021,1739445006,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,1739445021,0,0,0,0,0.5,1,'Tätigkeitsgebiete','/taetigkeitsgebiete',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',1,0,0,0,0,'','','',NULL),(4,1,1740126903,1739445168,1,0,0,0,'0',64,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,0,0,0,0,0,0.5,1,'Kontakt','/kontakt',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',1,0,0,0,0,'','','',NULL),(5,1,1740129596,1740129593,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,1740129596,0,0,0,0,0.5,1,'Datenschutz','/datenschutz',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',1,0,0,0,0,'','','',NULL),(6,1,1740129636,1740129633,0,0,0,0,'0',384,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,0,0,0,0,0,0.5,1,'Impressum','/impressum',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',1,0,0,0,0,'','','',NULL),(7,1,1740129647,1740129644,0,0,0,0,'0',448,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,0,0,0,0,0,0.5,1,'AGB','/agb',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',1,0,0,0,0,'','','',NULL),(8,1,1740129656,1740129653,0,0,0,0,'0',320,NULL,0,0,0,0,NULL,_binary '{\"hidden\":\"\"}',0,0,0,0,1,0,31,27,0,0,0,0,0,0,0.5,199,'Footer','/footer',NULL,0,0,0,0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'',1,0,0,0,0,'','','',NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` int unsigned NOT NULL DEFAULT '0',
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `arguments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `sorting` int NOT NULL DEFAULT '0',
  `sc_group` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_category` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `items` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `parent` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int unsigned NOT NULL DEFAULT '0',
  `uid_foreign` int unsigned NOT NULL DEFAULT '0',
  `sorting` int unsigned NOT NULL DEFAULT '0',
  `sorting_foreign` int unsigned NOT NULL DEFAULT '0',
  `tablenames` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid_local`,`uid_foreign`,`tablenames`,`fieldname`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_csp_resolution`
--

DROP TABLE IF EXISTS `sys_csp_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_csp_resolution` (
  `summary` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` int unsigned NOT NULL,
  `scope` varchar(264) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mutation_identifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `mutation_collection` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `meta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  PRIMARY KEY (`summary`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_csp_resolution`
--

LOCK TABLES `sys_csp_resolution` WRITE;
/*!40000 ALTER TABLE `sys_csp_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_csp_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `last_indexed` int NOT NULL DEFAULT '0',
  `identifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `identifier_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `creation_date` int NOT NULL DEFAULT '0',
  `modification_date` int NOT NULL DEFAULT '0',
  `storage` int unsigned NOT NULL DEFAULT '0',
  `type` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `size` int NOT NULL DEFAULT '0',
  `missing` smallint unsigned NOT NULL DEFAULT '0',
  `metadata` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1739446650,1739446651,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',1739437393,1739437393,1,5,'application/x-empty',0,0,0),(2,0,1739446667,1739446667,'/user_upload/dev/hero.jpg','21a8dd5cd431c9cf0fc82d20c101a2ffbd213a0f','f860e7a438e19d975585dab8b8ef8bdd37c9321a','jpg','hero.jpg','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e',1739446667,1739446667,1,2,'image/jpeg',767682,0,0),(3,0,1739529251,1739529251,'/user_upload/dev/pexels-pavel-danilyuk-8112136.jpg','ba48f0202de16027a9b1ccb9af95720c40ccdbc1','f860e7a438e19d975585dab8b8ef8bdd37c9321a','jpg','pexels-pavel-danilyuk-8112136.jpg','532a0fab95ca6630911a6b468150d52ea70ea12d',1739529251,1739529251,1,2,'image/jpeg',114501,0,0);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_collection` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'static',
  `files` int unsigned NOT NULL DEFAULT '0',
  `folder_identifier` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `recursive` smallint unsigned NOT NULL DEFAULT '0',
  `category` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `alternative` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `categories` int unsigned NOT NULL DEFAULT '0',
  `file` int unsigned NOT NULL DEFAULT '0',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `width` int NOT NULL DEFAULT '0',
  `height` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1739446650,1739446650,0,0,NULL,'',0,0,0,0,NULL,NULL,0,1,NULL,0,0),(2,0,1739446667,1739446667,0,0,NULL,'',0,0,0,0,NULL,NULL,0,2,NULL,2744,4108),(3,0,1739529251,1739529251,0,0,NULL,'',0,0,0,0,NULL,NULL,0,3,NULL,1920,1282);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `tstamp` int NOT NULL DEFAULT '0',
  `crdate` int NOT NULL DEFAULT '0',
  `storage` int NOT NULL DEFAULT '0',
  `original` int NOT NULL DEFAULT '0',
  `identifier` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `processing_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `configuration` blob DEFAULT (NULL),
  `configurationsha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `checksum` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `width` int DEFAULT '0',
  `height` int DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1739446668,1739446667,1,2,'/_processed_/d/2/preview_hero_09fd6abf49.jpg','preview_hero_09fd6abf49.jpg','',_binary 'a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.Preview','09fd6abf49',43,64),(2,1740129509,1739447111,1,2,'/_processed_/d/2/csm_hero_bdf1fe764a.jpg','csm_hero_bdf1fe764a.jpg','',_binary 'a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','bdf1fe764a',32,32),(3,1739447113,1739447111,1,2,'/_processed_/d/2/csm_hero_62d1736f88.jpg','csm_hero_62d1736f88.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','62d1736f88',77,115),(4,1739447113,1739447112,1,2,'/_processed_/d/2/csm_hero_2fee94b361.jpg','csm_hero_2fee94b361.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','2fee94b361',100,150),(5,1739447113,1739447112,1,2,'/_processed_/d/2/csm_hero_0cfab2e259.jpg','csm_hero_0cfab2e259.jpg','',_binary 'a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','0cfab2e259',30,45),(6,1739447116,1739447116,1,2,'/_processed_/d/2/csm_hero_f20df3c0f4.jpg','csm_hero_f20df3c0f4.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1000;s:9:\"maxHeight\";i:1000;s:4:\"crop\";N;}','1097b19f7c94bc1bdd2bf43bfc22198c30890d2e','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','f20df3c0f4',668,1000),(7,1739447116,1739447116,1,2,'/_processed_/d/2/csm_hero_b2328a68fb.jpg','csm_hero_b2328a68fb.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:300;s:9:\"maxHeight\";i:300;s:4:\"crop\";N;}','e239fcbae08ee546b841850592062fe370de3336','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','b2328a68fb',200,300),(8,1739447156,1739447151,1,2,'/_processed_/d/2/csm_hero_4f11351e56.jpg','csm_hero_4f11351e56.jpg','',_binary 'a:4:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}}','a0a0f30808c80e5ae3388acd9cad0f192c6e28af','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','4f11351e56',62,45),(9,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"400c\";s:6:\"height\";s:4:\"445c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','6ecd34fe2998b8e2a370d604a3077135045b1743','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','2fd1c5ad67',400,445),(10,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";s:4:\"890c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','44de04dde550d37faa9220b598d91d4657fd5327','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','969f527e97',800,890),(11,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"570c\";s:6:\"height\";s:4:\"445c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','f5c0614678ad4da10c168b9bd513629189232c1f','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','09b2dd34e1',570,445),(12,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1140c\";s:6:\"height\";s:4:\"890c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','d09161863f5cd9fbb242952b4188cc87bfa6ee8a','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','31c051da4a',1140,890),(13,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";s:4:\"440c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','55b9bdeef41fcaf82f1fed41d5f98a2443c1f112','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','152b098512',800,440),(14,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1600c\";s:6:\"height\";s:4:\"880c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','3dffd5dcb72bb38929f6eafb2e9cacf36c5df70c','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','5c9aaa3806',1600,880),(15,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1000c\";s:6:\"height\";s:4:\"550c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','04baf0fbdc15885fa1b754ea12b0ed2bf6de18a7','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','94a224e4c2',1000,550),(16,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"2000c\";s:6:\"height\";s:5:\"1100c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','abe5e7d06fef3d6809a4940ed37929e4e2a1f8fd','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','56c97e130a',2000,1100),(17,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1400c\";s:6:\"height\";s:4:\"770c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','2b526f2255223b9d0b6702d2d5ea371a2090958e','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','585e212966',1400,770),(18,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"2800c\";s:6:\"height\";s:5:\"1540c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','b7525b2c32be8b543f5609f742e50fab52e26d98','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','6fcafca9f3',2800,1540),(19,1739790174,1739446667,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"4000c\";s:6:\"height\";s:5:\"2200c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:936.624;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2004.704;}s:13:\"fileExtension\";s:4:\"webp\";}','da86357766ba3eb954b8173f96a44052083489c6','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','5153937d49',4000,2200),(20,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_e297168cde.webp','csm_hero_e297168cde.webp',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"400c\";s:6:\"height\";s:4:\"445c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','deb16f82a319f2229dc24c499d163407daab98b0','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','e297168cde',400,445),(21,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_f7385bbadc.webp','csm_hero_f7385bbadc.webp',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";s:4:\"890c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','3e47b430525808bb6a4d421e50e38f9969efbe0a','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','f7385bbadc',800,890),(22,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_610187f9ca.webp','csm_hero_610187f9ca.webp',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"570c\";s:6:\"height\";s:4:\"445c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','a80bd6691852c473f5bca3a683243cc6bd69a234','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','610187f9ca',570,445),(23,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_12ddf0354b.webp','csm_hero_12ddf0354b.webp',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1140c\";s:6:\"height\";s:4:\"890c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','d933293229b94d4a35873288a1147734508bfb4f','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','12ddf0354b',1140,890),(24,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_62c04abc2b.webp','csm_hero_62c04abc2b.webp',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";s:4:\"440c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','2d9ffaa19e27af2da812c86740bcb296e6240711','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','62c04abc2b',800,440),(25,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_f3ac2be022.webp','csm_hero_f3ac2be022.webp',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1600c\";s:6:\"height\";s:4:\"880c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','b1395ca7eb335c57e1d766e9107e0b75e1401b5c','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','f3ac2be022',1600,880),(26,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_1c99ebcc13.webp','csm_hero_1c99ebcc13.webp',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1000c\";s:6:\"height\";s:4:\"550c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','b76a24959eb0b065ddcd27fa66f299909ef548c5','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','1c99ebcc13',1000,550),(27,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_c48cfe8a7e.webp','csm_hero_c48cfe8a7e.webp',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2000c\";s:6:\"height\";s:5:\"1100c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','29539f91be189c326043065d2de95a98ca029745','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','c48cfe8a7e',2000,1100),(28,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_919c18af80.webp','csm_hero_919c18af80.webp',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1400c\";s:6:\"height\";s:4:\"770c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','59dbcbcc39b6a228e7879325e2fb2ead8e9beab8','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','919c18af80',1400,770),(29,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_7270975220.webp','csm_hero_7270975220.webp',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2800c\";s:6:\"height\";s:5:\"1540c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','7088c5586339545defc250853061f52920560de5','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','7270975220',2800,1540),(30,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_8e072254d2.webp','csm_hero_8e072254d2.webp',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1920c\";s:6:\"height\";s:4:\"625c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','cecbe1f1e77d94524989f5e0669d6d510c8577f3','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','8e072254d2',1920,625),(31,1739528881,1739528881,1,2,'/_processed_/d/2/csm_hero_c6a25f3627.webp','csm_hero_c6a25f3627.webp',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"3840c\";s:6:\"height\";s:5:\"1250c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','ff9ecfde64a19ceb94b10835e2135fd2e634f537','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','c6a25f3627',3840,1250),(32,1739529251,1739529251,1,3,'/_processed_/d/9/preview_pexels-pavel-danilyuk-8112136_59884e5e3b.jpg','preview_pexels-pavel-danilyuk-8112136_59884e5e3b.jpg','',_binary 'a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.Preview','59884e5e3b',64,43),(33,1740129509,1739529255,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_a0ff7cb22c.jpg','csm_pexels-pavel-danilyuk-8112136_a0ff7cb22c.jpg','',_binary 'a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','a0ff7cb22c',32,32),(34,1739529257,1739529255,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_ccbb54f9eb.jpg','csm_pexels-pavel-danilyuk-8112136_ccbb54f9eb.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','ccbb54f9eb',166,111),(35,1739529268,1739529267,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_55e146d27d.jpg','csm_pexels-pavel-danilyuk-8112136_55e146d27d.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','55e146d27d',225,150),(36,1739529268,1739529267,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_f237750f13.jpg','csm_pexels-pavel-danilyuk-8112136_f237750f13.jpg','',_binary 'a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','f237750f13',67,45),(37,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"400c\";s:6:\"height\";s:4:\"445c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','deb16f82a319f2229dc24c499d163407daab98b0','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','3bfbf45397',400,445),(38,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";s:4:\"890c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','3e47b430525808bb6a4d421e50e38f9969efbe0a','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','799e72b367',800,890),(39,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"570c\";s:6:\"height\";s:4:\"445c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','a80bd6691852c473f5bca3a683243cc6bd69a234','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','c0974a8161',570,445),(40,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1140c\";s:6:\"height\";s:4:\"890c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','d933293229b94d4a35873288a1147734508bfb4f','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','8b6c4240bf',1140,890),(41,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";s:4:\"440c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','2d9ffaa19e27af2da812c86740bcb296e6240711','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','a40365e796',800,440),(42,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1600c\";s:6:\"height\";s:4:\"880c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','b1395ca7eb335c57e1d766e9107e0b75e1401b5c','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','050f1bb4a6',1600,880),(43,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1000c\";s:6:\"height\";s:4:\"550c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','b76a24959eb0b065ddcd27fa66f299909ef548c5','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','4bda97f231',1000,550),(44,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"2000c\";s:6:\"height\";s:5:\"1100c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','29539f91be189c326043065d2de95a98ca029745','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','0e569b8a6e',2000,1100),(45,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1400c\";s:6:\"height\";s:4:\"770c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','59dbcbcc39b6a228e7879325e2fb2ead8e9beab8','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','b8af311d47',1400,770),(46,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"2800c\";s:6:\"height\";s:5:\"1540c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','7088c5586339545defc250853061f52920560de5','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','329a53ee8e',2800,1540),(47,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1920c\";s:6:\"height\";s:4:\"625c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','cecbe1f1e77d94524989f5e0669d6d510c8577f3','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','570956315f',1920,625),(48,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"3840c\";s:6:\"height\";s:5:\"1250c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','ff9ecfde64a19ceb94b10835e2135fd2e634f537','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','d1bee01408',3840,1250),(49,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"600c\";s:6:\"height\";s:4:\"600c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','fbf59259b599e1e88e056498a02e55334aa86af4','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','0871d2a9ab',600,600),(50,1739790174,1739529251,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1200c\";s:6:\"height\";s:5:\"1200c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','f58eaf2d2b9f5719225f7de19c4347f770abdd3c','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','b3c8a49cf5',1200,1200),(51,1739860504,1739860504,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:4:\"530c\";s:6:\"height\";s:4:\"530c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','d528de4c4d8ef80e393822f2d87ba2223b2bd649','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','78ae36f16d',0,0),(52,1739860504,1739860504,1,3,'',NULL,'',_binary 'a:8:{s:5:\"width\";s:5:\"1060c\";s:6:\"height\";s:5:\"1060c\";s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"webp\";}','64d8b128db729370d272a39754059521287d91bb','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','bb205780db',0,0),(53,1740041737,1740041737,1,2,'/_processed_/d/2/csm_hero_52e8ad7a31.avif','csm_hero_52e8ad7a31.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"430c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','072b5d131d9616c8e4a1f85a8388cadc2f28137b','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','52e8ad7a31',430,644),(54,1740041737,1740041737,1,2,'/_processed_/d/2/csm_hero_dc16498e2d.avif','csm_hero_dc16498e2d.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"860c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','be5db6d829b9d27f4f9d394b7c043ba9edb9a989','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','dc16498e2d',860,1287),(55,1740041737,1740041737,1,2,'/_processed_/d/2/csm_hero_24653906bd.avif','csm_hero_24653906bd.avif',NULL,_binary 'a:8:{s:5:\"width\";i:1920;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','bd0db02cd7c5f079fe1650e8c754a02e5fb189f3','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','24653906bd',1920,2874),(56,1740041737,1740041737,1,2,'/_processed_/d/2/csm_hero_8d34412912.avif','csm_hero_8d34412912.avif',NULL,_binary 'a:8:{s:5:\"width\";i:3840;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','923ea28a1e2ecdb073c78820fcc1d5a9436d73d7','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','8d34412912',2744,4108),(57,1740041737,1740041737,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_9e66d6e7cd.avif','csm_pexels-pavel-danilyuk-8112136_9e66d6e7cd.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"400c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','5982f33c598092636eeef6261926bcbb43a5fc4e','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','9e66d6e7cd',400,267),(58,1740041737,1740041737,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_b5d57734a9.avif','csm_pexels-pavel-danilyuk-8112136_b5d57734a9.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','6e2485d2413c3b2d3c691b6e7ed5b19912a29fe6','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','b5d57734a9',800,534),(59,1740041737,1740041737,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_0e39f80e0f.avif','csm_pexels-pavel-danilyuk-8112136_0e39f80e0f.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1920c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','9f96df49a224145693ea855eeef6a70ff9a99b1d','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','0e39f80e0f',1920,1282),(60,1740041737,1740041737,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_2b133faceb.avif','csm_pexels-pavel-danilyuk-8112136_2b133faceb.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"3840c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','68f6cc68ca567cb08f5d64eb9dd729d128d63342','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','2b133faceb',1920,1282),(61,1740041737,1740041737,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_46e822bcd4.avif','csm_pexels-pavel-danilyuk-8112136_46e822bcd4.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"600c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','a83f4d9f51a07640e6b981e700ed5d6a7134d2df','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','46e822bcd4',600,401),(62,1740041737,1740041737,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_b590b7a504.avif','csm_pexels-pavel-danilyuk-8112136_b590b7a504.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1200c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','a3a8c5094b896d25746aff0acab0e1faa885ee5b','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','b590b7a504',1200,801),(63,1740044915,1740044915,1,2,'/_processed_/d/2/csm_hero_5e9430297a.avif','csm_hero_5e9430297a.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','3f07476cc7a6bb560eb65ca8e64585ecc6fcb570','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','5e9430297a',1000,1497),(64,1740044915,1740044915,1,2,'/_processed_/d/2/csm_hero_d2411179fb.avif','csm_hero_d2411179fb.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','8c4b975a15c26244e883426074e907516b3201dc','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','d2411179fb',2000,2994),(65,1740044915,1740044915,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_08ca7cb4d0.avif','csm_pexels-pavel-danilyuk-8112136_08ca7cb4d0.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"430c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','072b5d131d9616c8e4a1f85a8388cadc2f28137b','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','08ca7cb4d0',430,287),(66,1740044915,1740044915,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_63f24319d5.avif','csm_pexels-pavel-danilyuk-8112136_63f24319d5.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"860c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','be5db6d829b9d27f4f9d394b7c043ba9edb9a989','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','63f24319d5',860,574),(67,1740044915,1740044915,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_2afd6fcdd4.avif','csm_pexels-pavel-danilyuk-8112136_2afd6fcdd4.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2400c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','767b5aef20e607227e152225fb54b4695750ca88','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','2afd6fcdd4',1920,1282),(68,1740044915,1740044915,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_856fe4209c.avif','csm_pexels-pavel-danilyuk-8112136_856fe4209c.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"540c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','72a3abd47c50b2ff3eec77ec3c4aeffdab263df2','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','856fe4209c',540,361),(69,1740044915,1740044915,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_f525068e82.avif','csm_pexels-pavel-danilyuk-8112136_f525068e82.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1080c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','0072477486c5ac7b2b595b73dbe74ec59195d1dc','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','f525068e82',1080,721),(70,1740044915,1740044915,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_c21c4783cf.avif','csm_pexels-pavel-danilyuk-8112136_c21c4783cf.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"500c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','4743a9f01763a2c8fe4f3be9c5df2bb425f0fce8','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','c21c4783cf',500,334),(71,1740044915,1740044915,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_6b1bfd7cd8.avif','csm_pexels-pavel-danilyuk-8112136_6b1bfd7cd8.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','3f07476cc7a6bb560eb65ca8e64585ecc6fcb570','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','6b1bfd7cd8',1000,668),(72,1740044974,1740044974,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_de876a583d.jpg','csm_pexels-pavel-danilyuk-8112136_de876a583d.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:321;s:8:\"\0*\0width\";d:1920;s:9:\"\0*\0height\";d:640;}}','0d3f0038cbd92cfdec9970b76d6032d681756185','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','de876a583d',450,150),(73,1740044975,1740044974,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_9c54bf77bc.jpg','csm_pexels-pavel-danilyuk-8112136_9c54bf77bc.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1;s:8:\"\0*\0width\";d:1920;s:9:\"\0*\0height\";d:1280;}}','b6ec2cebfd6d3b65b900f4a84918b37b964fc0e6','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','9c54bf77bc',225,150),(74,1740044977,1740044977,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_d96719b3bf.jpg','csm_pexels-pavel-danilyuk-8112136_d96719b3bf.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:1000;s:9:\"maxHeight\";i:1000;s:4:\"crop\";N;}','1097b19f7c94bc1bdd2bf43bfc22198c30890d2e','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','d96719b3bf',1000,668),(75,1740044977,1740044977,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_94d0cf4eb7.jpg','csm_pexels-pavel-danilyuk-8112136_94d0cf4eb7.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:300;s:9:\"maxHeight\";i:300;s:4:\"crop\";N;}','e239fcbae08ee546b841850592062fe370de3336','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','94d0cf4eb7',300,200),(76,1740044982,1740044981,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_369785d37a.jpg','csm_pexels-pavel-danilyuk-8112136_369785d37a.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0.418742514970063;s:4:\"\0*\0y\";d:320.5;s:8:\"\0*\0width\";d:1917.2425149700598;s:9:\"\0*\0height\";d:639.0808383233533;}}','168f214779a859bdd48f0dcac2139f20db67b6e0','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','369785d37a',450,150),(77,1740044983,1740044983,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_f073a1317c.avif','csm_pexels-pavel-danilyuk-8112136_f073a1317c.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"430c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1;s:8:\"\0*\0width\";d:1920;s:9:\"\0*\0height\";d:1280;}s:13:\"fileExtension\";s:4:\"avif\";}','80406241d4b4ea713f91a8ff28cf4d65a13766f0','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','f073a1317c',430,287),(78,1740044983,1740044983,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_6b3a35a718.avif','csm_pexels-pavel-danilyuk-8112136_6b3a35a718.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"860c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1;s:8:\"\0*\0width\";d:1920;s:9:\"\0*\0height\";d:1280;}s:13:\"fileExtension\";s:4:\"avif\";}','52921436c04fbc8235cdc06887bc001657a4010b','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','6b3a35a718',860,573),(79,1740044983,1740044983,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_25aa97d4b5.avif','csm_pexels-pavel-danilyuk-8112136_25aa97d4b5.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1200c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1;s:8:\"\0*\0width\";d:1920;s:9:\"\0*\0height\";d:1280;}s:13:\"fileExtension\";s:4:\"avif\";}','cd2824e17793f3138e43c009dc404c323b5c9df0','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','25aa97d4b5',1200,800),(80,1740044983,1740044983,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_5b0dff05f0.avif','csm_pexels-pavel-danilyuk-8112136_5b0dff05f0.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2400c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1;s:8:\"\0*\0width\";d:1920;s:9:\"\0*\0height\";d:1280;}s:13:\"fileExtension\";s:4:\"avif\";}','d0217d8ccee815c5f25194032ae90757f11e2170','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','5b0dff05f0',1920,1280),(81,1740044983,1740044983,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_4555608e31.avif','csm_pexels-pavel-danilyuk-8112136_4555608e31.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1920c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:320.5;s:8:\"\0*\0width\";d:1918.08;s:9:\"\0*\0height\";d:639.0808383233533;}s:13:\"fileExtension\";s:4:\"avif\";}','18ca6d8849b65d5b84f5bc4266048da0cf58a94a','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','4555608e31',1918,639),(82,1740044983,1740044983,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_8a7e5066e9.avif','csm_pexels-pavel-danilyuk-8112136_8a7e5066e9.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"3840c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:320.5;s:8:\"\0*\0width\";d:1918.08;s:9:\"\0*\0height\";d:639.0808383233533;}s:13:\"fileExtension\";s:4:\"avif\";}','b099485dc4a9a4f1aa7ade7dd53424df5ba7aec1','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','8a7e5066e9',1918,639),(83,1740045011,1740045010,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_4a1b2edaa9.jpg','csm_pexels-pavel-danilyuk-8112136_4a1b2edaa9.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:319;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282;s:9:\"\0*\0height\";d:1282;}}','26fa9d638da428f9dfda4d1c41e675b2cd3d0403','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','4a1b2edaa9',150,150),(84,1740045017,1740045015,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_8991d077c9.jpg','csm_pexels-pavel-danilyuk-8112136_8991d077c9.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:319.0000000000001;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282;s:9:\"\0*\0height\";d:1282;}}','b6a88351a83810f014cd68742bce85104553ef9c','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','8991d077c9',150,150),(85,1740045018,1740045018,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_565b6d9e4f.avif','csm_pexels-pavel-danilyuk-8112136_565b6d9e4f.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"400c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:319;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282;s:9:\"\0*\0height\";d:1282;}s:13:\"fileExtension\";s:4:\"avif\";}','e9fc512a42a2a19f1a3d380dc06c61a6e6cfcc0c','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','565b6d9e4f',400,400),(86,1740045018,1740045018,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_765413c229.avif','csm_pexels-pavel-danilyuk-8112136_765413c229.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:319;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282;s:9:\"\0*\0height\";d:1282;}s:13:\"fileExtension\";s:4:\"avif\";}','c1794cd428dc991d78d53312b33a8e3112d1f7c6','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','765413c229',800,800),(87,1740045018,1740045018,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_44c2a272e0.avif','csm_pexels-pavel-danilyuk-8112136_44c2a272e0.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"540c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:318.72;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282.5600000000002;s:9:\"\0*\0height\";d:1282;}s:13:\"fileExtension\";s:4:\"avif\";}','f0f2c1247afa5bf3d46170f11c84c2f0ed1bfc8d','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','44c2a272e0',540,540),(88,1740045018,1740045018,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_99224e3926.avif','csm_pexels-pavel-danilyuk-8112136_99224e3926.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1080c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:318.72;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282.5600000000002;s:9:\"\0*\0height\";d:1282;}s:13:\"fileExtension\";s:4:\"avif\";}','cc3e84ab5e287972597e2b072163f659d046c2a8','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','99224e3926',1080,1080),(89,1740045018,1740045018,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_70abcb09aa.avif','csm_pexels-pavel-danilyuk-8112136_70abcb09aa.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"500c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:318.72;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282.5600000000002;s:9:\"\0*\0height\";d:1282;}s:13:\"fileExtension\";s:4:\"avif\";}','e25c8ed702f5073b275dcf71d72e78630d5b21bb','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','70abcb09aa',500,500),(90,1740045018,1740045018,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_57eccabe41.avif','csm_pexels-pavel-danilyuk-8112136_57eccabe41.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:318.72;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282.5600000000002;s:9:\"\0*\0height\";d:1282;}s:13:\"fileExtension\";s:4:\"avif\";}','8e44b2d200528ffc838f90ccae7057cbd020e363','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','57eccabe41',1000,1000),(91,1740045018,1740045018,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_f6c3f0efd6.avif','csm_pexels-pavel-danilyuk-8112136_f6c3f0efd6.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"600c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:318.72;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282.5600000000002;s:9:\"\0*\0height\";d:1282;}s:13:\"fileExtension\";s:4:\"avif\";}','0d858ac8a7b7d700fa9baac15ce8ad79493ee19e','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','f6c3f0efd6',600,600),(92,1740045018,1740045018,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_0097453541.avif','csm_pexels-pavel-danilyuk-8112136_0097453541.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1200c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:318.72;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:1282.5600000000002;s:9:\"\0*\0height\";d:1282;}s:13:\"fileExtension\";s:4:\"avif\";}','5f0be420a885cae89091f30a16a91dafa89e3cca','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','0097453541',1200,1199),(93,1740128268,1740128266,1,2,'/_processed_/d/2/csm_hero_1910b36595.jpg','csm_hero_1910b36595.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:-4.107784431137725;s:4:\"\0*\0y\";d:1252.976;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}}','833cf5304bfa85b2e6be1b24c43808ac740ddd1b','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','1910b36595',300,150),(94,1740128269,1740128266,1,2,'/_processed_/d/2/csm_hero_8208f589ff.jpg','csm_hero_8208f589ff.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:2.6666666666667425;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:2738.6666666666665;s:9:\"\0*\0height\";d:4108;}}','0afb0de4c1a3426e6f460d740a07e5ba2c4d809e','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','8208f589ff',100,150),(95,1740128291,1740128289,1,2,'/_processed_/d/2/csm_hero_74a4c5ec19.jpg','csm_hero_74a4c5ec19.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.9758922155688;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.8922155688624;}}','d9852a7b3516240ec0a664b74a2354cf29bc3fc3','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','74a4c5ec19',300,150),(96,1740128292,1740128289,1,2,'/_processed_/d/2/csm_hero_394279c8f3.jpg','csm_hero_394279c8f3.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:110.91017964071857;s:4:\"\0*\0y\";d:345.17062275449086;s:8:\"\0*\0width\";d:2505.748502994012;s:9:\"\0*\0height\";d:3758.6227544910184;}}','ace11417d9d8c4c507d6d77178f87d3ec442b22d','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','394279c8f3',100,150),(97,1740128291,1740128291,1,2,'/_processed_/d/2/csm_hero_5448290316.avif','csm_hero_5448290316.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"430c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:110.91017964071857;s:4:\"\0*\0y\";d:345.072;s:8:\"\0*\0width\";d:2505.748502994012;s:9:\"\0*\0height\";d:3758.82;}s:13:\"fileExtension\";s:4:\"avif\";}','2ea5889a144bf3a504f675582e99ea6fbe2b43a1','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','5448290316',430,645),(98,1740128291,1740128291,1,2,'/_processed_/d/2/csm_hero_07b62661c5.avif','csm_hero_07b62661c5.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"860c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:110.91017964071857;s:4:\"\0*\0y\";d:345.072;s:8:\"\0*\0width\";d:2505.748502994012;s:9:\"\0*\0height\";d:3758.82;}s:13:\"fileExtension\";s:4:\"avif\";}','78781b60093411793ae2931852c9ff5500303762','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','07b62661c5',860,1290),(99,1740128291,1740128291,1,2,'/_processed_/d/2/csm_hero_a2231ef9d8.avif','csm_hero_a2231ef9d8.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.94;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.9640000000002;}s:13:\"fileExtension\";s:4:\"avif\";}','1007118267e6b8045247cc45810571ad6d37c949','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','a2231ef9d8',1000,500),(100,1740128291,1740128291,1,2,'/_processed_/d/2/csm_hero_7bec7a3bb0.avif','csm_hero_7bec7a3bb0.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.94;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.9640000000002;}s:13:\"fileExtension\";s:4:\"avif\";}','663b2be8315259b6ee105b583eab961dabe80bbf','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','7bec7a3bb0',2000,1000),(101,1740128310,1740128310,1,2,'/_processed_/d/2/csm_hero_fcdd852072.avif','csm_hero_fcdd852072.avif',NULL,_binary 'a:8:{s:5:\"width\";i:1920;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.94;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.9640000000002;}s:13:\"fileExtension\";s:4:\"avif\";}','06872eeb0b88d77c0dd424b988d47270686e0567','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','fcdd852072',0,0),(102,1740128291,1740128291,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";i:1920;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.94;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.9640000000002;}s:13:\"fileExtension\";s:4:\"avif\";}','06872eeb0b88d77c0dd424b988d47270686e0567','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','fcdd852072',0,0),(103,1740128291,1740128291,1,2,'/_processed_/d/2/csm_hero_2e56eb59e3.avif','csm_hero_2e56eb59e3.avif',NULL,_binary 'a:8:{s:5:\"width\";i:3840;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.94;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.9640000000002;}s:13:\"fileExtension\";s:4:\"avif\";}','07ce7ce9d1f1c53263516d07b40224a02b031cd9','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','2e56eb59e3',0,0),(104,1740128310,1740128310,1,2,'',NULL,'',_binary 'a:8:{s:5:\"width\";i:3840;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.94;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.9640000000002;}s:13:\"fileExtension\";s:4:\"avif\";}','07ce7ce9d1f1c53263516d07b40224a02b031cd9','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','2e56eb59e3',0,0),(105,1740129245,1740129243,1,2,'/_processed_/d/2/csm_hero_d9ec82c1b4.jpg','csm_hero_d9ec82c1b4.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}}','f0cb7fc85a320871acea35e423a0724424741fd0','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','d9ec82c1b4',300,150),(106,1740129278,1740129278,1,2,'/_processed_/d/2/csm_hero_0c0e6bcaa1.avif','csm_hero_0c0e6bcaa1.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"430c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:2.6666666666667425;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:2738.6666666666665;s:9:\"\0*\0height\";d:4108;}s:13:\"fileExtension\";s:4:\"avif\";}','14a9c0ada3ccb723989e7557c5b6e3aac17f8399','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','0c0e6bcaa1',430,645),(107,1740129278,1740129278,1,2,'/_processed_/d/2/csm_hero_928e274803.avif','csm_hero_928e274803.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"860c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:2.6666666666667425;s:4:\"\0*\0y\";d:0;s:8:\"\0*\0width\";d:2738.6666666666665;s:9:\"\0*\0height\";d:4108;}s:13:\"fileExtension\";s:4:\"avif\";}','35d55139a1f223301417015f29928d56d9640f44','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','928e274803',860,1290),(108,1740129278,1740129278,1,2,'/_processed_/d/2/csm_hero_631b574e7a.avif','csm_hero_631b574e7a.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}s:13:\"fileExtension\";s:4:\"avif\";}','6209a82228476faaf182d195aebb31f0074db85e','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','631b574e7a',1000,500),(109,1740129278,1740129278,1,2,'/_processed_/d/2/csm_hero_e9aefe4cba.avif','csm_hero_e9aefe4cba.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}s:13:\"fileExtension\";s:4:\"avif\";}','a4224c44ff6d185a8a8884bed09806622e725611','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','e9aefe4cba',2000,1000),(110,1740129278,1740129278,1,2,'/_processed_/d/2/csm_hero_6a35d06376.avif','csm_hero_6a35d06376.avif',NULL,_binary 'a:8:{s:5:\"width\";i:1920;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}s:13:\"fileExtension\";s:4:\"avif\";}','7ef0a147f86b5986e2b16f47602328b9ecab0e68','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','6a35d06376',1920,960),(111,1740129278,1740129278,1,2,'/_processed_/d/2/csm_hero_104a3762cc.avif','csm_hero_104a3762cc.avif',NULL,_binary 'a:8:{s:5:\"width\";i:3840;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}s:13:\"fileExtension\";s:4:\"avif\";}','dd699ac47cc70fd4d8ea009ee13f83123267591d','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','104a3762cc',2744,1372),(112,1740129323,1740129322,1,2,'/_processed_/d/2/csm_hero_e688bfb651.jpg','csm_hero_e688bfb651.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:682;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2744;}}','d5d4ab5aefc6a830721bcdbd91d23c5b62a5fa04','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','e688bfb651',150,150),(113,1740129366,1740129366,1,2,'/_processed_/d/2/csm_hero_6fcbd6e425.avif','csm_hero_6fcbd6e425.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"350c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:682;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2744;}s:13:\"fileExtension\";s:4:\"avif\";}','4623ebfc8b167624cc10701868119a11d53b5fe5','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','6fcbd6e425',350,350),(114,1740129366,1740129366,1,2,'/_processed_/d/2/csm_hero_cc9faf1be7.avif','csm_hero_cc9faf1be7.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"7000c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:682;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2744;}s:13:\"fileExtension\";s:4:\"avif\";}','3d9eaa71e6650218363d73ecf09b50d86ecf9c5b','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','cc9faf1be7',2744,2744),(115,1740129366,1740129366,1,2,'/_processed_/d/2/csm_hero_c91006e7e1.avif','csm_hero_c91006e7e1.avif',NULL,_binary 'a:8:{s:5:\"width\";i:390;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:682;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2744;}s:13:\"fileExtension\";s:4:\"avif\";}','5bb41bb9bb46041d05adde8abb713dfbd8ccc0ac','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','c91006e7e1',390,390),(116,1740129366,1740129366,1,2,'/_processed_/d/2/csm_hero_13e21154ed.avif','csm_hero_13e21154ed.avif',NULL,_binary 'a:8:{s:5:\"width\";i:780;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:682;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:2744;}s:13:\"fileExtension\";s:4:\"avif\";}','227395193f06b14c42ac8dce85673bf76d5533ba','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','13e21154ed',780,780),(117,1740129512,1740129510,1,2,'/_processed_/d/2/csm_hero_c6b6185d81.jpg','csm_hero_c6b6185d81.jpg','',_binary 'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:339;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:3430;}}','90a5acaacb648989b52fe708a27f149bc26935ab','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','c6b6185d81',120,150),(118,1740129554,1740129554,1,2,'/_processed_/d/2/csm_hero_186db92ccf.avif','csm_hero_186db92ccf.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"400c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}s:13:\"fileExtension\";s:4:\"avif\";}','6d689639d2dde57ffb25011d6180f0e6393cecef','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','186db92ccf',400,200),(119,1740129554,1740129554,1,2,'/_processed_/d/2/csm_hero_177b70d82b.avif','csm_hero_177b70d82b.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"800c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}s:13:\"fileExtension\";s:4:\"avif\";}','fecf632c311803d609ddf631fd23913f26b89d47','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','177b70d82b',800,400),(120,1740129554,1740129554,1,2,'/_processed_/d/2/csm_hero_ffd4551bfd.avif','csm_hero_ffd4551bfd.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"700c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}s:13:\"fileExtension\";s:4:\"avif\";}','47e2c556c481f9c5636dc8f863e756f67d822890','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','ffd4551bfd',700,350),(121,1740129554,1740129554,1,2,'/_processed_/d/2/csm_hero_aed9a4bc91.avif','csm_hero_aed9a4bc91.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1400c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1368;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:1372;}s:13:\"fileExtension\";s:4:\"avif\";}','77160fbd27357c190fbdcc3b933ebc904d94cd74','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','aed9a4bc91',1400,700),(122,1740129554,1740129554,1,2,'/_processed_/d/2/csm_hero_10ce9140f1.avif','csm_hero_10ce9140f1.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"740c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:339;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:3430;}s:13:\"fileExtension\";s:4:\"avif\";}','e22889872a06bfb35ed87a5e3b34fa54dc412088','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','10ce9140f1',740,925),(123,1740129554,1740129554,1,2,'/_processed_/d/2/csm_hero_027be519b1.avif','csm_hero_027be519b1.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1480c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:339;s:8:\"\0*\0width\";d:2744;s:9:\"\0*\0height\";d:3430;}s:13:\"fileExtension\";s:4:\"avif\";}','dcadbdd4be39247d2b4eff29b0be6595517e5432','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','027be519b1',1480,1850),(124,1740135142,1740135142,1,2,'/_processed_/d/2/csm_hero_908c80c57d.avif','csm_hero_908c80c57d.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1024c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:110.91017964071857;s:4:\"\0*\0y\";d:345.072;s:8:\"\0*\0width\";d:2505.748502994012;s:9:\"\0*\0height\";d:3758.82;}s:13:\"fileExtension\";s:4:\"avif\";}','b9169153d0bb1a36bb9fc5e20a26f1ee4ca12d42','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','908c80c57d',1024,1536),(125,1740135142,1740135142,1,2,'/_processed_/d/2/csm_hero_dcb8ba794a.avif','csm_hero_dcb8ba794a.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1400c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.94;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.9640000000002;}s:13:\"fileExtension\";s:4:\"avif\";}','0d43f75fba891a9bbae19830fb9a8e1f8866cb3c','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','dcb8ba794a',1400,700),(126,1740135142,1740135142,1,2,'/_processed_/d/2/csm_hero_f6a8d5ca34.avif','csm_hero_f6a8d5ca34.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2800c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";O:45:\"TYPO3\\CMS\\Core\\Imaging\\ImageManipulation\\Area\":4:{s:4:\"\0*\0x\";d:0;s:4:\"\0*\0y\";d:1252.94;s:8:\"\0*\0width\";d:2735.784431137725;s:9:\"\0*\0height\";d:1367.9640000000002;}s:13:\"fileExtension\";s:4:\"avif\";}','33045ac0620040d9f378694b4932ea113d20c4b0','a684afd8e4bdd8b6037f8471e5f04e2b981caa9e','Image.CropScaleMask','f6a8d5ca34',2736,1368),(127,1740135142,1740135142,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_6235ae7d1f.avif','csm_pexels-pavel-danilyuk-8112136_6235ae7d1f.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1600c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','f5fb24c2f61ac234e401dfd1f858ad3476a43472','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','6235ae7d1f',1600,1068),(128,1740135142,1740135142,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_b4ff1f437a.avif','csm_pexels-pavel-danilyuk-8112136_b4ff1f437a.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"1400c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','8d952a816fe0d4571789a934dc0c649490e6f661','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','b4ff1f437a',1400,935),(129,1740135142,1740135142,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_f1e799fb3c.avif','csm_pexels-pavel-danilyuk-8112136_f1e799fb3c.avif',NULL,_binary 'a:8:{s:5:\"width\";s:5:\"2800c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','1d82e4db88eb64e41850c097402e062e236b8ea1','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','f1e799fb3c',1920,1282),(130,1740135142,1740135142,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_8f20a46937.avif','csm_pexels-pavel-danilyuk-8112136_8f20a46937.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"270c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','ff5a2a08d8f0988495f5534a69922616915d531e','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','8f20a46937',270,180),(131,1740135142,1740135142,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_aceb24745b.avif','csm_pexels-pavel-danilyuk-8112136_aceb24745b.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"360c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','e0a5f673c6e9205ca0a7301bb252e8ef6abcf7e2','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','aceb24745b',360,240),(132,1740135142,1740135142,1,3,'/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_00724e35e2.avif','csm_pexels-pavel-danilyuk-8112136_00724e35e2.avif',NULL,_binary 'a:8:{s:5:\"width\";s:4:\"720c\";s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;s:13:\"fileExtension\";s:4:\"avif\";}','d3f8403e95bbc674538589d62918d39bb113689a','532a0fab95ca6630911a6b468150d52ea70ea12d','Image.CropScaleMask','00724e35e2',720,481);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_reference` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `uid_local` int NOT NULL DEFAULT '0',
  `title` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `alternative` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `uid_foreign` int NOT NULL DEFAULT '0',
  `tablenames` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `sorting_foreign` int NOT NULL DEFAULT '0',
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT (_utf8mb3''),
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `crop` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `autoplay` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,1,1740128289,1739447128,0,0,0,0,NULL,_binary '{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,2,NULL,NULL,1,'tt_content','netwerk_hero_image',1,'',NULL,'{\"desktop\":{\"cropArea\":{\"height\":0.333,\"width\":0.9970059880239521,\"x\":0,\"y\":0.305},\"selectedRatio\":\"desktop\",\"focusArea\":null},\"mobile\":{\"cropArea\":{\"height\":0.915,\"width\":0.9131736526946108,\"x\":0.040419161676646706,\"y\":0.084},\"selectedRatio\":\"mobile\",\"focusArea\":null}}',0),(2,1,1739529269,1739528849,1,0,0,0,NULL,'',0,0,0,0,2,NULL,NULL,3,'tt_content','netwerk_textimagebackground_image',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),(3,1,1740044981,1739529269,0,0,0,0,NULL,_binary '{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,3,NULL,NULL,3,'tt_content','netwerk_textimagebackground_image',1,'',NULL,'{\"desktop\":{\"cropArea\":{\"height\":0.49850299401197606,\"width\":0.999,\"x\":0,\"y\":0.25},\"selectedRatio\":\"desktop\",\"focusArea\":null},\"mobile\":{\"cropArea\":{\"x\":0,\"y\":0.00078003120124805,\"width\":1,\"height\":0.9984399375975039},\"selectedRatio\":\"mobile\",\"focusArea\":null}}',0),(4,1,1740045015,1739531295,0,0,0,0,NULL,_binary '{\"alternative\":\"\",\"description\":\"\",\"link\":\"\",\"title\":\"\",\"crop\":\"\",\"uid_local\":\"\",\"hidden\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,3,NULL,NULL,4,'tt_content','netwerk_textimageround_image',1,'',NULL,'{\"desktop\":{\"cropArea\":{\"height\":1,\"width\":0.668,\"x\":0.166,\"y\":0},\"selectedRatio\":\"desktop\",\"focusArea\":null},\"mobile\":{\"cropArea\":{\"x\":0.16614583333333333,\"y\":0,\"width\":0.6677083333333333,\"height\":1},\"selectedRatio\":\"mobile\",\"focusArea\":null}}',0),(5,3,1740129275,1740129275,0,0,0,0,NULL,'',0,0,0,0,2,NULL,NULL,5,'tt_content','netwerk_herowithicon_image',1,'',NULL,'{\"desktop\":{\"cropArea\":{\"x\":0,\"y\":0.3330087633885102,\"width\":1,\"height\":0.3339824732229795},\"selectedRatio\":\"desktop\",\"focusArea\":null},\"mobile\":{\"cropArea\":{\"x\":0.0009718172983479382,\"y\":0,\"width\":0.9980563654033041,\"height\":1},\"selectedRatio\":\"mobile\",\"focusArea\":null}}',0),(6,3,1740129363,1740129363,0,0,0,0,NULL,'',0,0,0,0,2,NULL,NULL,1,'netwerk_teaserservices_items','image',1,'',NULL,'{\"desktop\":{\"cropArea\":{\"x\":0,\"y\":0.16601752677702045,\"width\":1,\"height\":0.667964946445959},\"selectedRatio\":\"desktop\",\"focusArea\":null},\"mobile\":{\"cropArea\":{\"x\":0,\"y\":0.16601752677702045,\"width\":1,\"height\":0.667964946445959},\"selectedRatio\":\"mobile\",\"focusArea\":null}}',0),(7,3,1740129363,1740129363,0,0,0,0,NULL,'',0,0,0,0,2,NULL,NULL,2,'netwerk_teaserservices_items','image',1,'',NULL,'{\"desktop\":{\"cropArea\":{\"x\":0,\"y\":0.16601752677702045,\"width\":1,\"height\":0.667964946445959},\"selectedRatio\":\"desktop\",\"focusArea\":null},\"mobile\":{\"cropArea\":{\"x\":0,\"y\":0.16601752677702045,\"width\":1,\"height\":0.667964946445959},\"selectedRatio\":\"mobile\",\"focusArea\":null}}',0),(8,3,1740129549,1740129549,0,0,0,0,NULL,'',0,0,0,0,2,NULL,NULL,8,'tt_content','netwerk_textbild_image',1,'',NULL,'{\"desktop\":{\"cropArea\":{\"x\":0,\"y\":0.08252190847127557,\"width\":1,\"height\":0.8349561830574489},\"selectedRatio\":\"desktop\",\"focusArea\":null},\"mobile\":{\"cropArea\":{\"x\":0,\"y\":0.3330087633885102,\"width\":1,\"height\":0.3339824732229795},\"selectedRatio\":\"mobile\",\"focusArea\":null}}',0);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_storage` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `is_public` smallint NOT NULL DEFAULT '0',
  `processingfolder` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `is_browsable` smallint unsigned NOT NULL DEFAULT '1',
  `is_default` smallint unsigned NOT NULL DEFAULT '0',
  `is_writable` smallint unsigned NOT NULL DEFAULT '1',
  `is_online` smallint unsigned NOT NULL DEFAULT '1',
  `auto_extract_metadata` smallint unsigned NOT NULL DEFAULT '1',
  `driver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `configuration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1739443349,1739443349,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.',1,NULL,'fileadmin',1,1,1,1,1,'Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>');
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_filemounts` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `identifier` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `read_only` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_history` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `actiontype` smallint NOT NULL DEFAULT '0',
  `usertype` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'BE',
  `userid` int unsigned DEFAULT NULL,
  `originaluserid` int unsigned DEFAULT NULL,
  `recuid` int NOT NULL DEFAULT '0',
  `tablename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `history_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `workspace` int DEFAULT '0',
  `correlation_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,1739443339,1,'BE',1,0,1,'pages','{\"doktype\":\"1\",\"slug\":\"\\/\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"tx_staticfilecache_cache\":\"1\",\"tx_staticfilecache_cache_force\":\"0\",\"tx_staticfilecache_cache_offline\":\"0\",\"tx_staticfilecache_cache_priority\":\"0\",\"pid\":0,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Home\",\"crdate\":1739443339,\"t3ver_stage\":0,\"tstamp\":1739443339,\"uid\":1}',0,'0400$baf373c47c3e33d63abc5491745ee9e2:e175f7045d7ccbfb26ffcf279422c2e5'),(2,1739443339,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"slug\\\":\\\"\\\"}\"}}',0,'0400$7af35d54a2e45f75fd71a545969e19b8:e175f7045d7ccbfb26ffcf279422c2e5'),(3,1739443346,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"{\\\"slug\\\":\\\"\\\"}\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$f726a39e085baf1920564d8828ff57ca:e175f7045d7ccbfb26ffcf279422c2e5'),(4,1739443358,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"is_siteroot\":0,\"fe_group\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"is_siteroot\":\"1\",\"fe_group\":\"\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"tx_csseo_title_only\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"tx_csseo_keyword\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"tx_csseo_tw_creator\\\":\\\"\\\",\\\"tx_csseo_tw_site\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"tx_csseo_json_ld\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"tx_staticfilecache_cache\\\":\\\"\\\",\\\"tx_staticfilecache_cache_force\\\":\\\"\\\",\\\"tx_staticfilecache_cache_offline\\\":\\\"\\\",\\\"tx_staticfilecache_cache_priority\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$671587f39ec0aabb332d41c585d04833:e175f7045d7ccbfb26ffcf279422c2e5'),(5,1739444865,2,'BE',1,0,1,'be_users','{\"oldRecord\":{\"lang\":\"default\"},\"newRecord\":{\"lang\":\"de\"}}',0,'0400$b8ddc4b55196b0ff994e52cfad5fc735:084907bc914ff27cf2301aec50eb66b2'),(6,1739444971,1,'BE',1,0,2,'pages','{\"doktype\":\"1\",\"slug\":\"\\/kanzlei\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"tx_staticfilecache_cache\":\"1\",\"tx_staticfilecache_cache_force\":\"0\",\"tx_staticfilecache_cache_offline\":\"0\",\"tx_staticfilecache_cache_priority\":\"0\",\"pid\":1,\"sorting\":256,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Kanzlei\",\"sys_language_uid\":0,\"crdate\":1739444971,\"t3ver_stage\":0,\"tstamp\":1739444971,\"uid\":2}',0,'0400$95354109fc74bb1cbd2afe5d9b15ce30:f11830df10b4b0bca2db34810c2241b3'),(7,1739444984,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$2d11ce3441b69545a7d5345aeb6cef6f:f11830df10b4b0bca2db34810c2241b3'),(8,1739445006,1,'BE',1,0,3,'pages','{\"doktype\":\"1\",\"slug\":\"\\/taetigkeitsgebiete\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"tx_staticfilecache_cache\":\"1\",\"tx_staticfilecache_cache_force\":\"0\",\"tx_staticfilecache_cache_offline\":\"0\",\"tx_staticfilecache_cache_priority\":\"0\",\"pid\":1,\"sorting\":128,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"T\\u00e4tigkeitsgebiete\",\"sys_language_uid\":0,\"crdate\":1739445006,\"t3ver_stage\":0,\"tstamp\":1739445006,\"uid\":3}',0,'0400$603a0bcc5146dee76281da1d368a2515:fe15eeb7d49e64e2cea91ab53fcf0db1'),(9,1739445021,2,'BE',1,0,3,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$cdc279f70f59bc07e49bde265a5163d4:fe15eeb7d49e64e2cea91ab53fcf0db1'),(10,1739445168,1,'BE',1,0,4,'pages','{\"doktype\":\"1\",\"slug\":\"\\/kontakt\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"tx_staticfilecache_cache\":\"1\",\"tx_staticfilecache_cache_force\":\"0\",\"tx_staticfilecache_cache_offline\":\"0\",\"tx_staticfilecache_cache_priority\":\"0\",\"pid\":1,\"sorting\":64,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Kontakt\",\"sys_language_uid\":0,\"crdate\":1739445168,\"t3ver_stage\":0,\"tstamp\":1739445168,\"uid\":4}',0,'0400$3530c243db93083baf8a983634549814:412add0b3eb6ec8f1cb6710aea92e21e'),(11,1739445178,2,'BE',1,0,4,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$14d3c30d25ee7ccca084c24c3d39d796:412add0b3eb6ec8f1cb6710aea92e21e'),(12,1739447128,1,'BE',1,0,1,'tt_content','{\"CType\":\"netwerk_hero\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":1,\"sorting\":256,\"header\":\"Mag Rechtsanwalt Schiestl\",\"subheader\":\"RECHTSANWALT \\/ F\\u00dcGEN \\/ ZILLERTAL\",\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1739447128,\"t3ver_stage\":0,\"tstamp\":1739447128,\"uid\":1}',0,'0400$31234a6022e0c053750faa92b6f68b1f:7fa2c035f26826fe83eeecaaeddc4d40'),(13,1739447128,1,'BE',1,0,1,'sys_file_reference','{\"sorting_foreign\":0,\"autoplay\":0,\"hidden\":\"0\",\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"height\\\":0.488,\\\"width\\\":1,\\\"x\\\":-0.0014970059880239522,\\\"y\\\":0.228},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"2\",\"sys_language_uid\":0,\"crdate\":1739447128,\"t3ver_stage\":0,\"tstamp\":1739447128,\"uid\":1}',0,'0400$31234a6022e0c053750faa92b6f68b1f:4cf496f597e7b095ce8b755e6cec3c0c'),(14,1739447396,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"header\":\"Mag Rechtsanwalt Schiestl\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header\":\"Mag. Andreas Schiestl\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"netwerk_hero_image\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$e7e1d30afd835d2e05ea75b2d60a22ba:7fa2c035f26826fe83eeecaaeddc4d40'),(15,1739447396,2,'BE',1,0,1,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$e7e1d30afd835d2e05ea75b2d60a22ba:4cf496f597e7b095ce8b755e6cec3c0c'),(16,1739526333,1,'BE',1,0,2,'tt_content','{\"CType\":\"netwerk_textgreybackground\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":1,\"sorting\":512,\"header\":\"Auch Handschl\\u00e4ge haben Qualit\\u00e4tsunterschiede.\",\"netwerk_textgreybackground_bodytext\":\"<p>Unsere Rechtsanwaltskanzlei in F\\u00fcgen im Zillertal bietet Ihnen rechtliche Beratung und Unterst\\u00fctzung sowie gerichtliche und au\\u00dfergerichtliche Vertretung in allen Rechtsangelegenheiten.Im Mittelpunkt unserer T\\u00e4tigkeit stehen die Interessen unserer Mandanten. Namhafte Unternehmen vertrauen auf unseren juristischen Rat. Wir sorgen uns um Ihre pers\\u00f6nlichen, rechtlichen und wirtschaftlichen Anliegen, kurz um wir setzen alles daran \\u201eIhr gutes Recht\\u201c erfolgreich zu vertreten und durchzusetzen.<\\/p>\",\"netwerk_textgreybackground_url\":\"t3:\\/\\/page?uid=4\",\"netwerk_textgreybackground_linktext\":\"Contact\",\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1739526333,\"t3ver_stage\":0,\"tstamp\":1739526333,\"uid\":2}',0,'0400$1ecc45f7b30afcc3f3dca401ff7c21ee:01dbc21fdb1263685b9147b3b1596ea8'),(17,1739528849,1,'BE',1,0,3,'tt_content','{\"CType\":\"netwerk_textimagebackground\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":1,\"sorting\":768,\"header\":\"Vertrauen durch Erfahrung\",\"netwerk_textimagebackground_url\":\"t3:\\/\\/page?uid=2\",\"netwerk_textimagebackground_linktext\":\"Kanzlei\",\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1739528849,\"t3ver_stage\":0,\"tstamp\":1739528849,\"uid\":3}',0,'0400$f32b225200bbabff265cccddd709e621:b92300cfb5d1d3645c9cb212a7f56c1f'),(18,1739528849,1,'BE',1,0,2,'sys_file_reference','{\"sorting_foreign\":0,\"autoplay\":0,\"hidden\":\"0\",\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"2\",\"sys_language_uid\":0,\"crdate\":1739528849,\"t3ver_stage\":0,\"tstamp\":1739528849,\"uid\":2}',0,'0400$f32b225200bbabff265cccddd709e621:814fc0f720dfab882655a795e23a5b66'),(19,1739529269,2,'BE',1,0,3,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"netwerk_textimagebackground_url\\\":\\\"\\\",\\\"netwerk_textimagebackground_linktext\\\":\\\"\\\",\\\"netwerk_textimagebackground_image\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$82f7b7794fb86417ce2e01760a348393:b92300cfb5d1d3645c9cb212a7f56c1f'),(20,1739529269,1,'BE',1,0,3,'sys_file_reference','{\"sorting_foreign\":0,\"autoplay\":0,\"hidden\":\"0\",\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"3\",\"sys_language_uid\":0,\"crdate\":1739529269,\"t3ver_stage\":0,\"tstamp\":1739529269,\"uid\":3}',0,'0400$82f7b7794fb86417ce2e01760a348393:d2c609347a4764200256b39b9425159a'),(21,1739529269,2,'BE',1,0,3,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"netwerk_textimagebackground_url\\\":\\\"\\\",\\\"netwerk_textimagebackground_linktext\\\":\\\"\\\",\\\"netwerk_textimagebackground_image\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$82f7b7794fb86417ce2e01760a348393:b92300cfb5d1d3645c9cb212a7f56c1f'),(22,1739529269,4,'BE',1,0,2,'sys_file_reference',NULL,0,'0400$82f7b7794fb86417ce2e01760a348393:814fc0f720dfab882655a795e23a5b66'),(23,1739531295,1,'BE',1,0,4,'tt_content','{\"CType\":\"netwerk_textimageround\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":1,\"sorting\":1024,\"header\":\"Ihr Ziel im Blick, Ihr Recht im Fokus.\",\"netwerk_textimageround_bodytext\":\"<p>Ihre Anliegen sind uns wichtig und wir nehmen uns daf\\u00fcr ausreichend Zeit. Am Anfang der Beratung steht ein offenes Gespr\\u00e4ch mit unseren Mandanten. Seine Information ist die Basis f\\u00fcr die weitere, auf individuelle Bed\\u00fcrfnisse abgestimmte Arbeit. Gemeinsam werden Aufgabenstellungen erkannt, Ziele festgelegt und L\\u00f6sungsstrategien umgesetzt. Eine gute Beziehung zu unseren Mandanten schafft Vertrauen und dieses rechtfertigen wir durch pers\\u00f6nliche Betreuung und Kompetenz. Mit unserer Kanzlei haben Sie einen verl\\u00e4sslichen Partner, der Ihre Interessen kompetent, \\u00f6konomisch und l\\u00f6sungsorientiert vertritt.<\\/p>\",\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1739531295,\"t3ver_stage\":0,\"tstamp\":1739531295,\"uid\":4}',0,'0400$61ce9c0a2f5c1fb9b2ca6593a73b77f6:4d391f5ef79b8d5d10dffa8a07ca167d'),(24,1739531295,1,'BE',1,0,4,'sys_file_reference','{\"sorting_foreign\":0,\"autoplay\":0,\"hidden\":\"0\",\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":1,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"3\",\"sys_language_uid\":0,\"crdate\":1739531295,\"t3ver_stage\":0,\"tstamp\":1739531295,\"uid\":4}',0,'0400$61ce9c0a2f5c1fb9b2ca6593a73b77f6:cea5fcd7b97871880cfe3717d6b52ef4'),(25,1739532046,2,'BE',1,0,4,'tt_content','{\"oldRecord\":{\"netwerk_textimageround_header\":null,\"l18n_diffsource\":\"\"},\"newRecord\":{\"netwerk_textimageround_header\":\"Ihr Ziel im Blick,\\r\\nIhr Recht im Fokus.\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"netwerk_textimageround_header\\\":\\\"\\\",\\\"netwerk_textimageround_bodytext\\\":\\\"\\\",\\\"netwerk_textimageround_image\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$9ec48131e365d7726cea5f3630f9cb3b:4d391f5ef79b8d5d10dffa8a07ca167d'),(26,1739532046,2,'BE',1,0,4,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$9ec48131e365d7726cea5f3630f9cb3b:cea5fcd7b97871880cfe3717d6b52ef4'),(27,1740044981,2,'BE',1,0,3,'sys_file_reference','{\"oldRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"crop\":\"{\\\"desktop\\\":{\\\"cropArea\\\":{\\\"height\\\":0.49850299401197606,\\\"width\\\":0.999,\\\"x\\\":0,\\\"y\\\":0.25},\\\"selectedRatio\\\":\\\"desktop\\\",\\\"focusArea\\\":null},\\\"mobile\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0.00078003120124805,\\\"width\\\":1,\\\"height\\\":0.9984399375975039},\\\"selectedRatio\\\":\\\"mobile\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$0fe2f71212e7b2b612f59868bc175553:d2c609347a4764200256b39b9425159a'),(28,1740045015,2,'BE',1,0,4,'sys_file_reference','{\"oldRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"crop\":\"{\\\"desktop\\\":{\\\"cropArea\\\":{\\\"height\\\":1,\\\"width\\\":0.668,\\\"x\\\":0.166,\\\"y\\\":0},\\\"selectedRatio\\\":\\\"desktop\\\",\\\"focusArea\\\":null},\\\"mobile\\\":{\\\"cropArea\\\":{\\\"x\\\":0.16614583333333333,\\\"y\\\":0,\\\"width\\\":0.6677083333333333,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"mobile\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$dcbffd8dc2e060afbb63016d501c9c0b:cea5fcd7b97871880cfe3717d6b52ef4'),(29,1740126903,4,'BE',1,0,4,'pages',NULL,0,'0400$60832e9b28374ec6565a772dfb268539:412add0b3eb6ec8f1cb6710aea92e21e'),(30,1740128289,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"netwerk_hero_image\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"subheader\\\":\\\"\\\",\\\"netwerk_hero_image\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$98f0e30f63f7c6d5b9410cfd6cf76b14:7fa2c035f26826fe83eeecaaeddc4d40'),(31,1740128289,2,'BE',1,0,1,'sys_file_reference','{\"oldRecord\":{\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"height\\\":0.488,\\\"width\\\":1,\\\"x\\\":-0.0014970059880239522,\\\"y\\\":0.228},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"},\"newRecord\":{\"crop\":\"{\\\"desktop\\\":{\\\"cropArea\\\":{\\\"height\\\":0.333,\\\"width\\\":0.9970059880239521,\\\"x\\\":0,\\\"y\\\":0.305},\\\"selectedRatio\\\":\\\"desktop\\\",\\\"focusArea\\\":null},\\\"mobile\\\":{\\\"cropArea\\\":{\\\"height\\\":0.915,\\\"width\\\":0.9131736526946108,\\\"x\\\":0.040419161676646706,\\\"y\\\":0.084},\\\"selectedRatio\\\":\\\"mobile\\\",\\\"focusArea\\\":null}}\",\"l10n_diffsource\":\"{\\\"alternative\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"crop\\\":\\\"\\\",\\\"uid_local\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\"}\"}}',0,'0400$98f0e30f63f7c6d5b9410cfd6cf76b14:4cf496f597e7b095ce8b755e6cec3c0c'),(32,1740129275,1,'BE',1,0,5,'tt_content','{\"CType\":\"netwerk_herowithicon\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":3,\"sorting\":256,\"netwerk_herowithicon_text\":\"Ihr Lichtblick in der\\r\\nRechtsberatung und\\r\\nRechtsvertretung.\",\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1740129275,\"t3ver_stage\":0,\"tstamp\":1740129275,\"uid\":5}',0,'0400$7f5169e66c5beb8fb654be2f53438b17:c7626fc9bcba6f70beb6ebc085a400db'),(33,1740129275,1,'BE',1,0,5,'sys_file_reference','{\"sorting_foreign\":0,\"autoplay\":0,\"hidden\":\"0\",\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"desktop\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0.3330087633885102,\\\"width\\\":1,\\\"height\\\":0.3339824732229795},\\\"selectedRatio\\\":\\\"desktop\\\",\\\"focusArea\\\":null},\\\"mobile\\\":{\\\"cropArea\\\":{\\\"x\\\":0.0009718172983479382,\\\"y\\\":0,\\\"width\\\":0.9980563654033041,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"mobile\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"2\",\"sys_language_uid\":0,\"crdate\":1740129275,\"t3ver_stage\":0,\"tstamp\":1740129275,\"uid\":5}',0,'0400$7f5169e66c5beb8fb654be2f53438b17:5f15a1453f67b933ed3314381f5d67e4'),(34,1740129363,1,'BE',1,0,6,'tt_content','{\"CType\":\"netwerk_teaserservices\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":3,\"sorting\":512,\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1740129363,\"t3ver_stage\":0,\"tstamp\":1740129363,\"uid\":6}',0,'0400$f91ac5f23a0d3a5d07f04670aa0a0062:c0db6803ab1ec5f70c36e2a72187867b'),(35,1740129363,1,'BE',1,0,6,'sys_file_reference','{\"sorting_foreign\":0,\"autoplay\":0,\"hidden\":\"0\",\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"desktop\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0.16601752677702045,\\\"width\\\":1,\\\"height\\\":0.667964946445959},\\\"selectedRatio\\\":\\\"desktop\\\",\\\"focusArea\\\":null},\\\"mobile\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0.16601752677702045,\\\"width\\\":1,\\\"height\\\":0.667964946445959},\\\"selectedRatio\\\":\\\"mobile\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"2\",\"sys_language_uid\":0,\"crdate\":1740129363,\"t3ver_stage\":0,\"tstamp\":1740129363,\"uid\":6}',0,'0400$f91ac5f23a0d3a5d07f04670aa0a0062:768f9cd4e98812f969df7ebe17f11b50'),(36,1740129363,1,'BE',1,0,7,'sys_file_reference','{\"sorting_foreign\":0,\"autoplay\":0,\"hidden\":\"0\",\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"desktop\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0.16601752677702045,\\\"width\\\":1,\\\"height\\\":0.667964946445959},\\\"selectedRatio\\\":\\\"desktop\\\",\\\"focusArea\\\":null},\\\"mobile\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0.16601752677702045,\\\"width\\\":1,\\\"height\\\":0.667964946445959},\\\"selectedRatio\\\":\\\"mobile\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"2\",\"sys_language_uid\":0,\"crdate\":1740129363,\"t3ver_stage\":0,\"tstamp\":1740129363,\"uid\":7}',0,'0400$f91ac5f23a0d3a5d07f04670aa0a0062:117c97010b9af15cb554d115dba4e316'),(37,1740129363,1,'BE',1,0,1,'netwerk_teaserservices_items','{\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"sorting\":256,\"title\":\"Versicherungsrecht\",\"text\":\"Unsere Kanzlei bietet Beratung und Unterst\\u00fctzung in Versicherungsangelegenheiten und Hilfestellung bei der Geltendmachung von Versicherungsanspr\\u00fcchen. Versicherungsvertr\\u00e4ge sind oft komplex und bieten vielf\\u00e4ltige rechtliche Fragestellungen, sei es bei der Pr\\u00fcfung von Versicherungspolicen, der Regulierung von Schadensf\\u00e4llen oder der Kl\\u00e4rung von Haftungsfragen. Unsere Kanzlei unterst\\u00fctzt Sie dabei, Ihre Anspr\\u00fcche gegen\\u00fcber Versicherungen erfolgreich durchzusetzen und Ihre Rechte zu wahren.\",\"sys_language_uid\":0,\"fe_group\":\"\",\"editlock\":\"0\",\"crdate\":1740129363,\"tstamp\":1740129363,\"uid\":1}',0,'0400$f91ac5f23a0d3a5d07f04670aa0a0062:a19c46e4e0b68a0b898ba06f1e512510'),(38,1740129363,1,'BE',1,0,2,'netwerk_teaserservices_items','{\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"sorting\":128,\"title\":\"Verwaltungsrecht\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor nisi at turpis cursus, at placerat magna aliquet. Vestibulum sollicitudin, sapien at euismod scelerisque, odio nisl feugiat augue, nec luctus elit nunc eu mauris. Vivamus sit amet ex at lorem tristique iaculis. Sed tempor, ante ac lobortis tincidunt, magna purus efficitur urna, eu fermentum nulla leo non leo. Nulla facilisi. Morbi ut bibendum nunc, nec congue est. Sed posuere leo vitae dui convallis, vel suscipit lorem gravida. Donec tincidunt erat at justo dapibus, et suscipit nisi volutpat. Pellentesque sit amet ex at ipsum.\",\"sys_language_uid\":0,\"fe_group\":\"\",\"editlock\":\"0\",\"crdate\":1740129363,\"tstamp\":1740129363,\"uid\":2}',0,'0400$f91ac5f23a0d3a5d07f04670aa0a0062:a5d274e1b51174e5f34d69e4cb088cde'),(39,1740129426,1,'BE',1,0,7,'tt_content','{\"CType\":\"netwerk_facts\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":3,\"sorting\":384,\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1740129426,\"t3ver_stage\":0,\"tstamp\":1740129426,\"uid\":7}',0,'0400$c77163a7004a34265791ee6b802f7b9c:ea41b626baac59a1fe0716bc344af5d9'),(40,1740129426,1,'BE',1,0,1,'netwerk_facts_facts','{\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"sorting\":256,\"title\":\"+ 25\",\"text\":\"Jahre Erfahrung\\r\\nund Expertise\",\"sys_language_uid\":0,\"fe_group\":\"\",\"editlock\":\"0\",\"crdate\":1740129426,\"tstamp\":1740129426,\"uid\":1}',0,'0400$c77163a7004a34265791ee6b802f7b9c:17aa66353cc07ddb8f089f74914c0992'),(41,1740129426,1,'BE',1,0,2,'netwerk_facts_facts','{\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"sorting\":128,\"title\":\"+ 200\",\"text\":\"erfolgreich\\r\\nabgewickelte F\\u00e4lle\",\"sys_language_uid\":0,\"fe_group\":\"\",\"editlock\":\"0\",\"crdate\":1740129426,\"tstamp\":1740129426,\"uid\":2}',0,'0400$c77163a7004a34265791ee6b802f7b9c:3229f5c761a2d6377cbbad5c2ea47d9e'),(42,1740129426,1,'BE',1,0,3,'netwerk_facts_facts','{\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"sorting\":64,\"title\":\"+ 250 \",\"text\":\"zufriedene Kunden\\r\\nund Partner\",\"sys_language_uid\":0,\"fe_group\":\"\",\"editlock\":\"0\",\"crdate\":1740129426,\"tstamp\":1740129426,\"uid\":3}',0,'0400$c77163a7004a34265791ee6b802f7b9c:33c57ed05d6126ecf7219bba3dcd5cc8'),(43,1740129445,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"space_before_class\":\"\",\"space_after_class\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"space_before_class\":\"medium\",\"space_after_class\":\"medium\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"netwerk_teaserservices_items\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$434c0628653c895ca3ce68f12a576d97:c0db6803ab1ec5f70c36e2a72187867b'),(44,1740129445,2,'BE',1,0,1,'netwerk_teaserservices_items','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$434c0628653c895ca3ce68f12a576d97:a19c46e4e0b68a0b898ba06f1e512510'),(45,1740129445,2,'BE',1,0,2,'netwerk_teaserservices_items','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$434c0628653c895ca3ce68f12a576d97:a5d274e1b51174e5f34d69e4cb088cde'),(46,1740129549,1,'BE',1,0,8,'tt_content','{\"CType\":\"netwerk_textbild\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":3,\"sorting\":768,\"netwerk_textbild_header\":\"F\\u00fcr Sie da.\",\"netwerk_textbild_bodytext\":\"<p>Ihr Anliegen ist uns wichtig, und wir sind jederzeit bereit, Ihnen mit unserer Expertise zur Seite zu stehen. Egal, ob Sie rechtliche Beratung ben\\u00f6tigen oder Unterst\\u00fctzung in einem spezifischen Fall suchen \\u2013 wir sind f\\u00fcr Sie da. Z\\u00f6gern Sie nicht, uns zu kontaktieren, damit wir gemeinsam die besten L\\u00f6sungen finden k\\u00f6nnen.<\\/p>\",\"netwerk_textbild_url\":\"mailto:office@ra-schiestl.at\",\"netwerk_textbild_linktext\":\"Kontakt\",\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1740129549,\"t3ver_stage\":0,\"tstamp\":1740129549,\"uid\":8}',0,'0400$b210c6cd2120d03fc38f3c9e3b52b298:2097d84972a039cb6bfe093b17089287'),(47,1740129549,1,'BE',1,0,8,'sys_file_reference','{\"sorting_foreign\":0,\"autoplay\":0,\"hidden\":\"0\",\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"pid\":3,\"alternative\":null,\"description\":null,\"link\":\"\",\"title\":null,\"crop\":\"{\\\"desktop\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0.08252190847127557,\\\"width\\\":1,\\\"height\\\":0.8349561830574489},\\\"selectedRatio\\\":\\\"desktop\\\",\\\"focusArea\\\":null},\\\"mobile\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0.3330087633885102,\\\"width\\\":1,\\\"height\\\":0.3339824732229795},\\\"selectedRatio\\\":\\\"mobile\\\",\\\"focusArea\\\":null}}\",\"uid_local\":\"2\",\"sys_language_uid\":0,\"crdate\":1740129549,\"t3ver_stage\":0,\"tstamp\":1740129549,\"uid\":8}',0,'0400$b210c6cd2120d03fc38f3c9e3b52b298:5ff44a4f59fb3bfbe13a2c3ed1d0bd8b'),(48,1740129593,1,'BE',1,0,5,'pages','{\"doktype\":\"1\",\"slug\":\"\\/datenschutz\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"tx_staticfilecache_cache\":\"1\",\"tx_staticfilecache_cache_force\":\"0\",\"tx_staticfilecache_cache_offline\":\"0\",\"tx_staticfilecache_cache_priority\":\"0\",\"pid\":1,\"sorting\":512,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Datenschutz\",\"sys_language_uid\":0,\"crdate\":1740129593,\"t3ver_stage\":0,\"tstamp\":1740129593,\"uid\":5}',0,'0400$66f1e8627f88346878d48becdd0ebce0:7ef5a4e3e11db8ac3fea4d7a75468161'),(49,1740129596,2,'BE',1,0,5,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$7129518bac8ad4bf4269e71349b63bad:7ef5a4e3e11db8ac3fea4d7a75468161'),(50,1740129633,1,'BE',1,0,6,'pages','{\"doktype\":\"1\",\"slug\":\"\\/impressum\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"tx_staticfilecache_cache\":\"1\",\"tx_staticfilecache_cache_force\":\"0\",\"tx_staticfilecache_cache_offline\":\"0\",\"tx_staticfilecache_cache_priority\":\"0\",\"pid\":1,\"sorting\":384,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Impressum\",\"sys_language_uid\":0,\"crdate\":1740129633,\"t3ver_stage\":0,\"tstamp\":1740129633,\"uid\":6}',0,'0400$8d863ae9017e77700194b23c523c6c32:c75354c439a48dbde16b03ac553a080d'),(51,1740129636,2,'BE',1,0,6,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$326aeeeb176c264a87007b34eb1979bc:c75354c439a48dbde16b03ac553a080d'),(52,1740129644,1,'BE',1,0,7,'pages','{\"doktype\":\"1\",\"slug\":\"\\/agb\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"tx_staticfilecache_cache\":\"1\",\"tx_staticfilecache_cache_force\":\"0\",\"tx_staticfilecache_cache_offline\":\"0\",\"tx_staticfilecache_cache_priority\":\"0\",\"pid\":1,\"sorting\":448,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"AGB\",\"sys_language_uid\":0,\"crdate\":1740129644,\"t3ver_stage\":0,\"tstamp\":1740129644,\"uid\":7}',0,'0400$4599df73438f04653d587287e3bcdd32:df50bb24cbce671cf0d61f42fbbef601'),(53,1740129647,2,'BE',1,0,7,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$993a92ba71fb5be3bb4c5e67e22ac6dd:df50bb24cbce671cf0d61f42fbbef601'),(54,1740129653,1,'BE',1,0,8,'pages','{\"doktype\":\"199\",\"slug\":\"\\/footer\",\"categories\":\"0\",\"layout\":\"0\",\"lastUpdated\":0,\"newUntil\":0,\"cache_timeout\":\"0\",\"shortcut\":0,\"shortcut_mode\":\"0\",\"content_from_pid\":0,\"mount_pid\":0,\"module\":\"\",\"hidden\":1,\"starttime\":0,\"endtime\":0,\"l10n_parent\":0,\"l10n_diffsource\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"\",\"tx_staticfilecache_cache\":\"1\",\"tx_staticfilecache_cache_force\":\"0\",\"tx_staticfilecache_cache_offline\":\"0\",\"tx_staticfilecache_cache_priority\":\"0\",\"pid\":1,\"sorting\":320,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"Footer\",\"sys_language_uid\":0,\"crdate\":1740129653,\"t3ver_stage\":0,\"tstamp\":1740129653,\"uid\":8}',0,'0400$e6206a5de7fce8aef6bf99a996912d7e:595375f2fb9f014e091eb08fbc51ec88'),(55,1740129656,2,'BE',1,0,8,'pages','{\"oldRecord\":{\"hidden\":1,\"l10n_diffsource\":\"\"},\"newRecord\":{\"hidden\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\"}}',0,'0400$90d48b9447af54ada2ef133a176305c0:595375f2fb9f014e091eb08fbc51ec88'),(56,1740129703,1,'BE',1,0,9,'tt_content','{\"CType\":\"netwerk_text\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"1\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":5,\"sorting\":256,\"netwerk_text_subheader\":\"\",\"netwerk_text_header\":\"Datenschutz\",\"bodytext\":\"<p>Lieber Gast! Unsere Datenschutzerkl\\u00e4rung wird derzeit nur in deutscher Sprache bereitgestellt, um sicherzustellen, dass die angef\\u00fchrten Ma\\u00dfnahmen\\/Angaben auch wirklich korrekt sind und es zu keinen Fehlinterpretationen aufgrund einer unzureichenden \\u00dcbersetzung kommen kann. Falls Sie Fragen zum Thema Datenschutz auf unserer Website haben, k\\u00f6nnen Sie uns jederzeit kontaktieren. Vielen Dank f\\u00fcr Ihr Verst\\u00e4ndnis!<\\/p>\",\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1740129703,\"t3ver_stage\":0,\"tstamp\":1740129703,\"uid\":9}',0,'0400$4ee5553f382c9303ea997a693bcf76e0:367f4f227870d8e2a11496a182574aa3'),(57,1740129735,1,'BE',1,0,10,'tt_content','{\"CType\":\"netwerk_text\",\"categories\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"colPos\":\"0\",\"date\":0,\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":0,\"imageheight\":0,\"imageorient\":\"0\",\"imagecols\":\"2\",\"recursive\":\"0\",\"list_type\":\"\",\"sectionIndex\":\"1\",\"hidden\":\"0\",\"starttime\":0,\"endtime\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l18n_diffsource\":\"\",\"bullets_type\":\"0\",\"cols\":\"0\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":0,\"target\":\"\",\"uploads_description\":0,\"uploads_type\":\"0\",\"pid\":5,\"sorting\":512,\"netwerk_text_subheader\":\"Subheader\",\"netwerk_text_header\":\"Header h2\",\"bodytext\":\"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.&nbsp;<\\/p>\\r\\n<p>At vero eos et accusam:<\\/p>\\r\\n<ul><li>et justo duo dolores et ea rebum.<\\/li><li>Stet clita kasd gubergren, no<\\/li><li>sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est <a href=\\\"https:\\/\\/ra-schiestl.at.ddev.site\\/\\\">Lorem ipsum dolor sit amet.<\\/a><\\/li><\\/ul>\",\"linkToTop\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"rowDescription\":\"\",\"crdate\":1740129735,\"t3ver_stage\":0,\"tstamp\":1740129735,\"uid\":10}',0,'0400$c07c09f3ed78e3bd8fab0d723684335f:7ea9bfd0f5c1068d25caf6ccac9d6265'),(58,1740129949,2,'BE',1,0,9,'tt_content','{\"oldRecord\":{\"space_before_class\":\"\",\"space_after_class\":\"\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"space_before_class\":\"small\",\"space_after_class\":\"small\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"netwerk_text_subheader\\\":\\\"\\\",\\\"netwerk_text_header\\\":\\\"\\\",\\\"header_layout\\\":\\\"\\\",\\\"bodytext\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$73ba268d46eeac2879161dbd18ff6f4f:367f4f227870d8e2a11496a182574aa3'),(59,1740130280,2,'BE',1,0,2,'tt_content','{\"oldRecord\":{\"netwerk_textgreybackground_bodytext\":\"<p>Unsere Rechtsanwaltskanzlei in F\\u00fcgen im Zillertal bietet Ihnen rechtliche Beratung und Unterst\\u00fctzung sowie gerichtliche und au\\u00dfergerichtliche Vertretung in allen Rechtsangelegenheiten.Im Mittelpunkt unserer T\\u00e4tigkeit stehen die Interessen unserer Mandanten. Namhafte Unternehmen vertrauen auf unseren juristischen Rat. Wir sorgen uns um Ihre pers\\u00f6nlichen, rechtlichen und wirtschaftlichen Anliegen, kurz um wir setzen alles daran \\u201eIhr gutes Recht\\u201c erfolgreich zu vertreten und durchzusetzen.<\\/p>\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"netwerk_textgreybackground_bodytext\":\"<p>Unsere Rechtsanwaltskanzlei in F\\u00fcgen im Zillertal bietet Ihnen rechtliche Beratung und Unterst\\u00fctzung sowie gerichtliche und au\\u00dfergerichtliche Vertretung in allen Rechtsangelegenheiten.Im Mittelpunkt unserer T\\u00e4tigkeit stehen die Interessen unserer Mandanten.&nbsp;<\\/p>\\r\\n<p>Namhafte Unternehmen vertrauen auf unseren juristischen Rat. Wir sorgen uns um Ihre pers\\u00f6nlichen, rechtlichen und wirtschaftlichen Anliegen, kurz um wir setzen alles daran \\u201eIhr gutes Recht\\u201c erfolgreich zu vertreten und durchzusetzen.<\\/p>\",\"l18n_diffsource\":\"{\\\"CType\\\":\\\"\\\",\\\"colPos\\\":\\\"\\\",\\\"header\\\":\\\"\\\",\\\"netwerk_textgreybackground_bodytext\\\":\\\"\\\",\\\"netwerk_textgreybackground_url\\\":\\\"\\\",\\\"netwerk_textgreybackground_linktext\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"frame_class\\\":\\\"\\\",\\\"space_before_class\\\":\\\"\\\",\\\"space_after_class\\\":\\\"\\\",\\\"sectionIndex\\\":\\\"\\\",\\\"linkToTop\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"sys_language_uid\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$10a5592ff25cfac540728eeb8136d95d:01dbc21fdb1263685b9147b3b1596ea8');
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_http_report`
--

DROP TABLE IF EXISTS `sys_http_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_http_report` (
  `uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` smallint unsigned NOT NULL DEFAULT '0',
  `created` int unsigned NOT NULL,
  `changed` int unsigned NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `scope` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `request_time` bigint unsigned NOT NULL,
  `meta` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `summary` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `type_scope` (`type`,`scope`),
  KEY `created` (`created`),
  KEY `changed` (`changed`),
  KEY `request_time` (`request_time`),
  KEY `summary_created` (`summary`,`created`),
  KEY `all_conditions` (`type`,`status`,`scope`,`summary`,`request_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_http_report`
--

LOCK TABLES `sys_http_report` WRITE;
/*!40000 ALTER TABLE `sys_http_report` DISABLE KEYS */;
INSERT INTO `sys_http_report` VALUES ('0a3b4c7c-99bd-4d1f-8abf-ba7de86cd3cd',0,1739531320,1739531320,'csp-report','backend',1739531313419457,'{\"addr\":\"192.168.228.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/record\\/edit?edit%5Btt_content%5D%5B4%5D=edit&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flayout%3Ftoken%3Dcdd654143c2ec5dfb0ba9d33aa4ef80234101f0e%26id%3D1%26\",\"referrer\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/record\\/edit?edit%5Btt_content%5D%5B-3%5D=new&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flayout%3Ftoken%3Dcdd654143c2ec5dfb0ba9d33aa4ef80234101f0e%26id%3D1%26&defVals%5Btt_content%5D%5BCType%5D=netwerk_textimageround&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-EZoAnvcj-utcjjxm5NkdRyKjIGabaiugaYhoOGPgidf7AprjDE409w\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/@http-reporting?csp=report&requestTime=1739531313419457&requestHash=ff2e65d0ad00ec765c6a3b0183fa25bf29485b73\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','c86ceaf4ff45a521defd36c11caa7c57941895d0'),('55c16eae-59d6-4920-9e14-f2bdb29fd28e',0,1740045445,1740045445,'csp-report','backend',1740045442591074,'{\"addr\":\"91.113.201.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/ra.netwerk.guru\\/typo3\\/module\\/web\\/layout?id=1\",\"referrer\":\"https:\\/\\/ra.netwerk.guru\\/typo3\\/module\\/web\\/layout?id=1\",\"violated-directive\":\"script-src-elem\",\"effective-directive\":\"script-src-elem\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-a66d9febdkyDYCH5eaVUxRUBf4NIe03pgP3s4MAewTWItexEKLlw4A\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/ra.netwerk.guru\\/typo3\\/@http-reporting?csp=report&requestTime=1740045442591074&requestHash=b259fa6e7c7aa99c7e7882d9303d1f82db407ce7\",\"disposition\":\"enforce\",\"blocked-uri\":\"inline\",\"line-number\":1,\"source-file\":\"https:\\/\\/ra.netwerk.guru\\/typo3\\/module\\/web\\/layout\",\"status-code\":200,\"script-sample\":\"javascript:;\"}','887257c2a25873b8e878e5da5a7fb1f722c7a63b'),('8c98ec61-57f8-4600-b683-fb0adc4e9cb8',0,1739531260,1739531260,'csp-report','backend',1739531255054274,'{\"addr\":\"192.168.228.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/record\\/edit?edit%5Btt_content%5D%5B-3%5D=new&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flayout%3Ftoken%3Dcdd654143c2ec5dfb0ba9d33aa4ef80234101f0e%26id%3D1%26&defVals%5Btt_content%5D%5BCType%5D=netwerk_textimageround&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0\",\"referrer\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/module\\/web\\/layout?id=1\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-cjoJGJI1xVc9v1YFQFYTR--bWzq9-ajeM8mC5KZLC0ZkZZZJIMIRoA\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/@http-reporting?csp=report&requestTime=1739531255054274&requestHash=3adedbeadc7db9157c5bc14c2f0bd120e0d59795\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','c86ceaf4ff45a521defd36c11caa7c57941895d0'),('c4b985bf-bd85-47fe-a28d-fb6db5031faf',0,1739526302,1739526302,'csp-report','backend',1739526301337185,'{\"addr\":\"192.168.228.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/record\\/edit?edit%5Btt_content%5D%5B-1%5D=new&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flayout%3Ftoken%3Dcdd654143c2ec5dfb0ba9d33aa4ef80234101f0e%26id%3D1&defVals%5Btt_content%5D%5BCType%5D=netwerk_textgreybackground&defVals%5Btt_content%5D%5BcolPos%5D=0&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0\",\"referrer\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/module\\/web\\/layout?id=1\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-IKvPngDp6s5VZvrZKOTqf15E1BVeelawqVrouxv9pBTtaYCBorGQBA\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/@http-reporting?csp=report&requestTime=1739526301337185&requestHash=d6da01c1aa8f42318e4ae2b3ef3f7789523bc62a\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','c86ceaf4ff45a521defd36c11caa7c57941895d0'),('d8953a99-7295-4977-94f8-06cfbed23cdb',0,1739532070,1739532070,'csp-report','backend',1739532064998834,'{\"addr\":\"192.168.228.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/record\\/edit?edit%5Btt_content%5D%5B4%5D=edit&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flayout%3Ftoken%3Dcdd654143c2ec5dfb0ba9d33aa4ef80234101f0e%26id%3D1%23element-tt_content-4\",\"referrer\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/record\\/edit?edit%5Btt_content%5D%5B4%5D=edit&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flayout%3Ftoken%3Dcdd654143c2ec5dfb0ba9d33aa4ef80234101f0e%26id%3D1%23element-tt_content-4\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-yIUwJ5N2p1XySng1BloXGYP43fDy1QI59fxnFDr377hKEkjDCWQkkQ\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/@http-reporting?csp=report&requestTime=1739532064998834&requestHash=b1bedb8370f2a55ae5c656359e23637a34b266fa\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','c86ceaf4ff45a521defd36c11caa7c57941895d0'),('dd503082-85da-4480-85f4-17bb12395e9b',0,1739532035,1739532035,'csp-report','backend',1739532034614927,'{\"addr\":\"192.168.228.0\",\"agent\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"}','{\"document-uri\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/record\\/edit?edit%5Btt_content%5D%5B4%5D=edit&returnUrl=%2Ftypo3%2Fmodule%2Fweb%2Flayout%3Ftoken%3Dcdd654143c2ec5dfb0ba9d33aa4ef80234101f0e%26id%3D1%23element-tt_content-4\",\"referrer\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/module\\/web\\/layout?id=1\",\"violated-directive\":\"script-src\",\"effective-directive\":\"script-src\",\"original-policy\":\"default-src \'self\'; script-src \'self\' \'nonce-lY3wycT77I5CUXE19gwVHO4a2xNonWp5ACFaF6pRfaY6c6BqnU4fbw\' \'report-sample\'; style-src \'self\' \'unsafe-inline\' \'report-sample\'; style-src-attr \'unsafe-inline\' \'report-sample\'; img-src \'self\' data: *.ytimg.com *.vimeocdn.com https:\\/\\/extensions.typo3.org; worker-src \'self\' blob:; frame-src \'self\' *.youtube-nocookie.com *.youtube.com *.vimeo.com; base-uri \'none\'; object-src \'none\'; report-uri https:\\/\\/ra-schiestl.at.ddev.site\\/typo3\\/@http-reporting?csp=report&requestTime=1739532034614927&requestHash=dfadfb72731f6602bd42d87c8b26c91d8aba0fa6\",\"disposition\":\"enforce\",\"blocked-uri\":\"eval\",\"line-number\":1,\"column-number\":33690,\"source-file\":\"https:\\/\\/ra-schiestl.at.ddev.site\\/_assets\\/937be57c7660e085d41e9dabf38b8aa1\\/Contrib\\/@ckeditor\\/ckeditor5-inspector.js\",\"status-code\":200,\"script-sample\":\"(function anonymous(\\n) {\\nreturn this\\n})\"}','c86ceaf4ff45a521defd36c11caa7c57941895d0');
/*!40000 ALTER TABLE `sys_http_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `record_uid` int NOT NULL DEFAULT '0',
  `record_pid` int NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `feuserid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_messenger_messages`
--

DROP TABLE IF EXISTS `sys_messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_messenger_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_name` (`queue_name`),
  KEY `available_at` (`available_at`),
  KEY `delivered_at` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_messenger_messages`
--

LOCK TABLES `sys_messenger_messages` WRITE;
/*!40000 ALTER TABLE `sys_messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_news` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_note` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `cruser` int unsigned NOT NULL DEFAULT '0',
  `category` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `personal` smallint unsigned NOT NULL DEFAULT '0',
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_reaction`
--

DROP TABLE IF EXISTS `sys_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_reaction` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `updatedon` int unsigned NOT NULL DEFAULT '0',
  `createdon` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `disabled` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `impersonate_user` int unsigned NOT NULL DEFAULT '0',
  `storage_pid` int unsigned NOT NULL DEFAULT '0',
  `reaction_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `identifier` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fields` json DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  UNIQUE KEY `identifier_key` (`identifier`),
  KEY `index_source` (`reaction_type`(5)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_reaction`
--

LOCK TABLES `sys_reaction` WRITE;
/*!40000 ALTER TABLE `sys_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tablename` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `recuid` int unsigned NOT NULL DEFAULT '0',
  `field` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '2147483647',
  `t3ver_state` int unsigned NOT NULL DEFAULT '0',
  `flexpointer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `sorting` int NOT NULL DEFAULT '0',
  `workspace` int unsigned NOT NULL DEFAULT '0',
  `ref_table` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ref_uid` int NOT NULL DEFAULT '0',
  `ref_field` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ref_hidden` smallint unsigned NOT NULL DEFAULT '0',
  `ref_starttime` int unsigned NOT NULL DEFAULT '0',
  `ref_endtime` int unsigned NOT NULL DEFAULT '2147483647',
  `ref_t3ver_state` int unsigned NOT NULL DEFAULT '0',
  `ref_sorting` int NOT NULL DEFAULT '0',
  `ref_string` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`,`field`,`workspace`,`ref_t3ver_state`,`ref_hidden`,`ref_starttime`,`ref_endtime`),
  KEY `lookup_ref` (`ref_table`,`ref_uid`,`tablename`,`workspace`,`t3ver_state`,`hidden`,`starttime`,`endtime`),
  KEY `lookup_string` (`ref_string`(191)),
  KEY `idx_softref_key` (`softref_key`,`ref_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('1e326b2092437f7eb52e1d6f04baefe9','netwerk_teaserservices_items',2,'image',0,0,2147483647,0,'','','',0,0,'sys_file_reference',7,'',0,0,2147483647,0,0,''),('2a53fb479a613fb272824eb281fc06f5','tt_content',1,'netwerk_hero_image',0,0,2147483647,0,'','','',0,0,'sys_file_reference',1,'',0,0,2147483647,0,0,''),('363a9e113503620ecef9238f87707287','sys_file_reference',3,'uid_local',0,0,2147483647,0,'','','',0,0,'sys_file',3,'',0,0,2147483647,0,0,''),('4a605b482a5474eca6bbfa7815763aaa','netwerk_teaserservices_items',1,'image',0,0,2147483647,0,'','','',0,0,'sys_file_reference',6,'',0,0,2147483647,0,0,''),('5bf158826ca12d7cf876e30d62cd9270','sys_file_reference',8,'uid_local',0,0,2147483647,0,'','','',0,0,'sys_file',2,'',0,0,2147483647,0,0,''),('5cf62de176f58998d1750ec070eb9269','sys_file',2,'metadata',0,0,2147483647,0,'','','',0,0,'sys_file_metadata',2,'',0,0,2147483647,0,0,''),('662118c0b7a0096482db813011801a45','sys_file',1,'storage',0,0,2147483647,0,'','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,0,''),('68275e712ee6626930e72c076be4577e','sys_file_reference',1,'uid_local',0,0,2147483647,0,'','','',0,0,'sys_file',2,'',0,0,2147483647,0,0,''),('6c3a208da78521ce72e80256bb58ddba','sys_file_reference',6,'uid_local',0,0,2147483647,0,'','','',0,0,'sys_file',2,'',0,0,2147483647,0,0,''),('6cb94a06e4835f70377b2c2505264d82','sys_file_reference',5,'uid_local',0,0,2147483647,0,'','','',0,0,'sys_file',2,'',0,0,2147483647,0,0,''),('6e57e048c0ae71a39a4b9dc6705261cf','tt_content',3,'netwerk_textimagebackground_url',0,0,2147483647,0,'','typolink','718c36ebf62f542970bb9160b39aca58:0',0,0,'pages',2,'',0,0,2147483647,0,0,''),('701d28d24161fe71d2c371e1e189dcde','tt_content',4,'netwerk_textimageround_image',0,0,2147483647,0,'','','',0,0,'sys_file_reference',4,'',0,0,2147483647,0,0,''),('86b0fde5e44ecac67785b12e2164c39d','tt_content',6,'netwerk_teaserservices_items',0,0,2147483647,0,'','','',0,0,'netwerk_teaserservices_items',1,'',0,0,2147483647,0,0,''),('a8861a89caaf931667688c479fe96cf7','tt_content',8,'netwerk_textbild_url',0,0,2147483647,0,'','typolink','6d52e6a2301f8ef31c168e3f774d4c7e:0',0,0,'_STRING',0,'',0,0,2147483647,0,0,'office@ra-schiestl.at'),('ab21a80e7defa43c242c0c75545dcee4','tt_content',5,'netwerk_herowithicon_image',0,0,2147483647,0,'','','',0,0,'sys_file_reference',5,'',0,0,2147483647,0,0,''),('b04acde26920052128a71abbc2179c3c','tt_content',3,'netwerk_textimagebackground_image',0,0,2147483647,0,'','','',0,0,'sys_file_reference',3,'',0,0,2147483647,0,0,''),('b29f51a7f7e6e6dcc6d99be7849ae442','sys_file',2,'storage',0,0,2147483647,0,'','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,0,''),('b2e4af4a3075b7fca2915e9bb000983b','tt_content',6,'netwerk_teaserservices_items',0,0,2147483647,0,'','','',1,0,'netwerk_teaserservices_items',2,'',0,0,2147483647,0,0,''),('bda33a36c4c619590127ba3df952a407','tt_content',7,'netwerk_facts_facts',0,0,2147483647,0,'','','',0,0,'netwerk_facts_facts',1,'',0,0,2147483647,0,0,''),('c23ac9166854d7a56be1c8719a3676fa','tt_content',7,'netwerk_facts_facts',0,0,2147483647,0,'','','',2,0,'netwerk_facts_facts',3,'',0,0,2147483647,0,0,''),('d762da2cbea3fc2bcaf1db96ded74dd7','sys_file',3,'storage',0,0,2147483647,0,'','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,0,''),('e103bf8e08e87a0e7f4b7b49570de256','sys_file_reference',7,'uid_local',0,0,2147483647,0,'','','',0,0,'sys_file',2,'',0,0,2147483647,0,0,''),('e3883898ee53267767ac1b4db2bc1803','tt_content',7,'netwerk_facts_facts',0,0,2147483647,0,'','','',1,0,'netwerk_facts_facts',2,'',0,0,2147483647,0,0,''),('e94a2ecd669824a1cb80959e7df9156d','sys_file_reference',4,'uid_local',0,0,2147483647,0,'','','',0,0,'sys_file',3,'',0,0,2147483647,0,0,''),('fcec70cedd2e47ebe22d19e14bb9f07f','tt_content',8,'netwerk_textbild_image',0,0,2147483647,0,'','','',0,0,'sys_file_reference',8,'',0,0,2147483647,0,0,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_registry` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendGroupsExplicitAllowDenyMigration',_binary 'i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendModulePermissionMigration',_binary 'i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\IndexedSearchCTypeMigration',_binary 'i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateSiteSettingsConfigUpdate',_binary 'i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PagesRecyclerDoktypeMigration',_binary 'i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SynchronizeColPosAndCTypeWithDefaultLanguage',_binary 'i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileCollectionIdentifierMigration',_binary 'i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileMountIdentifierMigration',_binary 'i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogSerializationUpdate',_binary 'i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysTemplateNoWorkspaceMigration',_binary 'i:1;'),(11,'installUpdate','TYPO3\\CMS\\Extensionmanager\\Updates\\FeLoginModeExtractionUpdate',_binary 'i:1;'),(12,'installUpdateRows','rowUpdatersDone',_binary 'a:1:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\SysRedirectRootPageMoveMigration\";}'),(13,'core','formProtectionSessionToken:1',_binary 's:64:\"2b122c89b38f7893751dcd5585e340faee796c7de0c34a6991bb627998fa9b9a\";'),(14,'extensionDataImport','typo3/cms-core/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(15,'extensionDataImport','typo3/cms-extbase/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(16,'extensionDataImport','typo3/cms-fluid/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(17,'extensionDataImport','typo3/cms-install/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(18,'extensionDataImport','typo3/cms-backend/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(19,'extensionDataImport','typo3/cms-frontend/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(20,'extensionDataImport','typo3/cms-dashboard/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(21,'extensionDataImport','typo3/cms-fluid-styled-content/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(22,'extensionDataImport','typo3/cms-filelist/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(23,'extensionDataImport','typo3/cms-impexp/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(24,'extensionDataImport','typo3/cms-form/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(25,'extensionDataImport','typo3/cms-seo/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(26,'extensionDataImport','typo3/cms-setup/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(27,'extensionDataImport','typo3/cms-rte-ckeditor/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(28,'extensionDataImport','typo3/cms-sys-note/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(29,'extensionDataImport','typo3/cms-belog/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(30,'extensionDataImport','typo3/cms-beuser/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(31,'extensionDataImport','typo3/cms-extensionmanager/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(32,'extensionDataImport','typo3/cms-felogin/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(33,'extensionDataImport','typo3/cms-info/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(34,'extensionDataImport','typo3/cms-reactions/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(35,'extensionDataImport','typo3/cms-recycler/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(36,'extensionDataImport','typo3/cms-tstemplate/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(37,'extensionDataImport','typo3/cms-viewpage/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(38,'extensionDataImport','typo3/cms-webhooks/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(39,'extensionDataImport','lochmueller/staticfilecache/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(40,'extensionDataImport','helhum/typo3-console/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(41,'extensionDataImport','friendsoftypo3/content-blocks/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(42,'extensionDataImport','clickstorm/cs-seo/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(43,'extensionDataImport','t3/min/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(44,'extensionDataImport','netwerk/nw_template/ext_tables_static+adt.sql',_binary 's:0:\"\";'),(45,'languagePacks','de-content_blocks',_binary 'i:1742896021;'),(46,'languagePacks','de',_binary 'i:1742896022;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_template` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `tx_impexp_origuid` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `root` smallint unsigned NOT NULL DEFAULT '0',
  `clear` smallint unsigned NOT NULL DEFAULT '0',
  `constants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `include_static_file` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `basedOn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `includeStaticAfterBasedOn` smallint unsigned NOT NULL DEFAULT '0',
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `static_file_mode` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_webhook`
--

DROP TABLE IF EXISTS `sys_webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_webhook` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `updatedon` int unsigned NOT NULL DEFAULT '0',
  `createdon` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `disabled` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `webhook_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `identifier` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT (_utf8mb3''),
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `verify_ssl` smallint unsigned NOT NULL DEFAULT '1',
  `additional_headers` json DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  UNIQUE KEY `identifier_key` (`identifier`),
  KEY `index_source` (`webhook_type`(5)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_webhook`
--

LOCK TABLES `sys_webhook` WRITE;
/*!40000 ALTER TABLE `sys_webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_webhook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tt_content` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `sorting` int NOT NULL DEFAULT '0',
  `rowDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `editlock` smallint unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l18n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_source` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `l18n_diffsource` mediumblob DEFAULT (NULL),
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `frame_class` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'default',
  `colPos` int unsigned NOT NULL DEFAULT '0',
  `table_caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tx_impexp_origuid` int NOT NULL DEFAULT '0',
  `CType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `categories` int unsigned NOT NULL DEFAULT '0',
  `layout` int unsigned NOT NULL DEFAULT '0',
  `space_before_class` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `date` bigint NOT NULL DEFAULT '0',
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `header_layout` int unsigned NOT NULL DEFAULT '0',
  `header_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `header_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT (_utf8mb3''),
  `subheader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `bodytext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `image` int unsigned NOT NULL DEFAULT '0',
  `assets` int unsigned NOT NULL DEFAULT '0',
  `imagewidth` int unsigned NOT NULL DEFAULT '0',
  `imageheight` int unsigned NOT NULL DEFAULT '0',
  `imageorient` int unsigned NOT NULL DEFAULT '0',
  `imageborder` smallint unsigned NOT NULL DEFAULT '0',
  `image_zoom` smallint unsigned NOT NULL DEFAULT '0',
  `imagecols` int unsigned NOT NULL DEFAULT '0',
  `pages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `recursive` int unsigned NOT NULL DEFAULT '0',
  `list_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `media` int unsigned NOT NULL DEFAULT '0',
  `records` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `sectionIndex` smallint unsigned NOT NULL DEFAULT '1',
  `linkToTop` smallint unsigned NOT NULL DEFAULT '0',
  `pi_flexform` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `selected_categories` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `category_field` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `bullets_type` int unsigned NOT NULL DEFAULT '0',
  `cols` int unsigned NOT NULL DEFAULT '0',
  `table_class` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `table_delimiter` int unsigned NOT NULL DEFAULT '0',
  `table_enclosure` int unsigned NOT NULL DEFAULT '0',
  `table_header_position` int unsigned NOT NULL DEFAULT '0',
  `table_tfoot` smallint unsigned NOT NULL DEFAULT '0',
  `file_collections` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `filelink_size` smallint unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `target` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `uploads_description` smallint unsigned NOT NULL DEFAULT '0',
  `uploads_type` int unsigned NOT NULL DEFAULT '0',
  `netwerk_hero_image` int unsigned NOT NULL DEFAULT '0',
  `netwerk_textgreybackground_bodytext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_textgreybackground_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT (_utf8mb3''),
  `netwerk_textgreybackground_linktext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_textimagebackground_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT (_utf8mb3''),
  `netwerk_textimagebackground_linktext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_textimagebackground_image` int unsigned NOT NULL DEFAULT '0',
  `zzz_deleted_netwerk_textgreybackground_image` int unsigned NOT NULL DEFAULT '0',
  `netwerk_textimageround_bodytext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_textimageround_image` int unsigned NOT NULL DEFAULT '0',
  `netwerk_textimageround_header` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_imageroundtext_header` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_imageroundtext_bodytext` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_teaseroverview_header` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_teaseroverview_teaser` int unsigned NOT NULL DEFAULT '0',
  `netwerk_imageroundtext_image` int unsigned NOT NULL DEFAULT '0',
  `netwerk_herowithicon_text` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_herowithicon_image` int unsigned NOT NULL DEFAULT '0',
  `netwerk_textbild_header` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_textbild_bodytext` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_textbild_url` text COLLATE utf8mb4_general_ci NOT NULL DEFAULT (_utf8mb3''),
  `netwerk_textbild_image` int unsigned NOT NULL DEFAULT '0',
  `netwerk_facts_facts` int unsigned NOT NULL DEFAULT '0',
  `netwerk_teaserservices_items` int unsigned NOT NULL DEFAULT '0',
  `netwerk_herowithicon_icon` int unsigned NOT NULL DEFAULT '0',
  `netwerk_textbild_linktext` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_text_header` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_text_subheader` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_intro_subheader` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_teaser_subheader` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_teaser_header` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_teaser_teaser` int unsigned NOT NULL DEFAULT '0',
  `netwerk_teasertext_subheader` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_teasertext_header` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_teasertext_items` int unsigned NOT NULL DEFAULT '0',
  `netwerk_highlights_subheader` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_highlights_header` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_highlights_highlights` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_textimages_subheader` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_textimages_header` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `netwerk_textimages_elements` int unsigned NOT NULL DEFAULT '0',
  `netwerk_textimages_image` int unsigned NOT NULL DEFAULT '0',
  `netwerk_hero_header` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_hero_hero_small` smallint unsigned NOT NULL DEFAULT '0',
  `netwerk_accordion_accordion` int unsigned NOT NULL DEFAULT '0',
  `netwerk_roomteaser_items` int unsigned NOT NULL DEFAULT '0',
  `netwerk_parallax_text` longtext COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `netwerk_parallax_image` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,1740128289,1739447128,0,0,0,0,'',256,'',0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"subheader\":\"\",\"netwerk_hero_image\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,0,'netwerk_hero',0,0,'','',0,'Mag. Andreas Schiestl',0,'','','RECHTSANWALT / FÜGEN / ZILLERTAL',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,1,NULL,'','','','',0,0,NULL,0,NULL,'',NULL,NULL,0,0,NULL,0,NULL,NULL,'',0,0,0,0,'',NULL,'','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(2,1,1740130280,1739526333,0,0,0,0,'',512,'',0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"netwerk_textgreybackground_bodytext\":\"\",\"netwerk_textgreybackground_url\":\"\",\"netwerk_textgreybackground_linktext\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,0,'netwerk_textgreybackground',0,0,'','',0,'Auch Handschläge haben Qualitätsunterschiede.',0,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,'<p>Unsere Rechtsanwaltskanzlei in Fügen im Zillertal bietet Ihnen rechtliche Beratung und Unterstützung sowie gerichtliche und außergerichtliche Vertretung in allen Rechtsangelegenheiten.Im Mittelpunkt unserer Tätigkeit stehen die Interessen unserer Mandanten.&nbsp;</p>\r\n<p>Namhafte Unternehmen vertrauen auf unseren juristischen Rat. Wir sorgen uns um Ihre persönlichen, rechtlichen und wirtschaftlichen Anliegen, kurz um wir setzen alles daran „Ihr gutes Recht“ erfolgreich zu vertreten und durchzusetzen.</p>','t3://page?uid=4','Contact','','',0,0,NULL,0,NULL,'',NULL,NULL,0,0,NULL,0,NULL,NULL,'',0,0,0,0,'',NULL,'','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(3,1,1740044981,1739528849,0,0,0,0,'',768,'',0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"netwerk_textimagebackground_url\":\"\",\"netwerk_textimagebackground_linktext\":\"\",\"netwerk_textimagebackground_image\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,0,'netwerk_textimagebackground',0,0,'','',0,'Vertrauen durch Erfahrung',0,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,NULL,'','','t3://page?uid=2','Kanzlei',1,0,NULL,0,NULL,'',NULL,NULL,0,0,NULL,0,NULL,NULL,'',0,0,0,0,'',NULL,'','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(4,1,1740045015,1739531295,0,0,0,0,'',1024,'',0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"netwerk_textimageround_header\":\"\",\"netwerk_textimageround_bodytext\":\"\",\"netwerk_textimageround_image\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,0,'netwerk_textimageround',0,0,'','',0,'Ihr Ziel im Blick, Ihr Recht im Fokus.',0,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,NULL,'','','','',0,0,'<p>Ihre Anliegen sind uns wichtig und wir nehmen uns dafür ausreichend Zeit. Am Anfang der Beratung steht ein offenes Gespräch mit unseren Mandanten. Seine Information ist die Basis für die weitere, auf individuelle Bedürfnisse abgestimmte Arbeit. Gemeinsam werden Aufgabenstellungen erkannt, Ziele festgelegt und Lösungsstrategien umgesetzt. Eine gute Beziehung zu unseren Mandanten schafft Vertrauen und dieses rechtfertigen wir durch persönliche Betreuung und Kompetenz. Mit unserer Kanzlei haben Sie einen verlässlichen Partner, der Ihre Interessen kompetent, ökonomisch und lösungsorientiert vertritt.</p>',1,'Ihr Ziel im Blick,\r\nIhr Recht im Fokus.','',NULL,NULL,0,0,NULL,0,NULL,NULL,'',0,0,0,0,'',NULL,'','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(5,3,1740129275,1740129275,0,0,0,0,'',256,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,0,'netwerk_herowithicon',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,NULL,'','','','',0,0,NULL,0,NULL,'',NULL,NULL,0,0,'Ihr Lichtblick in der\r\nRechtsberatung und\r\nRechtsvertretung.',1,NULL,NULL,'',0,0,0,0,'',NULL,'','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(6,3,1740129445,1740129363,0,0,0,0,'',512,'',0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"netwerk_teaserservices_items\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,0,'netwerk_teaserservices',0,0,'medium','medium',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,NULL,'','','','',0,0,NULL,0,NULL,'',NULL,NULL,0,0,NULL,0,NULL,NULL,'',0,0,2,0,'',NULL,'','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(7,3,1740129426,1740129426,0,0,0,0,'',384,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,0,'netwerk_facts',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,NULL,'','','','',0,0,NULL,0,NULL,'',NULL,NULL,0,0,NULL,0,NULL,NULL,'',0,3,0,0,'',NULL,'','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(8,3,1740129549,1740129549,0,0,0,0,'',768,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,0,'netwerk_textbild',0,0,'','',0,'',0,'','','',NULL,0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,NULL,'','','','',0,0,NULL,0,NULL,'',NULL,NULL,0,0,NULL,0,'Für Sie da.','<p>Ihr Anliegen ist uns wichtig, und wir sind jederzeit bereit, Ihnen mit unserer Expertise zur Seite zu stehen. Egal, ob Sie rechtliche Beratung benötigen oder Unterstützung in einem spezifischen Fall suchen – wir sind für Sie da. Zögern Sie nicht, uns zu kontaktieren, damit wir gemeinsam die besten Lösungen finden können.</p>','mailto:office@ra-schiestl.at',1,0,0,0,'Kontakt',NULL,'','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(9,5,1740129949,1740129703,0,0,0,0,'',256,'',0,0,0,0,NULL,_binary '{\"CType\":\"\",\"colPos\":\"\",\"netwerk_text_subheader\":\"\",\"netwerk_text_header\":\"\",\"header_layout\":\"\",\"bodytext\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"categories\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'default',0,NULL,0,'netwerk_text',0,0,'small','small',0,'',1,'','','','<p>Lieber Gast! Unsere Datenschutzerklärung wird derzeit nur in deutscher Sprache bereitgestellt, um sicherzustellen, dass die angeführten Maßnahmen/Angaben auch wirklich korrekt sind und es zu keinen Fehlinterpretationen aufgrund einer unzureichenden Übersetzung kommen kann. Falls Sie Fragen zum Thema Datenschutz auf unserer Website haben, können Sie uns jederzeit kontaktieren. Vielen Dank für Ihr Verständnis!</p>',0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,NULL,'','','','',0,0,NULL,0,NULL,'',NULL,NULL,0,0,NULL,0,NULL,NULL,'',0,0,0,0,'','Datenschutz','','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0),(10,5,1740129735,1740129735,0,0,0,0,'',512,'',0,0,0,0,NULL,'',0,0,0,0,'default',0,NULL,0,'netwerk_text',0,0,'','',0,'',0,'','','','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.&nbsp;</p>\r\n<p>At vero eos et accusam:</p>\r\n<ul><li>et justo duo dolores et ea rebum.</li><li>Stet clita kasd gubergren, no</li><li>sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est <a href=\"https://ra-schiestl.at.ddev.site/\">Lorem ipsum dolor sit amet.</a></li></ul>',0,0,0,0,0,0,0,2,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0,0,NULL,'','','','',0,0,NULL,0,NULL,'',NULL,NULL,0,0,NULL,0,NULL,NULL,'',0,0,0,0,'','Header h2','Subheader','','','',0,'','',0,'',NULL,NULL,'','',0,0,NULL,0,0,0,NULL,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_csseo_domain_model_evaluation`
--

DROP TABLE IF EXISTS `tx_csseo_domain_model_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_csseo_domain_model_evaluation` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `results` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `uid_foreign` int NOT NULL DEFAULT '0',
  `tablenames` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_csseo_domain_model_evaluation`
--

LOCK TABLES `tx_csseo_domain_model_evaluation` WRITE;
/*!40000 ALTER TABLE `tx_csseo_domain_model_evaluation` DISABLE KEYS */;
INSERT INTO `tx_csseo_domain_model_evaluation` VALUES (1,1,1740045441,1740045441,0,0,0,0,'a:8:{s:11:\"Description\";a:2:{s:5:\"state\";i:0;s:5:\"count\";i:0;}s:6:\"Images\";a:5:{s:5:\"count\";i:3;s:8:\"altCount\";i:0;s:15:\"countWithoutAlt\";i:3;s:5:\"state\";i:0;s:6:\"images\";a:3:{i:0;s:51:\"/fileadmin/_processed_/d/2/csm_hero_24653906bd.avif\";i:1;s:76:\"/fileadmin/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_4555608e31.avif\";i:2;s:76:\"/fileadmin/_processed_/d/9/csm_pexels-pavel-danilyuk-8112136_f6c3f0efd6.avif\";}}s:7:\"Keyword\";a:2:{s:6:\"notSet\";i:1;s:5:\"state\";i:0;}s:5:\"Title\";a:2:{s:5:\"state\";i:1;s:5:\"count\";i:36;}s:2:\"H1\";a:2:{s:5:\"count\";i:1;s:5:\"state\";i:2;}s:2:\"H2\";a:2:{s:5:\"count\";i:1;s:5:\"state\";i:2;}s:12:\"HeadingOrder\";a:3:{s:5:\"count\";i:0;s:5:\"state\";i:2;s:8:\"headings\";a:4:{i:0;a:3:{s:4:\"text\";s:21:\"Mag. Andreas Schiestl\";s:5:\"level\";i:1;s:12:\"correctOrder\";b:1;}i:1;a:3:{s:4:\"text\";s:47:\"Auch Handschläge haben Qualitätsunterschiede.\";s:5:\"level\";i:2;s:12:\"correctOrder\";b:1;}i:2;a:3:{s:4:\"text\";s:25:\"Vertrauen durch Erfahrung\";s:5:\"level\";i:3;s:12:\"correctOrder\";b:1;}i:3;a:3:{s:4:\"text\";s:39:\"Ihr Ziel im Blick,\r\nIhr Recht im Fokus.\";s:5:\"level\";i:3;s:12:\"correctOrder\";b:1;}}}s:10:\"Percentage\";a:2:{s:5:\"state\";i:1;s:5:\"count\";i:50;}}','https://ra.netwerk.guru/',1,'pages');
/*!40000 ALTER TABLE `tx_csseo_domain_model_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_csseo_domain_model_meta`
--

DROP TABLE IF EXISTS `tx_csseo_domain_model_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_csseo_domain_model_meta` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `deleted` smallint unsigned NOT NULL DEFAULT '0',
  `hidden` smallint unsigned NOT NULL DEFAULT '0',
  `starttime` int unsigned NOT NULL DEFAULT '0',
  `endtime` int unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int NOT NULL DEFAULT '0',
  `l10n_parent` int unsigned NOT NULL DEFAULT '0',
  `l10n_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `l10n_diffsource` mediumblob DEFAULT (NULL),
  `t3ver_oid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_wsid` int unsigned NOT NULL DEFAULT '0',
  `t3ver_state` smallint NOT NULL DEFAULT '0',
  `t3ver_stage` int NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `title_only` smallint unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `canonical` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `no_index` smallint unsigned NOT NULL DEFAULT '0',
  `no_follow` smallint unsigned NOT NULL DEFAULT '0',
  `og_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `og_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `og_image` int unsigned NOT NULL DEFAULT '0',
  `tw_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tw_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `tw_image` int unsigned NOT NULL DEFAULT '0',
  `tw_creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tw_site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `json_ld` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `uid_foreign` int NOT NULL DEFAULT '0',
  `tablenames` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `remote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'ter',
  `version` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `serialized_dependencies` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `author_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `authorcompany` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `integer_version` int NOT NULL DEFAULT '0',
  `lastreviewedversion` int NOT NULL DEFAULT '0',
  `documentation_link` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `distribution_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `distribution_welcome_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `state` int unsigned NOT NULL DEFAULT '0',
  `category` int unsigned NOT NULL DEFAULT '0',
  `last_updated` bigint NOT NULL DEFAULT '0',
  `update_comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT (NULL),
  `current_version` smallint unsigned NOT NULL DEFAULT '0',
  `review_state` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0',
  `tstamp` int unsigned NOT NULL DEFAULT '0',
  `crdate` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `public` smallint NOT NULL DEFAULT '0',
  `item_uid` int NOT NULL DEFAULT '0',
  `user_uid` int unsigned NOT NULL DEFAULT '0',
  `preset_data` blob DEFAULT (NULL),
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_staticfilecache_queue`
--

DROP TABLE IF EXISTS `tx_staticfilecache_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_staticfilecache_queue` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `cache_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cache_priority` int NOT NULL DEFAULT '0',
  `page_uid` int NOT NULL DEFAULT '0',
  `invalid_date` int NOT NULL DEFAULT '0',
  `call_date` int NOT NULL DEFAULT '0',
  `call_result` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `call_date` (`call_date`,`cache_url`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_staticfilecache_queue`
--

LOCK TABLES `tx_staticfilecache_queue` WRITE;
/*!40000 ALTER TABLE `tx_staticfilecache_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_staticfilecache_queue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25 10:47:27
