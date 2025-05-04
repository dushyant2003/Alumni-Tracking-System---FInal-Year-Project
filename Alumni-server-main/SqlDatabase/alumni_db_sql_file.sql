-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: alumni
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `alumnus_bio`
--



DROP TABLE IF EXISTS `alumnus_bio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnus_bio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `batch` year DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `connected_to` text COLLATE utf8mb4_general_ci,
  `avatar` text COLLATE utf8mb4_general_ci,
  `status` tinyint(1) DEFAULT '0' COMMENT '0= Unverified, 1= Verified',
  `DATETIME_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnus_bio`
--

LOCK TABLES `alumnus_bio` WRITE;
/*!40000 ALTER TABLE `alumnus_bio` DISABLE KEYS */;
INSERT INTO `alumnus_bio` VALUES (31,'Deepansh Sharma',NULL,NULL,1,'deepanshsharma@gmail.com',NULL,NULL,1,'2025-03-26 15:14:59'),(32,'Ishita Jain',NULL,NULL,7,'ishitajain@gmail.com',NULL,NULL,1,'2025-03-26 15:16:45'),(33,'Gaurav Singh Mangat',NULL,NULL,1,'mangatgaurav@gmail.com',NULL,NULL,0,'2025-03-26 15:17:22'),(34,'Anish Sharma',NULL,NULL,1,'anisharma@gmail.com',NULL,NULL,1,'2025-03-26 15:18:01'),(35,'rahul',NULL,NULL,101,'rahul@gmail.com',NULL,NULL,1,'2025-05-01 18:02:15'),(36,'bhumit',NULL,NULL,1,'bhumit@gmail.com',NULL,NULL,1,'2025-05-01 18:06:58'),(37,'Shailesh',NULL,NULL,1,'shailesh@gmail.com',NULL,NULL,1,'2025-05-01 18:11:37');
/*!40000 ALTER TABLE `alumnus_bio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_general_ci,
  `job_title` text COLLATE utf8mb4_general_ci,
  `description` text COLLATE utf8mb4_general_ci,
  `user_id` int DEFAULT NULL,
  `DATETIME_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'IT Company','Remote','Web Developer','<p><strong><u>Lorem ipsum</u></strong> dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><ol><li><em> Sagittis eu volutpat odio facilisis mauris sit amet massa vitae.</em> In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.</li><li><em>Viverra justo nec ultrices dui. L</em>eo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada.</li><li> <em>Amet aliquam id diam maecenas ultricies mi eget mauris. </em>Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.</li></ol>',1,'2020-10-15 14:14:27'),(8,'Celebal Technologies','Jaipur','Go Developer','<p>Go lang developer</p>',1,'2025-03-26 14:57:46');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course` text COLLATE utf8mb4_general_ci,
  `about` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'B.Tech',''),(7,'M.Tech',NULL),(8,'MBA',NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_commits`
--

DROP TABLE IF EXISTS `event_commits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_commits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_commits`
--

LOCK TABLES `event_commits` WRITE;
/*!40000 ALTER TABLE `event_commits` DISABLE KEYS */;
INSERT INTO `event_commits` VALUES (12,1,2),(13,1,1);
/*!40000 ALTER TABLE `event_commits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_general_ci,
  `schedule` datetime DEFAULT NULL,
  `banner` text COLLATE utf8mb4_general_ci,
  `DATETIME_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (10,'Pravah -2025','<p>Annual Techno Cultural Fest</p>','2025-03-29 11:00:00',NULL,'2025-03-26 15:06:19');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_comments`
--

DROP TABLE IF EXISTS `forum_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic_id` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_general_ci,
  `user_id` int DEFAULT NULL,
  `DATETIME_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_comments`
--

LOCK TABLES `forum_comments` WRITE;
/*!40000 ALTER TABLE `forum_comments` DISABLE KEYS */;
INSERT INTO `forum_comments` VALUES (27,4,'wow great... Hello world bro edited',2,'2024-03-07 12:51:48'),(28,4,'thats cool',1,'2024-03-14 15:58:08');
/*!40000 ALTER TABLE `forum_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_topics`
--

DROP TABLE IF EXISTS `forum_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_topics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `user_id` int DEFAULT NULL,
  `DATETIME_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_topics`
--

LOCK TABLES `forum_topics` WRITE;
/*!40000 ALTER TABLE `forum_topics` DISABLE KEYS */;
INSERT INTO `forum_topics` VALUES (8,'Discussion on Cloud Technologies','<p>Meet the top DevOps engineers about their cloud journey.</p>',1,'2025-03-26 15:12:19'),(9,'Discussion on IOT ','<p>Explore the world of IOT</p>',1,'2025-03-26 15:13:03');
/*!40000 ALTER TABLE `forum_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_general_ci,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (19,'Public\\Images\\pravah.jpg','Pravah 2025 standup comedy show Ravi Gupta.','2025-05-04 16:29:35');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_settings`
--

DROP TABLE IF EXISTS `system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci,
  `email` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover_img` text COLLATE utf8mb4_general_ci,
  `about_content` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_settings`
--

LOCK TABLES `system_settings` WRITE;
/*!40000 ALTER TABLE `system_settings` DISABLE KEYS */;
INSERT INTO `system_settings` VALUES (1,'SKIT University','info@skit.ac.in','(+92) 61 9210134','1602738120_pngtree-purple-hd-business-banner-image_5493.jpg','Swami Keshvanand Institute of Technology, Management & Gramothan (SKIT) inspired from the learnings of Swami Keshvanand, was established in the year 2000 by Technocrats and Managers Society of Advanced Learning and Gramothan. Today the institute is recognized as one of the centers of academic excellence in Northern India. The Institute is affiliated to Rajasthan Technical University, Kota for offering Postgraduate and Graduate Courses in Engineering and Management. Our sister institution Swami Keshvanand Institute of Pharmacy (SKIP) is affiliated to Rajasthan University of Health Sciences for offering Graduate Course in Pharmacy.\n <br/>Located in the Pink City Jaipur, which is a blend of traditional history and modern outlook, SKIT is putting in efforts for making industry ready engineers and managers through effective Industry –Institute Interface. Apart from University curriculum SKIT also pursues activities for research and development in various fields.\nThe green landscaping, aesthetic elegance of arches and the vibrant pursuit of knowledge by the young aspirants make the environment serene, pleasant and dynamic\n\nStudents joining the institute share the box full of opportunities for professional and personal development through an environment of practical orientation, industrial interaction and student led activities which help the students to develop good communication skills, integrated personality and greater competitive spirit.');
/*!40000 ALTER TABLE `system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_general_ci,
  `type` varchar(10) COLLATE utf8mb4_general_ci DEFAULT 'Alumnus' COMMENT 'Admin,Alumnus',
  `auto_generated_pass` text COLLATE utf8mb4_general_ci,
  `alumnus_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dushyant Bansal','admin@gmail.com','$2b$10$T3AaDtVF15J2PvFAEOrKge0b6/gWShoQnqoN0gz8MLkyQSUJHqyIC','admin','',0),(2,'Meet Devin','alumnus@gmail.com','$2b$10$KP.4g9uiF9kvTQGgRUhym.d7G8CANbljBJVNs9syiaGBT.tllzS3m','alumnus','',1),(36,'Deepansh Sharma','deepanshsharma@gmail.com','$2b$10$lIIKt5YiwdBWfGRVTb98Q.fGj2ZMyCXOon4FE4z2WZfRmbCkW9lwe','alumnus',NULL,31),(37,'Ishita Jain','ishitajain@gmail.com','$2b$10$6XJ5WsUQKEa63odHqVJdqeEfaK08b5c.oWWXDEMIZBpNFTDzs0bWm','alumnus',NULL,32),(38,'Gaurav Singh Mangat','mangatgaurav@gmail.com','$2b$10$teZGE19M.rb2HaynohUS0.ECrf2ZU9yUbPAr2qWS/a/VLvZhIy3JC','alumnus',NULL,33),(39,'Anish Sharma','anisharma@gmail.com','$2b$10$F63RpfO45m/nGTu/YjH.DuQXzUhKlhNt0DVhrUQtTiCEBe6NdkrFa','alumnus',NULL,34),(40,'rahul','rahul@gmail.com','$2b$10$voE2lWO6AuVQx46EE8DMp.tSdkG4LErqpvZ.FPwwId7hg.Wp4G03W','alumnus',NULL,35),(41,'bhumit','bhumit@gmail.com','$2b$10$2j2KZ2oJjkCb0Q1xBg0tduLyXWD0E8Rr04mIRk1XREhn7FFPM/TCS','alumnus',NULL,36),(42,'Shailesh','shailesh@gmail.com','$2b$10$iuzPR7GU55U4qTBX3CO4D.f3nHPRVMdcetoY1mwfr2NlsQeAYL6su','alumnus',NULL,37),(43,'Pulkit Bhatt','pulkit@gmail.com','$2b$10$iuzPR7GU55U4qTBX3CO4D.f3nHPRVMdcetoY1mwfr2NlsQeAYL6su','alumnus',NULL,38);
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

-- Dump completed on 2025-05-04 16:38:53
