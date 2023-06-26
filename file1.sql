-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: healthsystem
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Doctor` (
  `dname` varchar(30) DEFAULT NULL,
  `ddomain` varchar(40) DEFAULT NULL,
  `dlocation` varchar(40) DEFAULT NULL,
  `demail` varchar(40) NOT NULL,
  `dphone` int DEFAULT NULL,
  PRIMARY KEY (`demail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES ('murali','cardio','siliconvalley','bubble@gmail.com',245070),('monica','cardio','siliconvalley','bubble1@gmail.com',243090),('nithish','cardio','siliconvalley','bubble2@gmail.com',244070),('Emily Davis','neurologist','bangalore','emilydavis@example.com',239080),('Jane Smith','pulmonologist','bangalore','jane@example.com',239080),('John Doe','cardio','bangalore','john@example.com',239080),('Michal Wilson','dermatogist','bangalore','mic@example.com',239080),('Robert','opthalmologist','bangalore','robert@example.com',239080),('Sarah','pediacare','bangalore','sarah@example.com',239080),('sunder','general','chennai','sunder@gmail.com',238090),('markzuck','ent','chennai','zuck@gmail.com',239080);
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `app_id` int NOT NULL AUTO_INCREMENT,
  `pat_name` varchar(30) DEFAULT NULL,
  `pat_mail` varchar(30) DEFAULT NULL,
  `doc_name` varchar(30) DEFAULT NULL,
  `doc_domain` varchar(30) DEFAULT NULL,
  `app_date` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'submitted',
  `mail` varchar(30) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (42,'testuser1','testuser1@gmail.com','Jane Smith','pulmo','30-09-3000','accepted','janesmith@example.com','2:00PM'),(43,'testuser1','testuser1@gmail.com','Emily Davis','neuro','12-06-2023','accepted','emilydavis@example.com','2:00PM'),(46,'testuser4','testuser4@gmail.com','Emily Davis','neuro','12/05/2023','accepted','emilydavis@example.com','10:00AM'),(47,'testuser9','testuser9@gmail.com','Emily Davis','neuro','12-05-2023','accepted','emilydavis@example.com','10:00AM'),(48,'testuser9','testuser9@gmail.com','Jane Smith','pulmo','12-06-2023','accepted','janesmith@example.com','9:00AM'),(49,'testuser9','testuser9@gmail.com','Emily Davis','neuro','1-06-2023','accepted','emilydavis@example.com','9:00AM');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docfb`
--

DROP TABLE IF EXISTS `docfb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docfb` (
  `did` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `domname` varchar(40) DEFAULT NULL,
  `docname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docfb`
--

LOCK TABLES `docfb` WRITE;
/*!40000 ALTER TABLE `docfb` DISABLE KEYS */;
INSERT INTO `docfb` VALUES (1,8,'general','sunder'),(2,9,'cardio','murali'),(3,10,'cardio','murali'),(4,11,'neurologist','Emily Davis');
/*!40000 ALTER TABLE `docfb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duser1`
--

DROP TABLE IF EXISTS `duser1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duser1` (
  `dname` varchar(30) DEFAULT NULL,
  `demail` varchar(50) NOT NULL,
  `dphno` bigint DEFAULT NULL,
  `dgender` varchar(10) DEFAULT NULL,
  `ddoorno` int DEFAULT NULL,
  `dcity` varchar(20) DEFAULT NULL,
  `dcountry` varchar(20) DEFAULT NULL,
  `dzipcode` int DEFAULT NULL,
  `ddob` varchar(20) DEFAULT NULL,
  `dpassword` varchar(30) DEFAULT NULL,
  `dspeciality` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`demail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duser1`
--

LOCK TABLES `duser1` WRITE;
/*!40000 ALTER TABLE `duser1` DISABLE KEYS */;
INSERT INTO `duser1` VALUES ('Emily Davis','emilydavis@example.com',7397119892,'Female',109,'bangalore','china',607003,'1980-07-15','neuropass','Neurologist'),('Jane Smith','janesmith@example.com',9876543210,'Female',456,'City','Country',54321,'1985-05-10','pass123','Pulmonologist'),('John Doe','johndoe@example.com',1234567890,'Male',123,'City','Country',12345,'1990-01-01','password123','Cardiologist'),('Michael Wilson','michaelwilson@example.com',4445556666,'Male',202,'City','Country',54321,'1975-03-25','dermapass','Dermatologist'),('Robert Johnson','robertjohnson@example.com',5551234567,'Male',789,'City','Country',67890,'1978-09-20','securepass','Ophthalmologist'),('Sarah Thompson','sarahthompson@example.com',7778889999,'Female',303,'City','Country',98765,'1995-11-05','pedipass','Pediatrician');
/*!40000 ALTER TABLE `duser1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duser2`
--

DROP TABLE IF EXISTS `duser2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duser2` (
  `demail` varchar(50) NOT NULL,
  `dheight` int DEFAULT NULL,
  `dweight` int DEFAULT NULL,
  `dedulevel` varchar(50) DEFAULT NULL,
  `dlicensenumber` int DEFAULT NULL,
  `dexperience` int DEFAULT NULL,
  `dpreinstitution` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`demail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duser2`
--

LOCK TABLES `duser2` WRITE;
/*!40000 ALTER TABLE `duser2` DISABLE KEYS */;
INSERT INTO `duser2` VALUES ('emilydavis@example.com',160,56,'MBBS',101,5,'AIIMS'),('janesmith@example.com',160,56,'MBBS',101,5,'AIIMS'),('johndoe@example.com',160,56,'MBBS',101,5,'AIIMS'),('michaelwilson@example.com',160,56,'MBBS',101,5,'AIIMS'),('robertjohnson@example.com',160,56,'MBBS',101,5,'AIIMS'),('sarahthompson@example.com',160,56,'MBBS',101,5,'AIIMS');
/*!40000 ALTER TABLE `duser2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `umail` varchar(20) NOT NULL,
  `uoption` varchar(50) NOT NULL,
  `ucontent` varchar(200) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'testuser4@gmail.com','Appointment','good'),(2,'testuser4@gmail.com','Website','good'),(3,'testuser4@gmail.com','Website','good'),(4,'testuser4@gmail.com','Appointment','good'),(5,'testuser4@gmail.com','Health Assessment','good'),(6,'testuser4@gmail.com','Others','good'),(7,'testuser4@gmail.com','Appointment','good'),(8,'testuser9@gmail.com','Doctor','good'),(9,'testuser9@gmail.com','Doctor','good'),(10,'testuser9@gmail.com','Doctor','good'),(11,'testuser9@gmail.com','Doctor','good ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huser`
--

DROP TABLE IF EXISTS `huser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huser` (
  `uemail` varchar(30) NOT NULL,
  `uheight` int DEFAULT NULL,
  `uweight` int DEFAULT NULL,
  `usurgery` varchar(50) DEFAULT NULL,
  `uallergy` varchar(50) DEFAULT NULL,
  `uchronic` varchar(40) DEFAULT NULL,
  `ualcohol` varchar(20) DEFAULT NULL,
  `udrugs` varchar(20) DEFAULT NULL,
  `utobacco` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huser`
--

LOCK TABLES `huser` WRITE;
/*!40000 ALTER TABLE `huser` DISABLE KEYS */;
INSERT INTO `huser` VALUES ('testuser1@gmail.com',185,56,'yes','no','yes',NULL,'yes','no'),('testuser10@gmail.com',187,56,'yes','no','yes',NULL,'yes','no'),('testuser11@gmail.com',185,78,'yes','no','yes',NULL,'yes','no'),('testuser2@gmail.com',189,65,'yes','no','yes',NULL,'yes','no'),('testuser3@gmail.com',195,98,'yes','no','yes',NULL,'yes','no'),('testuser4@gmail.com',192,34,'yes','no','yes',NULL,'yes','no'),('testuser5@gmail.com',198,89,'yes','no','yes',NULL,'yes','no'),('testuser6@gmail.com',198,89,'yes','no','yes',NULL,'yes','no'),('testuser9@gmail.com',180,56,'yes','no','yes',NULL,'yes','no');
/*!40000 ALTER TABLE `huser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puser`
--

DROP TABLE IF EXISTS `puser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puser` (
  `uname` varchar(30) DEFAULT NULL,
  `udob` varchar(30) DEFAULT NULL,
  `ugender` varchar(30) DEFAULT NULL,
  `uemail` varchar(30) NOT NULL,
  `udoorno` int DEFAULT NULL,
  `ucity` varchar(30) DEFAULT NULL,
  `ucountry` varchar(50) DEFAULT NULL,
  `uzipcode` int DEFAULT NULL,
  `uphone` bigint DEFAULT NULL,
  `uoccupation` varchar(30) DEFAULT NULL,
  `uemergencyname` varchar(30) DEFAULT NULL,
  `uemergencynumber` bigint DEFAULT NULL,
  `educationlevel` varchar(30) DEFAULT NULL,
  `maritalstatus` varchar(30) DEFAULT NULL,
  `upassword` varchar(30) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puser`
--

LOCK TABLES `puser` WRITE;
/*!40000 ALTER TABLE `puser` DISABLE KEYS */;
INSERT INTO `puser` VALUES ('testuser1','2023-05-16','Male','testuser1@gmail.com',12,'bangalore','india',607002,7397119472,'business','ram',3499123901,'BE','single','test123$',NULL),('testuser9','2023-05-07','Male','testuser10@gmail.com',12,'chennai','india',607002,7397119372,'business','ram',237090,'BE','single','','qsd.png'),('testuser2','2023-05-10','Male','testuser2@gmail.com',12,'chennai','india',608002,7397118892,'business','ram',456092,'BE','single','test123$',NULL),('testuser3','2001-02-09','Male','testuser3@gmail.com',23,'chennai','india',607002,7397229472,'business','ram',239090,'BE','single','test123$',NULL),('testuser4','2003-01-29','Male','testuser4@gmail.com',23,'chennai','india',609002,7397119482,'business','ram',829010,'BE','single','test123$','YES_inputs.png'),('testuser3','2001-02-09','Male','testuser5@gmail.com',23,'chennai','india',607002,7397229472,'business','ram',239090,'BE','single','','YES_inputs.png'),('testuser6','2023-05-24','Male','testuser6@gmail.com',93,'chennai','india',608002,7397119482,'business','ram',201920,'BE','single','test123$','search.png'),('testuser9','2023-05-07','Male','testuser9@gmail.com',12,'chennai','india',607002,7397119372,'business','ram',237090,'BE','single','test123$','qsd.png');
/*!40000 ALTER TABLE `puser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29  7:44:58
