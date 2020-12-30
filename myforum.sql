-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: myforum
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Current Database: `myforum`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `myforum` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `myforum`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `passwd` varchar(30) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `topic` varchar(30) NOT NULL,
  `postDate` datetime NOT NULL,
  `content` varchar(30) NOT NULL,
  `clickCount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_uname_post_user` (`uname`),
  CONSTRAINT `fk_uname_post_user` FOREIGN KEY (`uname`) REFERENCES `user` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('1','test','欢迎大家踊跃发帖','2020-12-27 00:00:00','你好啊',6),('10','testhello','teettrtrtrt','2020-12-29 23:00:49','rtrtrtrr',0),('11','testhello','吐了啊','2020-12-29 23:02:03','图了啊',0),('12','testhello','我吐了啊','2020-12-29 23:07:34','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊',2),('13','12355','燊少好！！！！','2020-12-30 20:32:09','燊少好！！！！',3),('14','拳击小袋鼠','彬少彬少！！！','2020-12-30 21:13:37','宿舍第一台ipone12',0),('3','testhello','大家好我是新人','2020-12-27 00:00:00','你们好',0),('4','test','我服了','2020-12-27 00:00:00','我是新人',0),('5','testhello','我服了','2020-12-29 00:00:00','你好啊',0),('6','testhello','你们好啊','2020-12-29 00:00:00','哈哈',0),('7','testhello','大家好12312','2020-12-29 21:15:40','123124',0),('8','testhello','piukljdfu','2020-12-29 21:39:30','hello',0),('9','testhello','查看时间','2020-12-29 22:50:06','',0);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `id` varchar(30) NOT NULL,
  `pid` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `replyDate` datetime NOT NULL,
  `content` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_uname_reply_user` (`uname`),
  CONSTRAINT `fk_uname_reply_user` FOREIGN KEY (`uname`) REFERENCES `user` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES ('10','1','testhello','2020-12-29 00:00:00','helloasdf'),('11','3','testhello','2020-12-29 00:00:00','你好'),('12','1','testhello','2020-12-29 00:00:00','啊啊啊啊啊啊啊啊啊啊'),('13','7','testhello','2020-12-29 00:00:00','123'),('14','6','testhello','2020-12-29 00:00:00','123'),('15','9','testhello','2020-12-29 00:00:00','给我成功！'),('16','8','testhello','2020-12-29 00:00:00','eketyj'),('17','3','testhello','2020-12-29 00:00:00','mbeb'),('18','5','testhello','2020-12-29 00:00:00','你觉得呢?'),('19','10','testhello','2020-12-29 00:00:00','cadfdf'),('20','10','testhello','2020-12-29 00:00:00','q3gerhthwrh'),('21','6','testhello','2020-12-29 00:00:00','dbug'),('22','4','testhello','2020-12-29 00:00:00','qwerpoiuasdf;lkj'),('23','8','testhello','2020-12-29 00:00:00','12412412'),('24','8','testhello','2020-12-29 00:00:00','5464575'),('25','5','testhello','2020-12-29 23:22:07','好了'),('26','1','a123','2020-12-30 21:04:26','123'),('3','1','testhello','2020-12-27 00:00:00','你好'),('4','1','test','2020-12-27 00:00:00','啊啊啊啊啊啊啊啊啊啊啊啊啊'),('5','1','test','2020-12-27 00:00:00','123'),('8','1','testhello','2020-12-29 00:00:00','123'),('9','1','testhello','2020-12-29 00:00:00','你好');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `name` varchar(30) NOT NULL,
  `passwd` varchar(30) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('12355','123456'),('a123','123'),('hei','123'),('test','1234'),('testhello','1234'),('拳击小袋鼠','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-30 21:37:39
