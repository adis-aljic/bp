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
-- Table structure for table `location_join`
--

DROP TABLE IF EXISTS `location_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_join` (
  `location_join_id` int NOT NULL AUTO_INCREMENT,
  `location_id` varchar(500) DEFAULT NULL,
  `track_id` varchar(500) DEFAULT NULL,
  `label_id` varchar(500) DEFAULT NULL,
  `resource_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`location_join_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `location_join_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_join`
--

LOCK TABLES `location_join` WRITE;
/*!40000 ALTER TABLE `location_join` DISABLE KEYS */;
INSERT INTO `location_join` VALUES (1,'4d4ec8bb-704e-4693-bcec-8946c884faa1','97a60c23-050a-4704-84ba-9f1e9f0f5475',NULL,NULL),(2,'9e617308-4058-49c4-bbd0-278c35bbde3f','e067d3fa-693c-42aa-8844-09453056080b',NULL,NULL),(3,'6f913aaf-0e56-47cc-ab1f-cbfa261b68fd','a2a7e781-b26a-4edb-aee6-b6d8d69cb100',NULL,NULL),(4,'f8cd93af-75a0-4b34-b224-128265145525','5e7b28de-b17d-42bd-b2f6-60232d4d987e',NULL,NULL),(5,'d8b0578a-7c3a-4173-a6ed-450530c5223b','a2a7e781-b26a-4edb-aee6-b6d8d69cb100',NULL,NULL);
/*!40000 ALTER TABLE `location_join` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-26 22:47:55
