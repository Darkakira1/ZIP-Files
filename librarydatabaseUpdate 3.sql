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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookissued`
--

LOCK TABLES `bookissued` WRITE;
/*!40000 ALTER TABLE `bookissued` DISABLE KEYS */;
INSERT INTO `bookissued` VALUES (41,'','akldjlkad','akldsjlkslkjd','Visual Basic','2021-09-25 00:23:00','2021-09-26 08:23:00','Expired',35426854),(43,'','iajsd','klasdkjk','Visual Basic','2021-09-26 00:39:50','2021-09-27 08:38:00','Expired',6),(44,'','aljsdlj','klajsdkljjk','Visual Basic','2021-09-26 00:58:36','2021-09-26 08:58:00','Expired',1),(45,'','aljsdlj','klajsdkljjk','Visual Basic','2021-09-26 00:58:58','2021-09-26 07:58:00','Expired',3),(46,'','aljsdlj','klajsdkljjk','Visual Basic','2021-09-26 00:59:22','2021-09-26 05:58:00','Expired',7),(47,'','aljsdlj','klajsdkljjk','hello world','2021-09-26 00:59:57','2021-09-25 05:58:00','Expired',55),(48,'','akldjlkad','akldsjlkslkjd','Visual Basic','2021-09-26 01:27:45','2021-09-26 09:28:00','Expired',0),(49,'','91203','jdskkh','hello world','2021-09-27 03:00:42','2021-09-27 11:00:00','Expired',1),(50,'','91203','jdskkh','hello world','2021-09-27 03:24:08','2021-09-29 11:23:00',NULL,NULL),(51,'CET180083','','Marck Junhel De Castro','Visual Basic','2021-09-27 03:24:32','2021-09-29 11:23:00',NULL,NULL),(52,'','91203','jdskkh','hello world','2021-09-27 03:29:12','2021-09-27 11:28:00','Expired',0),(53,'','91203','jdskkh','Visual Basic','2021-09-27 03:33:41','2021-09-29 11:28:00',NULL,NULL);
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
INSERT INTO `facultyinfo` VALUES ('91203','jdskkh','askldjlk','askldjkl','askldj',NULL,'2021-09-17 02:48:32'),('akldjlkad','akldsjlkslkjd','aklsjdklj','klajdkl','aklsdjkl',NULL,'2021-09-17 02:47:57'),('aljsdlj','klajsdkljjk','laksjdkljd','lkajsdkljkl','lakjdkjl',NULL,'2021-09-17 02:49:00'),('CET180083','Marck Junhel De Castro','BSIT','batangas City','Admin',NULL,'2021-09-27 03:32:47'),('iajsd','klasdkjk','alskdjjl','lakjsdkj','akljsdklj',NULL,'2021-09-17 02:49:28');
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
INSERT INTO `studentinfo` VALUES ('1231jjh23ij1h','Marck Junhel De castro','BSIT','Kumintang Ibaba','Admin',NULL,'2021-09-27 03:32:10'),('aosjdkljkl','iasjdijasidio','aklsjdklj','kaljsdkl','lakjdklk',NULL,'2021-09-17 02:51:32'),('CET1123','HAkdog','BSIT','Batangas','Admin',NULL,'2021-09-17 02:50:20'),('CET180083','Marck Junhel De Castro','BSIT','Batangas City','Admin',NULL,'2021-09-27 03:22:24'),('CET180123083','Marck Junhel De Castro','BSIT','Batangas City','Admin',NULL,'2021-09-27 03:28:12'),('CET192','darkakira','BSIT','Batangas','Admin',NULL,'2021-09-17 02:50:20'),('jakldj','mack junhel de castro','alksjdlkja','asdklj','asdasd',NULL,'2021-09-28 05:17:47'),('kalsjhdk','kjashdkjahd','asdaksld','lkasjdkl','alksjdkl',NULL,'2021-09-27 03:28:42'),('sadf','Marck JUnhel De castro','skljdlkj','aksjdkljad','alkjsdkoljasd',NULL,'2021-09-27 03:23:14');
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
  `Answer` varchar(150) NOT NULL,
  PRIMARY KEY (`idAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_account`
--

LOCK TABLES `table_account` WRITE;
/*!40000 ALTER TABLE `table_account` DISABLE KEYS */;
INSERT INTO `table_account` VALUES (1,'admin','admin','admin@gmail.com'),(3,'darkakira','akira','pedro'),(4,'junhel','root123','hakdog');
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
  `Book_Publish` varchar(40) DEFAULT NULL,
  `Book_quantity` int DEFAULT NULL,
  PRIMARY KEY (`ISBN_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_inventorybooks`
--

LOCK TABLES `table_inventorybooks` WRITE;
/*!40000 ALTER TABLE `table_inventorybooks` DISABLE KEYS */;
INSERT INTO `table_inventorybooks` VALUES (2829,'Pre Calculus','oiadof','Mathematics','Active','January 15',NULL),(123123,'asdfadf','asdfasdf','adfadf','Active','February 20',NULL),(213213,'Earth and life Science','asdasd','Science','Active',NULL,NULL),(1289389,'Visual Basic','I dont Know','Science','Active',NULL,NULL),(1928398,'Pre Calculus','laksdkljl','Mathematics','Lost',NULL,NULL);
/*!40000 ALTER TABLE `table_inventorybooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tryimage`
--

DROP TABLE IF EXISTS `tryimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tryimage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Image` mediumblob,
  `Tittle` varchar(100) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tryimage`
--

LOCK TABLES `tryimage` WRITE;
/*!40000 ALTER TABLE `tryimage` DISABLE KEYS */;
INSERT INTO `tryimage` VALUES (1,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0\�w=�\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0IDATHK퓿O\"Q\�OO~l5�\�8\�R]ĂF\r�\\��S�K�N��3��\�\�\�\��&�\\��!\�6�H�R\�wގ�\�.Kb\�\'y;�\�\�3�>��|_^\�`>ah��NUp<d\�\rv1\�`B�\��A�+	]�����򯮬З\�I�86F-\�Hcm�R��Xo:30�>�ovff�P(XA�X,\��\����ɵ\n:0\"֍4\�x&��f6l�9��x	��\0�B!�>�׀_\\��\��z\�j�d�\�U�F�j*\�\�`�~�\�\�߻�\�n��`�R�\�\��2;nS��T�$u���I�a�i�|����,\�\�����}�c�\�\�\��\�\�p�☁4\�ƒ�HP.�Sv�\�&�\�\�R=@&\�\�\�M�k-�\�\�\�\��\�ak���i�L&�_�\�\'��Mw�6^	\���0\�h�>��x�\�n�\Z�\�4D�B\�V�N�`5��f�Y�z\�M�F\���6�	\��|\�\�TJ5Ұ�|>Ua`Nl<�\"�8�\�i�@�\�z�h�j�\�\����k\�U�k�\r�QQg\�.Sy܉��D�)5��\�^�y\0\0\0\0IEND�B`�','123123123','123123'),(2,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0\�w=�\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0�IDATHKݔ\�kA\��\�\�l�n\�hm$F[,�\�H�ԛ\�=(B{\�ZUP,x)��B=�x���/�U�5� 4\�f#�Q\Z�F7\�<\�\�\��l\�Mw{�\�vg~ߙ�}g\��\Z��V�󨳳�8E3ǚ�\�b-�5mEʶ0n\��\�\�\�\�\�x��j\rXH+y\�?��֖\�_\���ڱ\r\Z8|[��#�fv��\�o�ba5W�J,\�a=>�K%(�_\�]�k_l�p8~�p\�\�M�e[\��C��GE\�{�Pt�+vyñ�7�+\�{\��\�4\�\�q\�k\�:�|�#(��b\\\�U��Ii�\���o@�Tn���Hd=�zy5I1,�\�@�h8�<x!\�)iHkRv����]\�7\�:=jh�\���-2�B\�t=f\"\�\�G\'Q)\�}_�\\HQ\\��ڂ��\�\�rWJ\'�n\ZhT\�K\�\�N}%s����`�\�Ǧ��ffi��(vA�\��\�\�\�-\�0L��\�%oVJ�f�:VN�\�0����a��\�\���8OTk��\��_`|\�L\\��#�5��ȌE\�nER�\�{Q��m�\�!�L² �\"�5�\r\Z�D�Q��^Pn{\�6`JY\�, Y����֨\�N�vx���\�~p�bD�F5\��F�;��=���}D�\�0EM��\�W�\�#\�S\� �ZԢ\�\�\\\�80����(�!j�k*����S4[�sW�wO��\�\0�\�\���(\�\0\0\0\0IEND�B`�','lock','padlock'),(3,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0\�w=�\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0�IDATHKݔ\�kA\��H�I\�n�J�	�ĨM\�!=\n��`�\��8b�\�C+XAГ��zTă���(��Tb\�M�Z�\�$6\�ݬ\�\�\�Gw\�l/~`v\���\�\�o\�7�\�P�\�K[�N����!H\��\�\r�Fڼ\�\�\Z\�m��\�\��\�C�GB� J�H)�ʰQ�9����\Z2ު۰e\0�s\�?z�������\�G�\\\\\�\�uamsԄ_PN�;���\�Ft�\�3r�8~#\"o\�\�}�\�AMFE��m��YW\�l��X\�^\�����)\�\��\�jj{����\�I�\�]ǚ\�:h�#�\�S���g�f���\�_�,\'	�\�\�aM�.\0��P\n\�H5%��\"\�dՉ\��\n��%\��j\Z`�<�E��l�\�ڊ�\�N f�do\�]{�X��y\�/�����\�roʫ\�\Zm��\�\�k�~:�~�]\�===)�5�op�\��4ut)��\�:h\����J%\�2&�\�\�p��\�\���F\��pw\��T`�3m�\�f\�\\;W._�D\"�\�Θ>\n�Bx��ׇ\�Θ\�p8 �L�\�C0�jgL\�8�~?0��\�b:\0�cQ݇ZA7T�oa8�����b�X/F�\�\�\�,\r\�4_�J��[zX���\�R�ɤS�\��LV�ɼf50|�W#�HP�$\��S\��!�R�� �J�d�Z��\�\���X\�\��\0�\�&C\�\0��\0\0\0\0IEND�B`�','password','paswword white');
/*!40000 ALTER TABLE `tryimage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-05 11:59:13
