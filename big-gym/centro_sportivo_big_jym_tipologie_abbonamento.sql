-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: centro_sportivo_big_jym
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `tipologie_abbonamento`
--

DROP TABLE IF EXISTS `tipologie_abbonamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipologie_abbonamento` (
  `id_tipologia_abbonamento` int NOT NULL AUTO_INCREMENT,
  `tipologia` varchar(255) DEFAULT NULL,
  `descrizione` text,
  `prezzo` double DEFAULT NULL,
  PRIMARY KEY (`id_tipologia_abbonamento`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologie_abbonamento`
--

LOCK TABLES `tipologie_abbonamento` WRITE;
/*!40000 ALTER TABLE `tipologie_abbonamento` DISABLE KEYS */;
INSERT INTO `tipologie_abbonamento` VALUES (1,'Small Jim','Sala Pesi, cardio',30),(2,'Medium Jim','Sala Pesi, cardio, corsi',40),(3,'Family','Sala Pesi, cardio, corsi',90),(5,'Big Jim','Accesso completo alla palestra, percorso arrampicata, personal trainer e supporto medico',200),(7,'Water Jim','Accesso ai corsi di nuoto, due lezioni settimanali.',80),(8,NULL,'GOLD',500),(9,NULL,'GOLD',500),(10,NULL,'GOLD',500),(11,NULL,'GOLD',500),(12,NULL,'GOLD',500),(13,NULL,'GOLD',600),(25,NULL,'GOLD',600);
/*!40000 ALTER TABLE `tipologie_abbonamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-21  2:29:25
