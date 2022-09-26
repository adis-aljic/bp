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
-- Table structure for table `session_location`
--

DROP TABLE IF EXISTS `session_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_location` (
  `session_track_id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(100) DEFAULT NULL,
  `location_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`session_track_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `session_location_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_location`
--

LOCK TABLES `session_location` WRITE;
/*!40000 ALTER TABLE `session_location` DISABLE KEYS */;
INSERT INTO `session_location` VALUES (1,'2b21adaf-61a7-4a76-b8be-a820ecdcaa0e','f8cd93af-75a0-4b34-b224-128265145525'),(2,'080e3bf7-72d1-46cb-b1e8-e2fe4ec092e2','4d4ec8bb-704e-4693-bcec-8946c884faa1'),(3,'6fa4d40b-2d40-4bd6-8449-858f90141e7e','f8cd93af-75a0-4b34-b224-128265145525'),(4,'0fa35d3d-d721-4abf-b480-d628ec929bd3','9e617308-4058-49c4-bbd0-278c35bbde3f'),(5,'f7189f9e-bcaa-4d8b-81d3-6acb19748232','6f913aaf-0e56-47cc-ab1f-cbfa261b68fd'),(6,'b35544c5-2b18-4ddd-91bd-4fc257d2c06c','f8cd93af-75a0-4b34-b224-128265145525'),(7,'bb2ad60e-5385-4bad-9f41-3d512fbde8d8','6f913aaf-0e56-47cc-ab1f-cbfa261b68fd'),(8,'0ee83ea2-35fc-4f50-91c9-de7602bbf93b','d8b0578a-7c3a-4173-a6ed-450530c5223b'),(9,'84b7c252-cb0e-4eab-8539-8e2b9acdc9cd','4d4ec8bb-704e-4693-bcec-8946c884faa1'),(10,'5decf8ef-57f1-4d06-8325-5068629c9b5c','4d4ec8bb-704e-4693-bcec-8946c884faa1'),(11,'e22f7275-5cfa-4961-86dd-76281c7adc44','f8cd93af-75a0-4b34-b224-128265145525'),(12,'ddb2ca3e-ef92-4bed-b8a5-cb3b4bb35b75','9e617308-4058-49c4-bbd0-278c35bbde3f'),(13,'e0206eb4-180e-42b7-b430-3940926d5c82','6f913aaf-0e56-47cc-ab1f-cbfa261b68fd'),(14,'8173865d-2cd5-4d08-b0b2-956a6d9580ec','d8b0578a-7c3a-4173-a6ed-450530c5223b'),(15,'f372cc81-85b7-411a-a5ba-bbd3da7922cb','d8b0578a-7c3a-4173-a6ed-450530c5223b'),(16,'f511b781-8022-458d-8468-a1470bfc2607','9e617308-4058-49c4-bbd0-278c35bbde3f'),(17,'97bbf95b-6572-4916-a55f-aaf2b02bf4ad','4d4ec8bb-704e-4693-bcec-8946c884faa1'),(18,'bb6402ec-fa84-410a-8e57-23f46c5e3ca4','6f913aaf-0e56-47cc-ab1f-cbfa261b68fd'),(19,'9a2a73cd-d9b7-426c-a51a-73897b5a9993','d8b0578a-7c3a-4173-a6ed-450530c5223b'),(20,'95e0f4b1-c239-4556-b6fa-df0fdb7cdadf','9e617308-4058-49c4-bbd0-278c35bbde3f');
/*!40000 ALTER TABLE `session_location` ENABLE KEYS */;
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
