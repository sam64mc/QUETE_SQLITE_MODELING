-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: creation
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Appartient`
--

DROP TABLE IF EXISTS `Appartient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Appartient` (
  `Id_name` int(11) NOT NULL,
  `Id_name_Organization` int(11) NOT NULL,
  PRIMARY KEY (`Id_name`,`Id_name_Organization`),
  KEY `FK_Appartient_Id_name_Organization` (`Id_name_Organization`),
  CONSTRAINT `FK_Appartient_Id_name` FOREIGN KEY (`Id_name`) REFERENCES `User` (`Id_name`),
  CONSTRAINT `FK_Appartient_Id_name_Organization` FOREIGN KEY (`Id_name_Organization`) REFERENCES `Organization` (`Id_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appartient`
--

LOCK TABLES `Appartient` WRITE;
/*!40000 ALTER TABLE `Appartient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Appartient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization`
--

DROP TABLE IF EXISTS `Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization` (
  `name` varchar(25) DEFAULT NULL,
  `website_url` varchar(25) DEFAULT NULL,
  `Id_name` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization`
--

LOCK TABLES `Organization` WRITE;
/*!40000 ALTER TABLE `Organization` DISABLE KEYS */;
INSERT INTO `Organization` VALUES ('choupi','www.darlidada.com',1),('dede','www.vivelesvacances.com',2);
/*!40000 ALTER TABLE `Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Poste`
--

DROP TABLE IF EXISTS `Poste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Poste` (
  `Id_name` int(11) NOT NULL,
  `id_content` int(11) NOT NULL,
  PRIMARY KEY (`Id_name`,`id_content`),
  KEY `FK_Poste_id_content` (`id_content`),
  CONSTRAINT `FK_Poste_Id_name` FOREIGN KEY (`Id_name`) REFERENCES `User` (`Id_name`),
  CONSTRAINT `FK_Poste_id_content` FOREIGN KEY (`id_content`) REFERENCES `Tweet` (`id_content`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Poste`
--

LOCK TABLES `Poste` WRITE;
/*!40000 ALTER TABLE `Poste` DISABLE KEYS */;
/*!40000 ALTER TABLE `Poste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tweet`
--

DROP TABLE IF EXISTS `Tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tweet` (
  `id_content` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_content`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tweet`
--

LOCK TABLES `Tweet` WRITE;
/*!40000 ALTER TABLE `Tweet` DISABLE KEYS */;
INSERT INTO `Tweet` VALUES (1,'hellooo ! '),(2,'bonjour à tous ');
/*!40000 ALTER TABLE `Tweet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `Id_name` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('jean','jeanpeuplus@titi.fr',1),('jean','jeanveutencore@toto.fr',2);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-02 16:07:57
