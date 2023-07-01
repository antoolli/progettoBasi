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
-- Table structure for table `istruttore_brevetto`
--

DROP TABLE IF EXISTS `istruttore_brevetto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `istruttore_brevetto` (
  `CF` char(16) NOT NULL,
  `Cod` bigint unsigned NOT NULL,
  `Data_emissione` date NOT NULL,
  `Ente_emissione` varchar(50) NOT NULL,
  PRIMARY KEY (`CF`,`Cod`),
  KEY `Cod` (`Cod`),
  CONSTRAINT `istruttore_brevetto_ibfk_1` FOREIGN KEY (`CF`) REFERENCES `istruttore` (`CF`),
  CONSTRAINT `istruttore_brevetto_ibfk_2` FOREIGN KEY (`Cod`) REFERENCES `brevetto` (`Cod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `istruttore_brevetto`
--

LOCK TABLES `istruttore_brevetto` WRITE;
/*!40000 ALTER TABLE `istruttore_brevetto` DISABLE KEYS */;
INSERT INTO `istruttore_brevetto` VALUES ('gnntn99b24r129g',1,'2020-02-02','CONI'),('gnntn99b24r129g',5,'2020-04-02','CONI'),('mrzrmd99k34r121l',3,'2019-12-09','CONI'),('mrzrmd99k34r121l',4,'2021-04-08','CONI'),('sstfrd00b14r122h',1,'2020-02-02','CONI'),('sstfrd00b14r122h',2,'2021-01-05','CONI');
/*!40000 ALTER TABLE `istruttore_brevetto` ENABLE KEYS */;
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
