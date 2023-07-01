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
-- Table structure for table `anagrafica`
--

DROP TABLE IF EXISTS `anagrafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anagrafica` (
  `CF` char(16) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `Cognome` varchar(60) NOT NULL,
  `Luogo_nascita` varchar(60) NOT NULL,
  `Data_nascita` date NOT NULL,
  `Genere` char(1) NOT NULL,
  PRIMARY KEY (`CF`),
  CONSTRAINT `check_valore_genere` CHECK ((`Genere` in (_utf8mb4'M',_utf8mb4'A',_utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anagrafica`
--

LOCK TABLES `anagrafica` WRITE;
/*!40000 ALTER TABLE `anagrafica` DISABLE KEYS */;
INSERT INTO `anagrafica` VALUES ('ccactr01l34i098e','Caterina','Caccia','Crotone','2001-08-23','F'),('ccasmn00e09r124d','Samuele','Caccia','Torino','1992-09-20','M'),('flbcrm02n24c122g','Carmine','Falbo','Crotone','2002-12-18','M'),('gllgla23m45n325l','Giulia','Gallo','Cosenza','2001-12-12','F'),('glllss23m45n324l','Alessia','Gallo','Cosenza','2001-12-12','F'),('gnntn99b24r129g','Antonio','Gara','Crotone','1999-02-24','M'),('grarca00l23t122h','Erica','Gara','Roma','2000-12-20','F'),('lvrnnd00m29d122r','Antonio Davide','Oliverio','Crotone','2000-08-29','M'),('mnrmrp03l49d122n','Mariapia','Minardi','Crotone','2003-07-09','F'),('mnrpcc12p34l122k','francesco','oliverio','crotone','2000-05-05','M'),('mrcrst01l34f122e','rosita','Muraca','Crotone','2001-01-20','F'),('mrzrmd99k34r121l','Armando','Marzano','Padova','1999-12-18','M'),('mtslvr03n24c122h','Salvatore','Muto','verona','2003-01-20','M'),('pctlgi98k08o122q','Luigi','piccoli','Bari','1985-04-04','M'),('pctlsa98k08o122q','elisa','piccoli','Bari','1994-08-24','F'),('rtncrm88n22c123s','Carmela','Rotodo','Lucca','1994-08-20','F'),('ssicsr00p23r554p','Cesare','Ussia','Napoli','2000-07-14','M'),('sstfrd00b14r122h','Alfredo','Sestito','Cosenza','2000-02-24','M'),('trnmcl14z23k123l','Michele','Torinotti','Napoli','1994-08-23','M');
/*!40000 ALTER TABLE `anagrafica` ENABLE KEYS */;
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
