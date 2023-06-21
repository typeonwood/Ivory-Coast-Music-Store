-- MySQL dump 10.13  Distrib 8.0.33, for macos12.6 (arm64)
--
-- Host: localhost    Database: ivory_coast
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Current Database: `ivory_coast`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ivory_coast` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ivory_coast`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Token',7,'add_token'),(26,'Can change Token',7,'change_token'),(27,'Can delete Token',7,'delete_token'),(28,'Can view Token',7,'view_token'),(29,'Can add token',8,'add_tokenproxy'),(30,'Can change token',8,'change_tokenproxy'),(31,'Can delete token',8,'delete_tokenproxy'),(32,'Can view token',8,'view_tokenproxy'),(33,'Can add store',9,'add_store'),(34,'Can change store',9,'change_store'),(35,'Can delete store',9,'delete_store'),(36,'Can view store',9,'view_store'),(37,'Can add store item',9,'add_storeitem'),(38,'Can change store item',9,'change_storeitem'),(39,'Can delete store item',9,'delete_storeitem'),(40,'Can view store item',9,'view_storeitem'),(41,'Can add trial booking',10,'add_trialbooking'),(42,'Can change trial booking',10,'change_trialbooking'),(43,'Can delete trial booking',10,'delete_trialbooking'),(44,'Can view trial booking',10,'view_trialbooking'),(45,'Can add month',11,'add_month'),(46,'Can change month',11,'change_month'),(47,'Can delete month',11,'delete_month'),(48,'Can view month',11,'view_month'),(49,'Can add event',12,'add_event'),(50,'Can change event',12,'change_event'),(51,'Can delete event',12,'delete_event'),(52,'Can view event',12,'view_event'),(53,'Can add venue',13,'add_venue'),(54,'Can change venue',13,'change_venue'),(55,'Can delete venue',13,'delete_venue'),(56,'Can view venue',13,'view_venue');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$afLprspcdskHQGY4BfYXvS$cGyxwzewgwj6GJqLErbqlgdkGOdu70RBmIZLc2A35UM=','2023-06-19 23:20:50.310963',1,'testuser','','','test@us.er',1,1,'2023-06-19 23:20:25.515287'),(2,'pbkdf2_sha256$600000$0sOoMnx7k6ZHn4Bu7IbiIy$2o6Hl45Ong62lC227b3H7FKiQ7UO0IEQmD79ifywL6Y=',NULL,0,'bettycrocker','','','',0,1,'2023-06-21 20:56:30.918652');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-06-19 23:21:38.941481','1','Large Grand Piano',1,'[{\"added\": {}}]',9,1),(2,'2023-06-19 23:21:45.260848','1','Large Grand Piano',2,'[]',9,1),(3,'2023-06-19 23:22:06.853084','2','Kids Guitar',1,'[{\"added\": {}}]',9,1),(4,'2023-06-19 23:22:29.251474','3','Acoustic Guitar',1,'[{\"added\": {}}]',9,1),(5,'2023-06-20 04:44:37.413812','4','Kick Drum With Pedal',1,'[{\"added\": {}}]',9,1),(6,'2023-06-20 06:55:29.063528','1','Month object (1)',1,'[{\"added\": {}}]',11,1),(7,'2023-06-20 06:59:50.278518','1','Church of the Old Baby',1,'[{\"added\": {}}]',13,1),(8,'2023-06-20 23:04:18.755070','1','Music party',1,'[{\"added\": {}}]',12,1),(9,'2023-06-21 02:12:16.529590','3','Acoustic Guitar',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',9,1),(10,'2023-06-21 02:12:19.529991','2','Kids Guitar',2,'[{\"changed\": {\"fields\": [\"Featured\"]}}]',9,1),(11,'2023-06-21 17:21:51.056445','2','Fancy banquet',1,'[{\"added\": {}}]',12,1),(12,'2023-06-21 19:29:15.440710','2','Young People Against Vacuums',1,'[{\"added\": {}}]',13,1),(13,'2023-06-21 19:29:39.442575','3','Vacuum hating party',1,'[{\"added\": {}}]',12,1),(14,'2023-06-21 19:30:22.675200','4','Spring recital',1,'[{\"added\": {}}]',12,1),(15,'2023-06-21 20:44:51.067374','1','Some Gracious Church',2,'[{\"changed\": {\"fields\": [\"Name\", \"Address\"]}}]',13,1),(16,'2023-06-21 20:46:14.173387','2','Best Quality Vacuum',2,'[{\"changed\": {\"fields\": [\"Name\", \"Address\"]}}]',13,1),(17,'2023-06-21 20:46:23.272209','4','Spring recital',2,'[]',12,1),(18,'2023-06-21 20:46:49.456138','3','Musical Vacuum Celebration',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(19,'2023-06-21 20:47:13.456846','2','Fancy banquet',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',12,1),(20,'2023-06-21 20:48:13.622940','1','Music party',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',12,1),(21,'2023-06-21 20:48:53.820662','1','TrialBooking object (1)',1,'[{\"added\": {}}]',10,1),(22,'2023-06-21 20:51:25.958969','1','Large Grand Piano',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',9,1),(23,'2023-06-21 20:52:13.465506','2','Kids Guitar',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',9,1),(24,'2023-06-21 20:53:25.959933','3','Acoustic Guitar',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',9,1),(25,'2023-06-21 20:54:15.658495','4','Standard Drum Set',2,'[{\"changed\": {\"fields\": [\"Title\", \"Price\", \"Description\"]}}]',9,1),(26,'2023-06-21 20:55:22.008229','5','Guitar Strings',1,'[{\"added\": {}}]',9,1),(27,'2023-06-21 20:55:49.974046','6','Better Guitar Strings',1,'[{\"added\": {}}]',9,1),(28,'2023-06-21 20:56:31.065530','2','bettycrocker',1,'[{\"added\": {}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'authtoken','token'),(8,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(12,'lessons','event'),(11,'lessons','month'),(10,'lessons','trialbooking'),(13,'lessons','venue'),(6,'sessions','session'),(9,'store','storeitem');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-06-19 22:10:51.385799'),(2,'auth','0001_initial','2023-06-19 22:10:51.512123'),(3,'admin','0001_initial','2023-06-19 22:10:51.537664'),(4,'admin','0002_logentry_remove_auto_add','2023-06-19 22:10:51.541027'),(5,'admin','0003_logentry_add_action_flag_choices','2023-06-19 22:10:51.551015'),(6,'contenttypes','0002_remove_content_type_name','2023-06-19 22:10:51.570065'),(7,'auth','0002_alter_permission_name_max_length','2023-06-19 22:10:51.581467'),(8,'auth','0003_alter_user_email_max_length','2023-06-19 22:10:51.589958'),(9,'auth','0004_alter_user_username_opts','2023-06-19 22:10:51.592853'),(10,'auth','0005_alter_user_last_login_null','2023-06-19 22:10:51.604543'),(11,'auth','0006_require_contenttypes_0002','2023-06-19 22:10:51.605459'),(12,'auth','0007_alter_validators_add_error_messages','2023-06-19 22:10:51.608136'),(13,'auth','0008_alter_user_username_max_length','2023-06-19 22:10:51.621865'),(14,'auth','0009_alter_user_last_name_max_length','2023-06-19 22:10:51.636365'),(15,'auth','0010_alter_group_name_max_length','2023-06-19 22:10:51.642310'),(16,'auth','0011_update_proxy_permissions','2023-06-19 22:10:51.645202'),(17,'auth','0012_alter_user_first_name_max_length','2023-06-19 22:10:51.658482'),(18,'sessions','0001_initial','2023-06-19 22:10:51.664467'),(19,'authtoken','0001_initial','2023-06-19 23:18:02.576794'),(20,'authtoken','0002_auto_20160226_1747','2023-06-19 23:18:02.589246'),(21,'authtoken','0003_tokenproxy','2023-06-19 23:18:02.591535'),(22,'store','0001_initial','2023-06-19 23:18:02.604266'),(23,'store','0002_rename_store_storeitem','2023-06-20 04:43:38.018375'),(24,'lessons','0001_initial','2023-06-20 06:38:28.943711'),(25,'lessons','0002_alter_venue_phone','2023-06-20 06:58:50.542359'),(26,'lessons','0003_alter_venue_phone','2023-06-20 06:59:46.076675'),(27,'lessons','0004_event_featured','2023-06-21 02:06:10.925609'),(28,'lessons','0005_remove_event_featured','2023-06-21 02:07:01.913681'),(29,'store','0003_storeitem_featured','2023-06-21 02:11:45.293214'),(30,'lessons','0006_remove_event_month_delete_month','2023-06-21 16:42:14.396666');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('pwcbl4ak084e3w3nxe818wynswsl0v5a','.eJxVjMEOwiAQBf-FsyFAgQWP3v0GAuwiVQNJaU_Gf9cmPej1zcx7sRC3tYZt0BJmZGcm2el3SzE_qO0A77HdOs-9rcuc-K7wgw5-7UjPy-H-HdQ46rcWSsCElJVJIIqevNJaOSjSgUbw1umSLOVkrASH2ss4GbLosgVrkAR7fwC4vTb_:1qBOB0:9kqcNQpx2BlDfrM6x0QqjjRmTZ6O3VQHrNTJcOX3IKY','2023-07-03 23:20:50.312187');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons_event`
--

DROP TABLE IF EXISTS `lessons_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons_event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `description` varchar(255) NOT NULL,
  `venue_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lessons_event_venue_id_278612f4_fk_lessons_venue_id` (`venue_id`),
  CONSTRAINT `lessons_event_venue_id_278612f4_fk_lessons_venue_id` FOREIGN KEY (`venue_id`) REFERENCES `lessons_venue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons_event`
--

LOCK TABLES `lessons_event` WRITE;
/*!40000 ALTER TABLE `lessons_event` DISABLE KEYS */;
INSERT INTO `lessons_event` VALUES (1,'Music party','2023-06-21','18:00:00.000000','We\'re gonna have the best vibes here. There will be food, music, crafts, and music! BYO disco ball.',1),(2,'Fancy banquet','2023-08-16','18:00:00.000000','Dress in your fanciest clothes while we play you our most pretentious music!',1),(3,'Musical Vacuum Celebration','2023-06-29','18:00:00.000000','Vacuums make awesome music. Come join us as we celebrate them!!',2),(4,'Spring recital','2023-06-30','10:00:00.000000','I promise it\'ll be short this time...',2);
/*!40000 ALTER TABLE `lessons_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons_trialbooking`
--

DROP TABLE IF EXISTS `lessons_trialbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons_trialbooking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student` varchar(255) NOT NULL,
  `minor` tinyint(1) NOT NULL,
  `guardian` varchar(255) NOT NULL,
  `instrument` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons_trialbooking`
--

LOCK TABLES `lessons_trialbooking` WRITE;
/*!40000 ALTER TABLE `lessons_trialbooking` DISABLE KEYS */;
INSERT INTO `lessons_trialbooking` VALUES (1,'Martha',1,'Also Martha','Bassoon','2023-06-13','10:00:00.000000');
/*!40000 ALTER TABLE `lessons_trialbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons_venue`
--

DROP TABLE IF EXISTS `lessons_venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons_venue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `lessons_venue_chk_1` CHECK ((`phone` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons_venue`
--

LOCK TABLES `lessons_venue` WRITE;
/*!40000 ALTER TABLE `lessons_venue` DISABLE KEYS */;
INSERT INTO `lessons_venue` VALUES (1,'Some Gracious Church','123 Cool Church St',9168689193),(2,'Best Quality Vacuum','2714 4th St NW',9167870987);
/*!40000 ALTER TABLE `lessons_venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_storeitem`
--

DROP TABLE IF EXISTS `store_storeitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_storeitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` longtext NOT NULL,
  `inventory` smallint NOT NULL,
  `featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_storeitem`
--

LOCK TABLES `store_storeitem` WRITE;
/*!40000 ALTER TABLE `store_storeitem` DISABLE KEYS */;
INSERT INTO `store_storeitem` VALUES (1,'Large Grand Piano',75000.00,'Large and pretty grand piano. I can\'t afford it. Can you?',2,0),(2,'Kids Guitar',80.00,'Cheap combination of plastic and wood that will outlast us all',5,1),(3,'Acoustic Guitar',300.00,'Great guitar. Sounds mediocre, but won\'t splinter into a thousand pieces if the humidity drops by 10%',6,1),(4,'Standard Drum Set',2000.00,'Soundproof garage and noise-canceling headphones not included.',4,0),(5,'Guitar Strings',7.00,'Decent enough, but if you have sweaty hands they\'ll rust in a day.',16,1),(6,'Better Guitar Strings',13.00,'Great if you don\'t like changing strings every 3 weeks',11,1);
/*!40000 ALTER TABLE `store_storeitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-21 14:26:21
