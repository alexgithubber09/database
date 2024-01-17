-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: lab
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Analysis`
--

DROP TABLE IF EXISTS `Analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Analysis` (
  `an_id` int DEFAULT NULL,
  `an_name` varchar(255) DEFAULT NULL,
  `an_cost` float DEFAULT NULL,
  `an_price` float DEFAULT NULL,
  `an_group` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Analysis`
--

LOCK TABLES `Analysis` WRITE;
/*!40000 ALTER TABLE `Analysis` DISABLE KEYS */;
INSERT INTO `Analysis` VALUES (1,'Гематологический анализ крови (ОАК, СОЭ, ретикулоциты), капиллярная кровь',10.52,14.76,1),(2,'Бикарбонаты',14.56,20.74,1),(3,'Общий анализ мочи c автоматической микроскопией осадка',5.63,8.64,1),(4,'Копрограмма',3.12,4.66,1),(5,'Волчаночный антикоагулянт',28.36,35.07,2),(6,'Протеин S свободный',92.56,111.21,2),(7,'МНО (INR)',4.63,6.88,2),(8,'D-димер',17.23,22.34,2),(9,'Расширенный анализ мочи на органические кислоты (60 показателей) - взрослые и дети старше 3 лет',211.89,263.04,3),(10,'Эстрогены и прогестагены (4 показателя) – взрослые и дети старше 16 лет',232.47,275.37,3),(11,'Эстрогены и их метаболиты, расчет соотношений, прегнандиол (10 показателей)– взрослые и дети старше 16 лет',240.85,281.31,3),(12,'Андрогены и их метаболиты (8 показателей), расчет соотношений',141.56,164.99,3),(13,'Rotavirus, антиген',20.32,25.1,4),(14,'Tumor Marker 2 (TM 2) - пируваткиназа',112.58,130.03,4),(15,'Определение токсинов A и B Clostridium difficile, антиген',57.69,68.28,4),(16,'Панкреатическая эластаза 1 (Pancreatic Elastase 1) в кале (кол.)',31.59,38.39,4),(17,'Кортизол (слюна)',11.25,15.74,5);
/*!40000 ALTER TABLE `Analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Groups` (
  `gr_id` int DEFAULT NULL,
  `gr_name` varchar(255) DEFAULT NULL,
  `gr_temp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'общие анализы','5-25'),(2,'система гемостаза','10-25'),(3,'анализы мочи','10-30'),(4,'анализы кала','10-30'),(5,'анализы слюны','10-30');
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `ord_id` int DEFAULT NULL,
  `ord_datetime` datetime DEFAULT NULL,
  `ord_an` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (125,'2020-02-05 12:46:33',1),(269,'2020-02-05 19:21:15',2),(1045,'2020-02-06 11:31:10',3),(1589,'2020-02-06 17:15:25',4),(1589,'2020-02-07 16:09:17',5),(2048,'2020-02-07 18:45:11',6),(687,'2020-02-08 10:12:24',7),(5361,'2020-02-09 09:12:56',8),(6811,'2020-02-09 10:57:51',9),(2421,'2020-02-10 10:21:50',10),(1633,'2020-02-15 12:28:14',11),(3684,'2020-02-18 13:15:28',12),(239,'2020-02-20 15:45:31',13),(1745,'2020-02-01 17:25:19',14),(5932,'2020-02-03 18:14:36',15),(5233,'2020-02-06 16:18:46',16),(4258,'2020-02-13 14:41:25',17);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-16 16:34:49
