-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: report
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buyer` (
  `userid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `tel` int(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES ('1','小王',23,'男','北京',1214141),('2','大壮',44,'男','上海',1231234141),('3','恬妞',33,'女','上海',1231234141);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `goods_id` varchar(255) NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `cost_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('1','奶粉',5,10,NULL),('2','水杯',3,5,NULL),('3','被子',100,200,NULL),('4','上衣',58,100,NULL);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade`
--

DROP TABLE IF EXISTS `trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trade` (
  `trading_id` int(11) NOT NULL,
  `trading_good_id` int(11) NOT NULL,
  `trading_user_id` int(11) NOT NULL,
  `trading_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade`
--

LOCK TABLES `trade` WRITE;
/*!40000 ALTER TABLE `trade` DISABLE KEYS */;
INSERT INTO `trade` VALUES (1,1,3,10),(2,1,1,4),(3,3,2,50),(4,4,3,10),(5,2,3,70);
/*!40000 ALTER TABLE `trade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-31 15:05:52
