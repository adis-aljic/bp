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
-- Table structure for table `contributor_availability`
--

DROP TABLE IF EXISTS `contributor_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributor_availability` (
  `availability_contributor_id` int NOT NULL AUTO_INCREMENT,
  `contributor_id` varchar(500) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`availability_contributor_id`),
  KEY `contributor_id` (`contributor_id`),
  CONSTRAINT `contributor_availability_ibfk_1` FOREIGN KEY (`contributor_id`) REFERENCES `contributor` (`contributor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor_availability`
--

LOCK TABLES `contributor_availability` WRITE;
/*!40000 ALTER TABLE `contributor_availability` DISABLE KEYS */;
INSERT INTO `contributor_availability` VALUES (1,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2021-09-21 08:00:00','2021-09-21 16:00:00'),(2,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2021-09-22 08:00:00','2021-09-22 16:00:00'),(3,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2021-09-23 08:00:00','2021-09-23 16:00:00'),(4,'a59c02af-2fcd-41b1-ad4f-e0ebae08121b','2021-09-24 08:00:00','2021-09-24 16:00:00'),(5,'3533097a-3a58-40d6-a86f-34c4639b814f','2021-09-21 08:00:00','2021-09-21 16:00:00'),(6,'3533097a-3a58-40d6-a86f-34c4639b814f','2021-09-22 08:00:00','2021-09-22 16:00:00'),(7,'3533097a-3a58-40d6-a86f-34c4639b814f','2021-09-23 08:00:00','2021-09-23 16:00:00'),(8,'3533097a-3a58-40d6-a86f-34c4639b814f','2021-09-24 08:00:00','2021-09-24 16:00:00'),(9,'d157bfc9-f956-42e6-8781-a745a31a71e6','2021-09-21 08:00:00','2021-09-21 16:00:00'),(10,'d157bfc9-f956-42e6-8781-a745a31a71e6','2021-09-22 08:00:00','2021-09-22 16:00:00'),(11,'d157bfc9-f956-42e6-8781-a745a31a71e6','2021-09-23 08:00:00','2021-09-23 16:00:00'),(12,'d157bfc9-f956-42e6-8781-a745a31a71e6','2021-09-24 08:00:00','2021-09-24 16:00:00'),(13,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','2021-09-21 08:00:00','2021-09-21 16:00:00'),(14,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','2021-09-22 08:00:00','2021-09-22 16:00:00'),(15,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','2021-09-23 08:00:00','2021-09-23 16:00:00'),(16,'a12bfcd6-a652-4392-acee-5ea50f25ec2e','2021-09-24 08:00:00','2021-09-24 16:00:00'),(17,'976091d6-1892-409d-88f2-be33b12bd601','2021-09-21 08:00:00','2021-09-21 16:00:00'),(18,'976091d6-1892-409d-88f2-be33b12bd601','2021-09-22 08:00:00','2021-09-22 16:00:00'),(19,'976091d6-1892-409d-88f2-be33b12bd601','2021-09-23 08:00:00','2021-09-23 16:00:00'),(20,'976091d6-1892-409d-88f2-be33b12bd601','2021-09-24 08:00:00','2021-09-24 16:00:00');
/*!40000 ALTER TABLE `contributor_availability` ENABLE KEYS */;
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