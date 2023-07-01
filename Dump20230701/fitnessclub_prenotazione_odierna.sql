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
-- Table structure for table `prenotazione_odierna`
--

DROP TABLE IF EXISTS `prenotazione_odierna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenotazione_odierna` (
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
  CONSTRAINT `prenotazione_odierna_ibfk_1` FOREIGN KEY (`Cliente`) REFERENCES `cliente` (`CF`),
  CONSTRAINT `prenotazione_odierna_ibfk_2` FOREIGN KEY (`Campo`) REFERENCES `campo` (`Nome`),
  CONSTRAINT `check_valore_costo_prenotazione_odierna` CHECK ((`Costo` >= 0)),
  CONSTRAINT `check_valore_durata_prenotazione_odierna` CHECK ((`Durata` >= 30))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazione_odierna`
--

LOCK TABLES `prenotazione_odierna` WRITE;
/*!40000 ALTER TABLE `prenotazione_odierna` DISABLE KEYS */;
INSERT INTO `prenotazione_odierna` VALUES (1,'08:30:00','2023-03-08',3,'00:01:30','mrcrst01l34f122e','Campo C3'),(2,'09:30:00','2023-03-09',2,'00:01:00','mrcrst01l34f122e','Campo P1'),(5,'19:30:10','2023-03-08',2,'00:00:30','flbcrm02n24c122g','Campo P1'),(6,'20:00:00','2023-03-10',4,'00:01:30','pctlsa98k08o122q','Campo T1'),(7,'10:00:00','2023-03-10',3,'00:01:30','mtslvr03n24c122h','Campo C3'),(8,'09:30:00','2023-03-11',4,'00:02:30','pctlsa98k08o122q','Campo T1'),(9,'10:30:00','2023-05-05',2,'00:00:30','lvrnnd00m29d122r','Campo P1');
/*!40000 ALTER TABLE `prenotazione_odierna` ENABLE KEYS */;
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
