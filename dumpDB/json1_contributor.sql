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
-- Table structure for table `contributor`
--

DROP TABLE IF EXISTS `contributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributor` (
  `contributor_id` varchar(500) NOT NULL,
  `honorific` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `postNominal` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `bio_HTML` varchar(1500) DEFAULT NULL,
  `headshotURL` varchar(500) DEFAULT NULL,
  `headshotx2URL` varchar(500) DEFAULT NULL,
  `notes` varchar(2000) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`contributor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor`
--

LOCK TABLES `contributor` WRITE;
/*!40000 ALTER TABLE `contributor` DISABLE KEYS */;
INSERT INTO `contributor` VALUES ('3533097a-3a58-40d6-a86f-34c4639b814f',NULL,'Sally','McNally','null','joe13@lineup.ninja','null','null','null','null','null','null','null','null','null','','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/e22a548b-0e0d-43cb-a9a3-807c392e091a','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/b27a4740-acb0-4fe9-b56f-548083ce1035','null','2022-09-06 17:38:36'),('976091d6-1892-409d-88f2-be33b12bd601',NULL,'Clare','O\'Hare','null','null','null','null','null','null','null','null','null','null','null','','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/1f09e3b9-fe5c-4683-944c-600b08c0c237','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/b82ff70a-f2fd-472a-b38d-7b10120cf048','null','2022-09-06 17:28:20'),('a12bfcd6-a652-4392-acee-5ea50f25ec2e',NULL,'Pops','Foster','null','joe12@lineup.ninja','null','null','null','null','null','null','null','null','null','','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/2b97ae08-7968-40b1-a9a4-041bbc52392d','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/96530a84-0d6a-4684-86a2-923868aca216','null','2022-09-06 17:31:10'),('a59c02af-2fcd-41b1-ad4f-e0ebae08121b',NULL,'Dexter','Capricorn','null','joe11@lineup.ninja','null','null','null','null','null','null','null','null','null','','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/be7e0f72-7460-4c2c-af71-679c5c52b224','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/d192e727-3a8b-4761-8ece-41205b1e9370','null','2022-09-06 17:39:21'),('d157bfc9-f956-42e6-8781-a745a31a71e6',NULL,'Bingo','Wiggins','null','joe10@lineup.ninja','null','null','null','null','null','null','null','null','null','','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/e4493586-d8d1-484f-b8b0-6238039afef2','https://user-content.live.lineup.ninja/team/2db4c228-df00-4733-a8c2-fee0192120ef/ugc/9b737145-b575-4ce1-a4cc-1fcde313bd35','null','2022-09-06 17:38:10');
/*!40000 ALTER TABLE `contributor` ENABLE KEYS */;
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
