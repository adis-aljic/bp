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
-- Table structure for table `location_availability`
--

DROP TABLE IF EXISTS `location_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_availability` (
  `location_availability_id` int NOT NULL AUTO_INCREMENT,
  `location_id` varchar(500) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`location_availability_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `location_availability_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_availability`
--

LOCK TABLES `location_availability` WRITE;
/*!40000 ALTER TABLE `location_availability` DISABLE KEYS */;
INSERT INTO `location_availability` VALUES (1,'4d4ec8bb-704e-4693-bcec-8946c884faa1','2021-09-22 08:00:00','2021-09-22 16:00:00'),(2,'4d4ec8bb-704e-4693-bcec-8946c884faa1','2021-09-21 08:00:00','2021-09-21 16:00:00'),(3,'9e617308-4058-49c4-bbd0-278c35bbde3f','2021-09-22 08:00:00','2021-09-22 16:00:00'),(4,'9e617308-4058-49c4-bbd0-278c35bbde3f','2021-09-21 08:00:00','2021-09-21 16:00:00'),(5,'6f913aaf-0e56-47cc-ab1f-cbfa261b68fd','2021-09-22 08:00:00','2021-09-22 16:00:00'),(6,'6f913aaf-0e56-47cc-ab1f-cbfa261b68fd','2021-09-21 08:00:00','2021-09-21 16:00:00'),(7,'f8cd93af-75a0-4b34-b224-128265145525','2021-09-22 08:00:00','2021-09-22 16:00:00'),(8,'f8cd93af-75a0-4b34-b224-128265145525','2021-09-21 08:00:00','2021-09-21 16:00:00'),(9,'d8b0578a-7c3a-4173-a6ed-450530c5223b','2021-09-22 08:00:00','2021-09-22 16:00:00'),(10,'d8b0578a-7c3a-4173-a6ed-450530c5223b','2021-09-21 08:00:00','2021-09-21 16:00:00');
/*!40000 ALTER TABLE `location_availability` ENABLE KEYS */;
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
