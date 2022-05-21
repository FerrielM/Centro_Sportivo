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
-- Table structure for table `ordini`
--

DROP TABLE IF EXISTS `ordini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordini` (
  `id_ordine` int NOT NULL AUTO_INCREMENT,
  `id_corso` int DEFAULT NULL,
  `id_tipologia_abbonamento` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `data_ordine` date DEFAULT NULL,
  `totale_ordine` double DEFAULT NULL,
  `modalita_di_pagamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ordine`),
  KEY `id_user` (`id_user`),
  KEY `id_corso` (`id_corso`),
  KEY `id_tipologia_abbonamento` (`id_tipologia_abbonamento`),
  CONSTRAINT `ordini_ibfk_5` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ordini_ibfk_6` FOREIGN KEY (`id_tipologia_abbonamento`) REFERENCES `tipologie_abbonamento` (`id_tipologia_abbonamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ordini_ibfk_7` FOREIGN KEY (`id_corso`) REFERENCES `corsi` (`id_corso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordini`
--

LOCK TABLES `ordini` WRITE;
/*!40000 ALTER TABLE `ordini` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordini` ENABLE KEYS */;
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
