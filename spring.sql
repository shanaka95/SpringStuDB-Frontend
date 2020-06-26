-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: springdb
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `userid` varchar(255) NOT NULL,
  `ca` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `ese` varchar(255) DEFAULT NULL,
  `examid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `username` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('TE83047','USER'),('shanaka951','USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `springdb_userexams`
--

DROP TABLE IF EXISTS `springdb_userexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `springdb_userexams` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `springdb_userexams`
--

LOCK TABLES `springdb_userexams` WRITE;
/*!40000 ALTER TABLE `springdb_userexams` DISABLE KEYS */;
/*!40000 ALTER TABLE `springdb_userexams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `indexno` varchar(20) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('TE83047','Shanaka Anuradha','ICT1600055','Information Communication Technology','2015/2016','12231051.jpeg'),('TE83048','Testing user 1','EGT1600087','Engineering Technology','2015/2016','3.JPG'),('12347','Testing user 2','ICT1600055','Information Communication Technology','2015/2016','12231051.jpeg'),('12348','Testing user 4','ICT1600055','Information Communication Technology','2015/2016','12231051.jpeg');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `credit` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Testing Subject 1',2),(2,'Testing Subject 2',3),(3,'Testing Subject 3',1),(4,'Testing Subject 4',2),(5,'Testing Subject 5',2),(6,'Testing Subject 6',1),(7,'Testing Subject 7',3),(8,'Testing Subject 8',3),(9,'Testing Subject 9',3),(10,'Testing Subject 20',3),(11,'Testing Subject 11',1),(12,'Testing Subject 12',1),(13,'Testing Subject 13',2);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('TE83047',_binary '','$2a$10$m9QIOdUjA4FeZzG8aUTX8eDnx0t0FAoJP8WyfN5WgU4Sbscjsd/2.','shanaka95'),('TE83048',_binary '','$2y$12$PSazVPA3teeXq8ofxhhxkOTyKFCPVHjEF8Qm/b669ZeZO0zJMYwQy','shanaka951');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userexams`
--

DROP TABLE IF EXISTS `userexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userexams` (
  `userid` varchar(10) DEFAULT NULL,
  `examid` int(10) DEFAULT NULL,
  `subid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id` varchar(255) NOT NULL,
  `ca` varchar(10) DEFAULT NULL,
  `ese` varchar(10) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `credits` varchar(255) DEFAULT NULL,
  `subname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userexams`
--

LOCK TABLES `userexams` WRITE;
/*!40000 ALTER TABLE `userexams` DISABLE KEYS */;
INSERT INTO `userexams` VALUES ('TE83047',1,1,'2020-07-01 00:00:00','B','First Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',1,2,'2020-07-01 00:00:00','A','First Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',1,3,'2020-07-01 00:00:00','A-','First Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',1,4,'2020-07-01 00:00:00','B-','First Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',1,5,'2020-07-01 00:00:00','A+','First Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',1,6,'2020-07-01 00:00:00','C','First Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',2,7,'2020-07-01 00:00:00','C','Second Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',2,8,'2020-07-01 00:00:00','C+','Second Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',2,9,'2020-07-01 00:00:00','A+','Second Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',2,10,'2020-07-01 00:00:00','B+','Second Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',3,11,'2020-07-01 00:00:00','B+','Third Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',3,12,'2020-07-01 00:00:00','A+','Third Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83047',3,13,'2020-07-01 00:00:00','C+','Third Semester Examination','','Pass','Pass',NULL,NULL,NULL),('TE83048',4,14,'2020-07-01 00:00:00','C+','Fourth Semester Examination','1','Pass','Pass',NULL,NULL,NULL);
/*!40000 ALTER TABLE `userexams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userexams2`
--

DROP TABLE IF EXISTS `userexams2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userexams2` (
  `userid` varchar(255) NOT NULL,
  `ca` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `ese` varchar(255) DEFAULT NULL,
  `examid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `subid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userexams2`
--

LOCK TABLES `userexams2` WRITE;
/*!40000 ALTER TABLE `userexams2` DISABLE KEYS */;
/*!40000 ALTER TABLE `userexams2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2020-06-27  0:01:15
