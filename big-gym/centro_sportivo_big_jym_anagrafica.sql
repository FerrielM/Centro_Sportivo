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
-- Table structure for table `anagrafica`
--

DROP TABLE IF EXISTS `anagrafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anagrafica` (
  `id_anagrafica` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `cap` varchar(5) DEFAULT NULL,
  `localita` varchar(255) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL,
  `codice_fiscale` varchar(16) DEFAULT NULL,
  `partita_iva` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono_cellulare` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_anagrafica`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anagrafica`
--

LOCK TABLES `anagrafica` WRITE;
/*!40000 ALTER TABLE `anagrafica` DISABLE KEYS */;
INSERT INTO `anagrafica` VALUES (1,'Marco ','Masiello','Via A Tenna Stinnicchiata, 8 ','80100','Napoli','NA','ZWFCLF46C52G833E','15985985','masiello@esempio.com','3335859689'),(2,'Ferriel','Merouane','Via Esotica, 33','12100','Cuneo','CN','KCVBPM78B16H269G','45458798','merouane@esempio.com','3274848459'),(3,'Stefania','Palatucci','Via Delle Grafiche,128','83100','Avellino','AV','WOAQKL49C02C186P','35789547','palatucci@esempio.com','34856598658'),(4,'Alessandro','Lanaro','Via Gin Fizz, 22','10135','Torino','TO','MPWBSP94D50A187Q','654987589','lanaro@esempio.com','3332525689'),(5,'Lorenzo','Petraroli','via dei Lorenzi, 44','73048','Lecce','LE','MNPZSC35L63D921Y','3578548','lorenz@esmpio.com','3485654879'),(6,'Primo','Cliente','Via dei pazzoni','80100','Napoli','NA','idugqdidif23','15985478','clientone@esempio.com','33333333333'),(7,'MARCO','MASIELLO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'MARCO','MASIELLO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'MARCO','MASIELLO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'MARCO','MASIELLO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'MARCO','MASIELLO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'MARCO','MASIELLO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'MARCO','MASIELLO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'MARCO','MASIELLO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2022-05-21  2:29:25
