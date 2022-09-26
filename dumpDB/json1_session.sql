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
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `session_id` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `code` varchar(20) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `description_HTML` varchar(100) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('080e3bf7-72d1-46cb-b1e8-e2fe4ec092e2','Sponsored session 5','ss5','null','','2021-09-22 10:00:00','2021-09-22 10:30:00',1800000,'null','2020-06-19 00:52:04'),('0ee83ea2-35fc-4f50-91c9-de7602bbf93b','Keynote 2','kn2','null','','2021-09-21 15:00:00','2021-09-21 15:30:00',1800000,'null','2022-09-06 17:39:22'),('0fa35d3d-d721-4abf-b480-d628ec929bd3','Sponsored session 7','ss7','null','','2021-09-22 10:00:00','2021-09-22 10:30:00',1800000,'null','2020-06-19 00:52:00'),('2b21adaf-61a7-4a76-b8be-a820ecdcaa0e','Sponsored session 2','ss2','null','','2021-09-21 10:00:00','2021-09-21 10:30:00',1800000,'null','2022-09-06 17:39:22'),('5decf8ef-57f1-4d06-8325-5068629c9b5c','Editorial Session 1','es1','null','','2021-09-21 09:00:00','2021-09-21 09:30:00',1800000,'null','2022-09-06 17:38:10'),('6fa4d40b-2d40-4bd6-8449-858f90141e7e','Sponsored session 6','ss6','null','','2021-09-22 10:00:00','2021-09-22 10:30:00',1800000,'null','2020-06-19 00:52:01'),('8173865d-2cd5-4d08-b0b2-956a6d9580ec','keynote 3','kn3','null','','2021-09-22 11:00:00','2021-09-22 11:30:00',1800000,'null','2022-09-06 17:31:10'),('84b7c252-cb0e-4eab-8539-8e2b9acdc9cd','Editorial Session 2','es2','null','','2021-09-22 09:00:00','2021-09-22 09:30:00',1800000,'null','2022-09-06 17:38:10'),('95e0f4b1-c239-4556-b6fa-df0fdb7cdadf','Editorial Session 6','es6','null','','2021-09-22 09:00:00','2021-09-22 09:30:00',1800000,'null','2022-09-06 17:28:20'),('97bbf95b-6572-4916-a55f-aaf2b02bf4ad','Sponsored session 1','ss1','null','','2021-09-21 10:00:00','2021-09-21 10:30:00',1800000,'null','2022-09-06 17:38:10'),('9a2a73cd-d9b7-426c-a51a-73897b5a9993','Keynote 1','kn1','null','','2021-09-21 11:00:00','2021-09-21 11:30:00',1800000,'null','2022-09-06 17:38:37'),('b35544c5-2b18-4ddd-91bd-4fc257d2c06c','Editorial Session 3','es3','null','','2021-09-21 09:00:00','2021-09-21 09:30:00',1800000,'null','2022-09-06 17:38:37'),('bb2ad60e-5385-4bad-9f41-3d512fbde8d8','Editorial Session 7','es7','null','','2021-09-21 09:00:00','2021-09-21 09:30:00',1800000,'null','2022-09-06 17:31:10'),('bb6402ec-fa84-410a-8e57-23f46c5e3ca4','Sponsored session 4','ss4','null','','2021-09-21 10:00:00','2021-09-21 10:30:00',1800000,'null','2022-09-06 17:38:37'),('ddb2ca3e-ef92-4bed-b8a5-cb3b4bb35b75','Editorial Session 5','es5','null','','2021-09-21 09:00:00','2021-09-21 09:30:00',1800000,'null','2022-09-06 17:39:22'),('e0206eb4-180e-42b7-b430-3940926d5c82','Editorial Session 8','es8','null','','2021-09-22 09:00:00','2021-09-22 09:30:00',1800000,'null','2022-09-06 17:39:22'),('e22f7275-5cfa-4961-86dd-76281c7adc44','Editorial Session 4','es4','null','','2021-09-22 09:00:00','2021-09-22 09:30:00',1800000,'null','2022-09-06 17:38:37'),('f372cc81-85b7-411a-a5ba-bbd3da7922cb','keynote 4','kn4','null','','2021-09-22 15:00:00','2021-09-22 15:30:00',1800000,'null','2022-09-06 17:38:37'),('f511b781-8022-458d-8468-a1470bfc2607','Sponsored session 3','ss3','null','','2021-09-21 10:00:00','2021-09-21 10:30:00',1800000,'null','2022-09-06 17:31:10'),('f7189f9e-bcaa-4d8b-81d3-6acb19748232','Sponsored session 8','ss8','null','','2021-09-22 10:00:00','2021-09-22 10:30:00',1800000,'null','2022-09-06 17:28:20');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 22:47:56
