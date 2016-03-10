-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: fyp
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `accounts_in`
--

DROP TABLE IF EXISTS `accounts_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_in` (
  `accounts_in_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `amount` double NOT NULL,
  `percentage_to_club` double NOT NULL,
  PRIMARY KEY (`accounts_in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_in`
--

LOCK TABLES `accounts_in` WRITE;
/*!40000 ALTER TABLE `accounts_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_out`
--

DROP TABLE IF EXISTS `accounts_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_out` (
  `accounts_out_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `date` varchar(45) NOT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`accounts_out_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_out`
--

LOCK TABLES `accounts_out` WRITE;
/*!40000 ALTER TABLE `accounts_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charity_info`
--

DROP TABLE IF EXISTS `charity_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charity_info` (
  `charity_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address1` varchar(45) NOT NULL,
  `address2` varchar(45) NOT NULL,
  `address3` varchar(45) NOT NULL,
  `address4` varchar(45) NOT NULL,
  `date_sign_up` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) NOT NULL,
  `contact_name` varchar(45) NOT NULL,
  PRIMARY KEY (`charity_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charity_info`
--

LOCK TABLES `charity_info` WRITE;
/*!40000 ALTER TABLE `charity_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `charity_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `golf_majors_2016`
--

DROP TABLE IF EXISTS `golf_majors_2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `golf_majors_2016` (
  `golf_majors_2016_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `player_1_id` int(11) NOT NULL,
  `player_2_id` int(11) NOT NULL,
  `player_3_id` int(11) NOT NULL,
  `charity_id` int(11) NOT NULL,
  `total_score` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`golf_majors_2016_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `golf_majors_2016`
--

LOCK TABLES `golf_majors_2016` WRITE;
/*!40000 ALTER TABLE `golf_majors_2016` DISABLE KEYS */;
/*!40000 ALTER TABLE `golf_majors_2016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_details_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `golf_majors_2016` int(11) NOT NULL DEFAULT '0',
  `golf_majors_2016_percentage` int(11) NOT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `member_id_UNIQUE` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `majorScore1` double DEFAULT NULL,
  `majorScore2` double DEFAULT NULL,
  `majorScore3` double DEFAULT NULL,
  `majorScore4` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Jordan Spieth',1,'52',NULL,NULL,NULL,NULL),(2,'Jason Day',2,'40',NULL,NULL,NULL,NULL),(3,'Rory McIlroy',3,'44',NULL,NULL,NULL,NULL),(4,'Bubba Watson',4,'46',NULL,NULL,NULL,NULL),(5,'Rickie Fowler',5,'52',NULL,NULL,NULL,NULL),(6,'Henrik Stenson',6,'48',NULL,NULL,NULL,NULL),(7,'Justin Rose',7,'52',NULL,NULL,NULL,NULL),(8,'Dustin Johnson',8,'40',NULL,NULL,NULL,NULL),(9,'Adam Scott',9,'42',NULL,NULL,NULL,NULL),(10,'Patrick Reed',10,'52',NULL,NULL,NULL,NULL),(11,'Branden Grace',11,'52',NULL,NULL,NULL,NULL),(12,'Sergio Garcia',12,'46',NULL,NULL,NULL,NULL),(13,'Hideki Matsuyama',13,'52',NULL,NULL,NULL,NULL),(14,'Jim Furyk',14,'40',NULL,NULL,NULL,NULL),(15,'Danny Willett',15,'51',NULL,NULL,NULL,NULL),(16,'Brandt Snedeker',16,'52',NULL,NULL,NULL,NULL),(17,'Zach Johnson',17,'52',NULL,NULL,NULL,NULL),(18,'Brooks Koepka',18,'52',NULL,NULL,NULL,NULL),(19,'Louis Oosthuizen',19,'49',NULL,NULL,NULL,NULL),(20,'Kevin Kisner',20,'52',NULL,NULL,NULL,NULL),(21,'Phil Mickelson',21,'41',NULL,NULL,NULL,NULL),(22,'J.B. Holmes',22,'50',NULL,NULL,NULL,NULL),(23,'Shane Lowry',23,'51',NULL,NULL,NULL,NULL),(24,'Jimmy Walker',24,'52',NULL,NULL,NULL,NULL),(25,'Kevin Na',25,'52',NULL,NULL,NULL,NULL),(26,'Marc Leishman',26,'49',NULL,NULL,NULL,NULL),(27,'Byeong Hun An',27,'52',NULL,NULL,NULL,NULL),(28,'Matt Kuchar',28,'52',NULL,NULL,NULL,NULL),(29,'Andy Sullivan',29,'52',NULL,NULL,NULL,NULL),(30,'Paul Casey',30,'52',NULL,NULL,NULL,NULL),(31,'Justin Thomas',31,'52',NULL,NULL,NULL,NULL),(32,'Charl Schwartzel',32,'52',NULL,NULL,NULL,NULL),(33,'Russell Knox',33,'52',NULL,NULL,NULL,NULL),(34,'Thongchai Jaidee',34,'52',NULL,NULL,NULL,NULL),(35,'Danny Lee',35,'52',NULL,NULL,NULL,NULL),(36,'Emiliano Grillo',36,'52',NULL,NULL,NULL,NULL),(37,'Bernd Wiesberger',37,'52',NULL,NULL,NULL,NULL),(38,'Martin Kaymer',38,'52',NULL,NULL,NULL,NULL),(39,'Victor Dubuisson',39,'46',NULL,NULL,NULL,NULL),(40,'David Lingmerth',40,'52',NULL,NULL,NULL,NULL),(41,'Billy Horschel',41,'52',NULL,NULL,NULL,NULL),(42,'Bill Haas',42,'52',NULL,NULL,NULL,NULL),(43,'Chris Wood',43,'47',NULL,NULL,NULL,NULL),(44,'Soren Kjeldsen',44,'52',NULL,NULL,NULL,NULL),(45,'Kiradech Aphibarnrat',45,'52',NULL,NULL,NULL,NULL),(46,'Matthew Fitzpatrick',46,'52',NULL,NULL,NULL,NULL),(47,'Robert Streb',47,'52',NULL,NULL,NULL,NULL),(48,'Scott Piercy',48,'43',NULL,NULL,NULL,NULL),(49,'Jaco Van Zyl',49,'40',NULL,NULL,NULL,NULL),(50,'Anirban Lahiri',50,'52',NULL,NULL,NULL,NULL),(51,'Jamie Donaldson',51,'52',NULL,NULL,NULL,NULL),(52,'Chris Kirk',52,'51',NULL,NULL,NULL,NULL),(53,'Matt Jones',53,'52',NULL,NULL,NULL,NULL),(54,'Fabian Gomez',54,'52',NULL,NULL,NULL,NULL),(55,'Graeme McDowell',55,'51',NULL,NULL,NULL,NULL),(56,'Lee Westwood',56,'52',NULL,NULL,NULL,NULL),(57,'Daniel Berger',57,'52',NULL,NULL,NULL,NULL),(58,'Marcus Fraser',58,'40',NULL,NULL,NULL,NULL),(59,'Charley Hoffman',59,'51',NULL,NULL,NULL,NULL),(60,'Ryan Moore',60,'46',NULL,NULL,NULL,NULL),(61,'Rafael Cabrera Bello',61,'52',NULL,NULL,NULL,NULL),(62,'Thorbjorn Olesen',62,'52',NULL,NULL,NULL,NULL),(63,'Thomas Pieters',63,'52',NULL,NULL,NULL,NULL),(64,'Ian Poulter',64,'49',NULL,NULL,NULL,NULL),(65,'Smylie Kaufman',65,'40',NULL,NULL,NULL,NULL),(66,'Ryan Palmer',66,'48',NULL,NULL,NULL,NULL),(67,'Patton Kizzire',67,'40',NULL,NULL,NULL,NULL),(68,'Kristoffer Broberg',68,'52',NULL,NULL,NULL,NULL),(69,'Gary Woodland',69,'49',NULL,NULL,NULL,NULL),(70,'Shingo Katayama',70,'42',NULL,NULL,NULL,NULL),(71,'Jason Dufner',71,'47',NULL,NULL,NULL,NULL),(72,'Jason Bohn',72,'52',NULL,NULL,NULL,NULL),(73,'K.T. Kim',73,'52',NULL,NULL,NULL,NULL),(74,'Webb Simpson',74,'47',NULL,NULL,NULL,NULL),(75,'Brendan Steele',75,'51',NULL,NULL,NULL,NULL),(76,'Joost Luiten',76,'52',NULL,NULL,NULL,NULL),(77,'George Coetzee',77,'52',NULL,NULL,NULL,NULL),(78,'Steven Bowditch',78,'52',NULL,NULL,NULL,NULL),(79,'Harris English',79,'52',NULL,NULL,NULL,NULL),(80,'Francesco Molinari',80,'52',NULL,NULL,NULL,NULL),(81,'Tommy Fleetwood',81,'52',NULL,NULL,NULL,NULL),(82,'Ricardo Gouveia',82,'40',NULL,NULL,NULL,NULL),(83,'Cameron Tringale',83,'52',NULL,NULL,NULL,NULL),(84,'Russell Henley',84,'51',NULL,NULL,NULL,NULL),(85,'Ross Fisher',85,'51',NULL,NULL,NULL,NULL),(86,'Dean Burmester',86,'46',NULL,NULL,NULL,NULL),(87,'Hunter Mahan',87,'52',NULL,NULL,NULL,NULL),(88,'Marc Warren',88,'52',NULL,NULL,NULL,NULL),(89,'Keegan Bradley',89,'52',NULL,NULL,NULL,NULL),(90,'Luke Donald',90,'52',NULL,NULL,NULL,NULL),(91,'Yuta Ikeda',91,'52',NULL,NULL,NULL,NULL),(92,'John Senden',92,'52',NULL,NULL,NULL,NULL),(93,'Ben Martin',93,'52',NULL,NULL,NULL,NULL),(94,'Alexander Levy',94,'52',NULL,NULL,NULL,NULL),(95,'Cameron Smith',95,'40',NULL,NULL,NULL,NULL),(96,'Tony Finau',96,'52',NULL,NULL,NULL,NULL),(97,'Freddie Jacobson',97,'42',NULL,NULL,NULL,NULL),(98,'Hiroshi Iwata',98,'52',NULL,NULL,NULL,NULL),(99,'James Morrison',99,'52',NULL,NULL,NULL,NULL),(100,'Kevin Streelman',100,'52',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `user_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) DEFAULT NULL,
  `s_name` varchar(45) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `address3` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_details_id`),
  UNIQUE KEY `user_details_id_UNIQUE` (`user_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='								';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `user_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `user_details_id` int(11) NOT NULL,
  `member` int(11) NOT NULL,
  `user_infocol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_info_id`),
  UNIQUE KEY `user_info_id_UNIQUE` (`user_info_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `uni_username_role` (`role`,`username`),
  KEY `fk_username_idx` (`username`),
  CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (2,'admin','ROLE_ADMIN'),(1,'user','ROLE_USER');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin',1),('user','user',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-08 12:37:08
