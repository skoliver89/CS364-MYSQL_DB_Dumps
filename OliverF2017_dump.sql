-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: OliverF2017
-- ------------------------------------------------------
-- Server version	5.5.55-0ubuntu0.14.04.1

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
-- Table structure for table `MyCabins`
--

DROP TABLE IF EXISTS `MyCabins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MyCabins` (
  `cabinId` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cabinName` varchar(50) DEFAULT NULL,
  `fee` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cabinId`),
  KEY `myCabinsIndex` (`cabinId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyCabins`
--

LOCK TABLES `MyCabins` WRITE;
/*!40000 ALTER TABLE `MyCabins` DISABLE KEYS */;
INSERT INTO `MyCabins` VALUES (1,'Red Cabin',128.95),(2,'Blue Cabin',134.95),(3,'Purple Cabin',127.95);
/*!40000 ALTER TABLE `MyCabins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyGuests`
--

DROP TABLE IF EXISTS `MyGuests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MyGuests` (
  `GuestId` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`GuestId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyGuests`
--

LOCK TABLES `MyGuests` WRITE;
/*!40000 ALTER TABLE `MyGuests` DISABLE KEYS */;
INSERT INTO `MyGuests` VALUES (1,'Bob','Eisele','Bob@mail.com','2017-06-14 20:11:23'),(2,'Rudy','Johnson','Rudy@mail.com','2017-06-14 20:11:23'),(3,'Carl','Wesinger','Carl@mail.com','2017-06-14 20:11:23'),(4,'Larry','Kissinger','Larry@mail.com','2017-06-14 20:11:23');
/*!40000 ALTER TABLE `MyGuests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyLog`
--

DROP TABLE IF EXISTS `MyLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MyLog` (
  `MyLogId` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `reservationID` int(6) DEFAULT NULL,
  `FkCabinID` int(6) DEFAULT NULL,
  `guestID` int(6) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `logEntry` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MyLogId`),
  KEY `par_ind` (`MyLogId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyLog`
--

LOCK TABLES `MyLog` WRITE;
/*!40000 ALTER TABLE `MyLog` DISABLE KEYS */;
INSERT INTO `MyLog` VALUES (1,1,1,1,'2017-07-24','Reservation'),(2,2,1,2,'2017-07-25','Reservation'),(3,3,1,3,'2017-06-28','Reservation'),(4,4,1,2,'2017-08-24','Reservation'),(5,5,2,1,'2017-07-26','Reservation'),(6,6,3,2,'2017-06-24','Reservation'),(7,7,3,3,'2017-09-30','Reservation'),(8,8,4,3,'2017-06-20','Reservation');
/*!40000 ALTER TABLE `MyLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyReservations`
--

DROP TABLE IF EXISTS `MyReservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MyReservations` (
  `reservationId` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `FkCabinID` int(6) DEFAULT NULL,
  `guestID` int(6) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `fee` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`reservationId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyReservations`
--

LOCK TABLES `MyReservations` WRITE;
/*!40000 ALTER TABLE `MyReservations` DISABLE KEYS */;
INSERT INTO `MyReservations` VALUES (1,1,1,'2017-07-24',122.00),(2,1,2,'2017-07-25',136.00),(3,1,3,'2017-06-28',145.00),(4,1,2,'2017-08-24',128.00),(5,2,1,'2017-07-26',72.00),(6,3,2,'2017-06-24',85.00),(7,3,3,'2017-09-30',99.00),(8,1,3,'2017-06-20',110.00);
/*!40000 ALTER TABLE `MyReservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-24 15:49:36
