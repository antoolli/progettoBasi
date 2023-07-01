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
-- Table structure for table `prenotazione_storica`
--

DROP TABLE IF EXISTS `prenotazione_storica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenotazione_storica` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Ora_inizio` time NOT NULL,
  `Data` date NOT NULL,
  `Costo` double NOT NULL,
  `Durata` time NOT NULL,
  `Cliente` char(16) NOT NULL,
  `Campo` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Cliente` (`Cliente`),
  KEY `Campo` (`Campo`),
  CONSTRAINT `prenotazione_storica_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`CF`),
  CONSTRAINT `prenotazione_storica_ibfk_2` FOREIGN KEY (`Campo`) REFERENCES `campo` (`Nome`),
  CONSTRAINT `check_valore_costo_prenotazione_storica` CHECK ((`Costo` >= 0)),
  CONSTRAINT `check_valore_durata_prenotazione_storica` CHECK ((`Durata` >= 30))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazione_storica`
--

LOCK TABLES `prenotazione_storica` WRITE;
/*!40000 ALTER TABLE `prenotazione_storica` DISABLE KEYS */;
/*!40000 ALTER TABLE `prenotazione_storica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01  8:55:16
