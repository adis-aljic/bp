-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: json1
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `label_id` varchar(500) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `description_html` varchar(500) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `location_join_id` int DEFAULT NULL,
  PRIMARY KEY (`label_id`),
  KEY `location_join_id` (`location_join_id`),
  CONSTRAINT `label_ibfk_1` FOREIGN KEY (`location_join_id`) REFERENCES `location_join` (`location_join_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
INSERT INTO `label` VALUES ('01cc437d-d861-47e1-9ddf-8544ae8ee738','Food allergy','null','','2021-03-25 12:52:33',NULL),('0b28279d-f79e-4013-8dd7-66ca2637d440','Follow up speaker agreement query','null','','2021-03-25 12:52:11',NULL),('2761ac6d-3540-466a-babc-644c156caa93','Registered`label_id` = \'2761ac6d-3540-466a-babc-644c156caa93\', `name` = \'Registered?\', `description` = NULL, `description_HTML` = \'\', `last_modified` = \'2021-03-25 12:52:52.456\'','null','','2021-03-25 12:52:52',NULL),('460dc634-da30-4f2f-bc2e-2e20bfdd35ee','EMEA','null','','2021-04-27 12:21:53',NULL),('ca56b13d-cbe1-4732-a8c4-5bb396bef4ee','Disclosure`label_id` = \'ca56b13d-cbe1-4732-a8c4-5bb396bef4ee\', `name` = \'Disclosure?\', `description` = NULL, `description_HTML` = \'\', `last_modified` = \'2021-03-25 12:53:57.888\'','null','','2021-03-25 12:53:58',NULL),('f2bb162c-998c-4168-b14b-bf2f6192b22c','Intellectual Property Release received`label_id` = \'f2bb162c-998c-4168-b14b-bf2f6192b22c\', `name` = \'Intellectual Property Release received?\', `description` = NULL, `description_HTML` = \'\', `last_modified` = \'2021-03-25 12:53:36.409\'','null','','2021-03-25 12:53:36',NULL);
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 22:47:57
