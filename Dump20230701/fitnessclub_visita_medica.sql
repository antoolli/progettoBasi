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
-- Table structure for table `visita_medica`
--

DROP TABLE IF EXISTS `visita_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visita_medica` (
  `Cliente` char(16) NOT NULL,
  `Medico` char(16) NOT NULL,
  `Data` date NOT NULL,
  `Durata_validita` int unsigned NOT NULL,
  `Validita` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Cliente`,`Medico`,`Data`),
  KEY `Medico` (`Medico`),
  CONSTRAINT `visita_medica_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`CF`) ON DELETE CASCADE,
  CONSTRAINT `visita_medica_ibfk_2` FOREIGN KEY (`Medico`) REFERENCES `medico` (`CF`) ON DELETE CASCADE,
  CONSTRAINT `check_durata_validita_visita_medica` CHECK (((`Durata_validita` >= 30) and (`Durata_validita` <= 365)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita_medica`
--

LOCK TABLES `visita_medica` WRITE;
/*!40000 ALTER TABLE `visita_medica` DISABLE KEYS */;
INSERT INTO `visita_medica` VALUES ('ccactr01l34i098e','grarca00l23t122h','2023-02-06',50,_binary ''),('flbcrm02n24c122g','grarca00l23t122h','2023-05-06',200,_binary ''),('gllgla23m45n325l','grarca00l23t122h','2023-05-07',150,_binary ''),('mrcrst01l34f122e','lvrnnd00m29d122r','2023-01-08',300,_binary '');
/*!40000 ALTER TABLE `visita_medica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01  8:55:15
