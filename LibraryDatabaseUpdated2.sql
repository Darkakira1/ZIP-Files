-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: librarydb
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
-- Table structure for table `bookissued`
--

DROP TABLE IF EXISTS `bookissued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookissued` (
  `IDissued` int NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(50) DEFAULT NULL,
  `FacultyID` varchar(50) DEFAULT NULL,
  `Student_name` varchar(100) DEFAULT NULL,
  `Book_Tittle` varchar(120) DEFAULT NULL,
  `Book_Issued` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Book_Return` datetime DEFAULT NULL,
  `Book_Status` varchar(45) DEFAULT NULL,
  `Fine` int DEFAULT NULL,
  PRIMARY KEY (`IDissued`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookissued`
--

LOCK TABLES `bookissued` WRITE;
/*!40000 ALTER TABLE `bookissued` DISABLE KEYS */;
INSERT INTO `bookissued` VALUES (41,'','akldjlkad','akldsjlkslkjd','Visual Basic','2021-09-25 00:23:00','2021-09-26 08:23:00','Expired',7),(43,'','iajsd','klasdkjk','Visual Basic','2021-09-26 00:39:50','2021-09-27 08:38:00',NULL,NULL),(44,'','aljsdlj','klajsdkljjk','Visual Basic','2021-09-26 00:58:36','2021-09-26 08:58:00','Expired',1),(45,'','aljsdlj','klajsdkljjk','Visual Basic','2021-09-26 00:58:58','2021-09-26 07:58:00','Expired',3),(46,'','aljsdlj','klajsdkljjk','Visual Basic','2021-09-26 00:59:22','2021-09-26 05:58:00','Expired',7),(47,'','aljsdlj','klajsdkljjk','hello world','2021-09-26 00:59:57','2021-09-25 05:58:00','Expired',55),(48,'','akldjlkad','akldsjlkslkjd','Visual Basic','2021-09-26 01:27:45','2021-09-26 09:28:00','Expired',0);
/*!40000 ALTER TABLE `bookissued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultyinfo`
--

DROP TABLE IF EXISTS `facultyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facultyinfo` (
  `FID` varchar(50) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `College_Dept` varchar(100) DEFAULT NULL,
  `Address` varchar(120) NOT NULL,
  `Add_By` varchar(100) DEFAULT NULL,
  `Faculty_Image` longblob,
  `Date_Added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultyinfo`
--

LOCK TABLES `facultyinfo` WRITE;
/*!40000 ALTER TABLE `facultyinfo` DISABLE KEYS */;
INSERT INTO `facultyinfo` VALUES ('91203','jdskkh','askldjlk','askldjkl','askldj',NULL,'2021-09-17 02:48:32'),('akldjlkad','akldsjlkslkjd','aklsjdklj','klajdkl','aklsdjkl',NULL,'2021-09-17 02:47:57'),('aljsdlj','klajsdkljjk','laksjdkljd','lkajsdkljkl','lakjdkjl',NULL,'2021-09-17 02:49:00'),('iajsd','klasdkjk','alskdjjl','lakjsdkj','akljsdklj',NULL,'2021-09-17 02:49:28');
/*!40000 ALTER TABLE `facultyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentinfo`
--

DROP TABLE IF EXISTS `studentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentinfo` (
  `ID` varchar(20) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `College_Dept` varchar(130) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `Add_By` varchar(100) DEFAULT NULL,
  `Student_Image` longblob,
  `Date_Added` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentinfo`
--

LOCK TABLES `studentinfo` WRITE;
/*!40000 ALTER TABLE `studentinfo` DISABLE KEYS */;
INSERT INTO `studentinfo` VALUES ('aosjdkljkl','iasjdijasidio','aklsjdklj','kaljsdkl','lakjdklk',NULL,'2021-09-17 02:51:32'),('CET1123','HAkdog','BSIT','Batangas','Admin',NULL,'2021-09-17 02:50:20'),('CET192','darkakira','BSIT','Batangas','Admin',NULL,'2021-09-17 02:50:20');
/*!40000 ALTER TABLE `studentinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_account`
--

DROP TABLE IF EXISTS `table_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_account` (
  `idAccount` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_account`
--

LOCK TABLES `table_account` WRITE;
/*!40000 ALTER TABLE `table_account` DISABLE KEYS */;
INSERT INTO `table_account` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `table_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_inventorybooks`
--

DROP TABLE IF EXISTS `table_inventorybooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_inventorybooks` (
  `ISBN_no` int NOT NULL,
  `Name_of_Book` varchar(150) NOT NULL,
  `Book_Author` varchar(200) DEFAULT NULL,
  `Book_Categories` varchar(60) DEFAULT NULL,
  `Book_Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ISBN_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_inventorybooks`
--

LOCK TABLES `table_inventorybooks` WRITE;
/*!40000 ALTER TABLE `table_inventorybooks` DISABLE KEYS */;
INSERT INTO `table_inventorybooks` VALUES (1239889,'hello world','hakdog','Programming','Active'),(1289389,'Visual Basic','I dont Know','Science','Active'),(1928398,'Pre Calculus','laksdkljl','Mathematics','Lost');
/*!40000 ALTER TABLE `table_inventorybooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-26  9:36:13
