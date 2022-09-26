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
-- Table structure for table `track_session`
--

DROP TABLE IF EXISTS `track_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track_session` (
  `track_session_id` int NOT NULL AUTO_INCREMENT,
  `track_id` varchar(500) DEFAULT NULL,
  `session_id` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`track_session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_session`
--

LOCK TABLES `track_session` WRITE;
/*!40000 ALTER TABLE `track_session` DISABLE KEYS */;
INSERT INTO `track_session` VALUES (1,'5e7b28de-b17d-42bd-b2f6-60232d4d987e','2b21adaf-61a7-4a76-b8be-a820ecdcaa0e'),(2,'5e7b28de-b17d-42bd-b2f6-60232d4d987e','b35544c5-2b18-4ddd-91bd-4fc257d2c06c'),(3,'5e7b28de-b17d-42bd-b2f6-60232d4d987e','0ee83ea2-35fc-4f50-91c9-de7602bbf93b'),(4,'5e7b28de-b17d-42bd-b2f6-60232d4d987e','e22f7275-5cfa-4961-86dd-76281c7adc44'),(5,'97a60c23-050a-4704-84ba-9f1e9f0f5475','84b7c252-cb0e-4eab-8539-8e2b9acdc9cd'),(6,'97a60c23-050a-4704-84ba-9f1e9f0f5475','5decf8ef-57f1-4d06-8325-5068629c9b5c'),(7,'97a60c23-050a-4704-84ba-9f1e9f0f5475','97bbf95b-6572-4916-a55f-aaf2b02bf4ad'),(8,'97a60c23-050a-4704-84ba-9f1e9f0f5475','9a2a73cd-d9b7-426c-a51a-73897b5a9993'),(9,'e067d3fa-693c-42aa-8844-09453056080b','ddb2ca3e-ef92-4bed-b8a5-cb3b4bb35b75'),(10,'e067d3fa-693c-42aa-8844-09453056080b','8173865d-2cd5-4d08-b0b2-956a6d9580ec'),(11,'e067d3fa-693c-42aa-8844-09453056080b','f511b781-8022-458d-8468-a1470bfc2607'),(12,'e067d3fa-693c-42aa-8844-09453056080b','95e0f4b1-c239-4556-b6fa-df0fdb7cdadf'),(13,'a2a7e781-b26a-4edb-aee6-b6d8d69cb100','bb2ad60e-5385-4bad-9f41-3d512fbde8d8'),(14,'a2a7e781-b26a-4edb-aee6-b6d8d69cb100','e0206eb4-180e-42b7-b430-3940926d5c82'),(15,'a2a7e781-b26a-4edb-aee6-b6d8d69cb100','f372cc81-85b7-411a-a5ba-bbd3da7922cb'),(16,'a2a7e781-b26a-4edb-aee6-b6d8d69cb100','bb6402ec-fa84-410a-8e57-23f46c5e3ca4');
/*!40000 ALTER TABLE `track_session` ENABLE KEYS */;
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
