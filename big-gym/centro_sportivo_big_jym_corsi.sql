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
-- Table structure for table `corsi`
--

DROP TABLE IF EXISTS `corsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corsi` (
  `id_corso` int NOT NULL AUTO_INCREMENT,
  `id_area` int DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descrizione` text,
  `prezzo` double DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_corso`),
  KEY `id_area` (`id_area`),
  KEY `corsi_ibfk_2_idx` (`id_user`),
  CONSTRAINT `corsi_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `corsi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corsi`
--

LOCK TABLES `corsi` WRITE;
/*!40000 ALTER TABLE `corsi` DISABLE KEYS */;
INSERT INTO `corsi` VALUES (1,10,'Calisthenics','Il calisthenics è l\'arte di usare il proprio peso corporeo come resistenza per allenarsi e sviluppare il fisico tramite un istema di allenamento basato sulla ginnastica a corpo libero.',30,NULL),(2,5,'Musical Fitness','fitness musicale di gruppo',25,NULL),(3,10,'Crosstraining','Il Cross Training, o allenamento incrociato, è una modalità di allenamento che permette di praticare più discipline sportive, variando ogni giorno le catene muscolari utilizzate e allenando costantemente il sistema cardio-respiratorio e la risposta ormonale all’esercizio fisico.',30,NULL),(4,6,'Fit Box','Fit boxe è un metodo di allenamento fitness – concepito per ottimizzare lo stato di forma fisica generale – sviluppato in stile kickboxing.',25,NULL),(5,6,'Aerobica e Step Coreografico','La ginnastica aerobica è una sessione di workout in cui si susseguono vari esercizi eseguiti a corpo libero o con attrezzi come lo step, tutto nell’arco temporale di un’ora circa.',25,NULL),(6,11,'Riequilibrio Posturale','La Rieducazione Posturale, meglio nota come Ginnastica Posturale, è una metodica specifica che consta di una serie di esercizi atti a riequilibrare le tensioni muscolo-legamentose del corpo.',40,NULL),(7,5,'Ginnastica Kids','L’esercizio fisico ha un ruolo prioritario per la salute durante lo sviluppo dei bambini. Oltre ad essere divertente, l’attività motoria nei più piccoli contribuisce a migliorare le condizioni di salute fisica e a promuovere il benessere psicologico, indispensabili per una crescita sana.',15,NULL),(8,11,'Dinamic Yoga','Ciò che viene chiamato Yoga dinamico si distingue da quello tradizionale poiché propone lo svolgimento di una concatenazione fluida di posture ad un ritmo rapido e sportivo, mantenendo una respirazione lenta e profonda.',25,NULL),(9,5,'Group Sparring','Un allenamento “one to one” a coppie che prende spunto dalla pre-pugilistica e dalle attività di sparring delle arti marziali, ma ricodificate in chiave fitness musicale',25,NULL),(10,6,'Pilates and Stretch','l corso di Stretch Pilates si propone di aiutare gli allievi a conoscere il proprio corpo al meglio, a tonificarlo, a decontrarlo e a migliorarlo.\r\nStretch Pilates è tonificazione muscolare applicata ad una respirazione ben precisa, alternata al dovuto stretching di rilassamento.',25,NULL),(11,10,'Total Body Workout','l total body workout da praticare sia a casa che in palestra, si compone di una varietà di esercizi e tecniche di allenamento differenti che contribuiscono a bruciare calorie, aumentare il tono muscolare, forza e resistenza',35,NULL),(12,10,'Functional Training','Grazie alle diverse modalità di esecuzione e alle diverse velocità di contrazione muscolare, migliora la coordinazione tra i vari gruppi muscolari, sviluppa l\'agilità, aumenta l\'elasticità nelle articolazioni e il tono e la potenza muscolare.',25,NULL),(13,2,'Water Hydrobike','L\'hydrobike assicura benefici anche a livello cardiovascolare in quanto migliora la resistenza caridiocircolatoria. Infatti, il massaggio idrico continuo stimola la circolazione, oltre che tonificare, grazie alla resistenza creata con l\'acqua senza peraltro aumentare eccessivamente la massa muscolare.',40,NULL),(14,2,'Water Tone','È un\'attività di media intensità, mirata a sviluppare la tonificazione di tutti i distretti muscolari attraverso esercizi di coordinazione a difficoltà crescente.',30,NULL),(15,2,'Water Endurance','Un mix di diverse discipline per migliorare la tua capacità aerobica in un total body workout intenso e a ritmo di musica.',30,NULL),(16,NULL,'equitazione','ngopp e chiang tre juorn',0,NULL);
/*!40000 ALTER TABLE `corsi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-21  2:29:24
