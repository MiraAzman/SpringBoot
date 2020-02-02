CREATE DATABASE  IF NOT EXISTS `springproject` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `springproject`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: springproject
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `std_id` bigint(20) NOT NULL,
  `std_name` varchar(100) DEFAULT NULL,
  `std_age` int(11) DEFAULT NULL,
  `std_address` varchar(200) DEFAULT NULL,
  `std_placeofbirth` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`std_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'ANAS BAIHAQI BIN MOHD AMMAR KHALIS',25,'Petaling Jaya, Selangor','Terengganu'),(2,'MOHAMAD HAZROL BIN MAZLAN',30,'Taiping, Perak','Selangor'),(3,'WAN MOHAMAD AZLI BIN SALEHUDDIN',21,'Wilayah Persekutuan Kuala Lumpur','Selangor'),(4,'NOOR MARHAMAH BINTI MOHD SHAMLAN',26,'Petaling Jaya, Selangor','Johor'),(5,'ILHAM SUHANA BINTI IDRIS',25,'Bandar Baru Bangi, Selangor','Perak'),(6,'NURJALILAH BINTI JANUDIN',22,'Wilayah Persekutuan Kuala Lumpur','Johor'),(7,'HADAFFI HANIF SAMAD',23,'Shah Alam, Selangor','Perak'),(8,'HASYIRUL BIN HASHIM',21,'Puchong, Selangor','Johor'),(9,'WAN ROHANA BINTI WAN ABDUL AZIZ',22,'Wilayah Persekutuan Kuala Lumpur','Sabah'),(10,'NUR ALIYA SYAFFA BINTI JOHARI',19,'Petaling Jaya, Selangor','Selangor');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'springproject'
--

--
-- Dumping routines for database 'springproject'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-02 17:56:13
