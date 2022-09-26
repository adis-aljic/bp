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
-- Table structure for table `session_contributor`
--

DROP TABLE IF EXISTS `session_contributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_contributor` (
  `session_contributor_id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(500) DEFAULT NULL,
  `contributor_id` varchar(500) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`session_contributor_id`),
  KEY `session_id` (`session_id`),
  KEY `contributor_id` (`contributor_id`),
  CONSTRAINT `session_contributor_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `session_contributor_ibfk_2` FOREIGN KEY (`contributor_id`) REFERENCES `contributor` (`contributor_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_contributor`
--

LOCK TABLES `session_contributor` WRITE;
/*!40000 ALTER TABLE `session_contributor` DISABLE KEYS */;
INSERT INTO `session_contributor` VALUES (1,'2b21adaf-61a7-4a76-b8be-a820ecdcaa0e','a59c02af-2fcd-41b1-ad4f-e0ebae08121b',NULL),(2,'f7189f9e-bcaa-4d8b-81d3-6acb19748232','976091d6-1892-409d-88f2-be33b12bd601',NULL),(3,'b35544c5-2b18-4ddd-91bd-4fc257d2c06c','3533097a-3a58-40d6-a86f-34c4639b814f',NULL),(4,'bb2ad60e-5385-4bad-9f41-3d512fbde8d8','a12bfcd6-a652-4392-acee-5ea50f25ec2e',NULL),(5,'0ee83ea2-35fc-4f50-91c9-de7602bbf93b','a59c02af-2fcd-41b1-ad4f-e0ebae08121b',NULL),(6,'0ee83ea2-35fc-4f50-91c9-de7602bbf93b','a12bfcd6-a652-4392-acee-5ea50f25ec2e',NULL),(7,'84b7c252-cb0e-4eab-8539-8e2b9acdc9cd','a12bfcd6-a652-4392-acee-5ea50f25ec2e',NULL),(8,'84b7c252-cb0e-4eab-8539-8e2b9acdc9cd','d157bfc9-f956-42e6-8781-a745a31a71e6',NULL),(9,'5decf8ef-57f1-4d06-8325-5068629c9b5c','d157bfc9-f956-42e6-8781-a745a31a71e6',NULL),(10,'e22f7275-5cfa-4961-86dd-76281c7adc44','3533097a-3a58-40d6-a86f-34c4639b814f',NULL),(11,'ddb2ca3e-ef92-4bed-b8a5-cb3b4bb35b75','a59c02af-2fcd-41b1-ad4f-e0ebae08121b',NULL),(12,'e0206eb4-180e-42b7-b430-3940926d5c82','a59c02af-2fcd-41b1-ad4f-e0ebae08121b',NULL),(13,'8173865d-2cd5-4d08-b0b2-956a6d9580ec','a12bfcd6-a652-4392-acee-5ea50f25ec2e',NULL),(14,'f372cc81-85b7-411a-a5ba-bbd3da7922cb','3533097a-3a58-40d6-a86f-34c4639b814f',NULL),(15,'f511b781-8022-458d-8468-a1470bfc2607','a12bfcd6-a652-4392-acee-5ea50f25ec2e',NULL),(16,'97bbf95b-6572-4916-a55f-aaf2b02bf4ad','d157bfc9-f956-42e6-8781-a745a31a71e6',NULL),(17,'bb6402ec-fa84-410a-8e57-23f46c5e3ca4','3533097a-3a58-40d6-a86f-34c4639b814f',NULL),(18,'9a2a73cd-d9b7-426c-a51a-73897b5a9993','d157bfc9-f956-42e6-8781-a745a31a71e6',NULL),(19,'9a2a73cd-d9b7-426c-a51a-73897b5a9993','a12bfcd6-a652-4392-acee-5ea50f25ec2e',NULL),(20,'9a2a73cd-d9b7-426c-a51a-73897b5a9993','3533097a-3a58-40d6-a86f-34c4639b814f',NULL),(21,'9a2a73cd-d9b7-426c-a51a-73897b5a9993','976091d6-1892-409d-88f2-be33b12bd601',NULL),(22,'95e0f4b1-c239-4556-b6fa-df0fdb7cdadf','976091d6-1892-409d-88f2-be33b12bd601',NULL);
/*!40000 ALTER TABLE `session_contributor` ENABLE KEYS */;
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
