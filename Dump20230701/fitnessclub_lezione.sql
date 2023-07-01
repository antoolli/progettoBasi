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
-- Table structure for table `lezione`
--

DROP TABLE IF EXISTS `lezione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lezione` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Durata` time NOT NULL,
  `Giorno_settimanale` int NOT NULL,
  `Ora_inizio` time NOT NULL,
  `Nome_campo` varchar(30) DEFAULT NULL,
  `Nome_sala` varchar(30) DEFAULT NULL,
  `Attivita_sportiva` varchar(30) NOT NULL,
  `Istruttore` char(16) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Nome_campo` (`Nome_campo`),
  KEY `Nome_sala` (`Nome_sala`),
  KEY `Attivita_sportiva` (`Attivita_sportiva`),
  KEY `Istruttore` (`Istruttore`),
  CONSTRAINT `lezione_ibfk_1` FOREIGN KEY (`Nome_campo`) REFERENCES `campo` (`Nome`),
  CONSTRAINT `lezione_ibfk_2` FOREIGN KEY (`Nome_sala`) REFERENCES `sala` (`Nome`),
  CONSTRAINT `lezione_ibfk_3` FOREIGN KEY (`Attivita_sportiva`) REFERENCES `attivita_sportiva` (`Nome`),
  CONSTRAINT `lezione_ibfk_4` FOREIGN KEY (`Istruttore`) REFERENCES `istruttore` (`CF`),
  CONSTRAINT `check_giorno_settimanale` CHECK ((`Giorno_settimanale` in (1,2,3,4,5,6,7))),
  CONSTRAINT `check_valore_durata` CHECK ((`Durata` >= 30))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lezione`
--

LOCK TABLES `lezione` WRITE;
/*!40000 ALTER TABLE `lezione` DISABLE KEYS */;
INSERT INTO `lezione` VALUES (1,'01:00:00',2,'10:00:00','Campo C3',NULL,'TC11','gnntn99b24r129g'),(2,'01:45:00',1,'09:30:00','Campo C3',NULL,'TC11','gnntn99b24r129g');
/*!40000 ALTER TABLE `lezione` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_luogo_lezione` BEFORE INSERT ON `lezione` FOR EACH ROW BEGIN
declare tipo BIT;

if (new.Nome_campo is null and new.Nome_sala is null) then
signal sqlstate '45000' set message_text = "Attenzione, alla Lezione deve essere associata almeno una tra sala e campo";
end if;

if (new.Nome_campo is not null and new.Nome_sala is not null) then
signal sqlstate '45000' set message_text = "Attenzione, alla Lezione deve essere associata solo una sala o solo un campo";
end if;

set tipo = (
select Luogo from attivita_sportiva as ats where new.Attivita_sportiva = ats.Nome
);

if (tipo = b'0' and new.Nome_sala is null) then
signal sqlstate '45000' set message_text = "Questa lezione non può essere effettuata in un campo, reinserire.";
end if;

if (tipo = b'1' and new.Nome_campo is null) then
signal sqlstate '45000' set message_text = "Questa lezione non può essere effettuata in una sala, reinserire.";
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01  8:55:16
