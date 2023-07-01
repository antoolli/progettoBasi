-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fitnessclub
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `spogliatoio`
--

DROP TABLE IF EXISTS `spogliatoio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spogliatoio` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Nome_campo` varchar(30) DEFAULT NULL,
  `Nome_sala` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Nome_campo` (`Nome_campo`),
  KEY `Nome_sala` (`Nome_sala`),
  CONSTRAINT `spogliatoio_ibfk_1` FOREIGN KEY (`Nome_campo`) REFERENCES `campo` (`Nome`),
  CONSTRAINT `spogliatoio_ibfk_2` FOREIGN KEY (`Nome_sala`) REFERENCES `sala` (`Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spogliatoio`
--

LOCK TABLES `spogliatoio` WRITE;
/*!40000 ALTER TABLE `spogliatoio` DISABLE KEYS */;
INSERT INTO `spogliatoio` VALUES (1,NULL,'Sala  2A'),(2,NULL,'SALA 1A'),(3,NULL,'Sala 1b'),(4,NULL,'Sala 2B'),(5,NULL,'SALA 3A'),(6,NULL,'Sala 3B'),(7,'Campo C1',NULL),(8,'Campo C2',NULL),(9,'Campo C3',NULL);
/*!40000 ALTER TABLE `spogliatoio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01  8:55:17
