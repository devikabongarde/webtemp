-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: login_system
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'prithvi','123'),(2,'prithviraj ','scrypt:32768:8:1$BwPJ2X2Kr1ZgLnqc$eb7b0ea8a3083a9e2d8f6243b35ac0c1f9916f226df0886bd397367f06f09b455838beb8368dc9133f989b896b71def9e66f7361a9976d9e0f3bc82f79fc2eee'),(3,'qwerew','scrypt:32768:8:1$qCXPrSRqbDuRn19v$754641928115bc598e5b5508fbb62386e020da4477b8bc887c5e93cc0e2b79790878e941a4d6b76585b1d53c72820192b44dac63e39b6d9e8aa3db02b36e6528'),(4,'user','scrypt:32768:8:1$oC8GyKkhyXz3UewC$5288ed4f5330cb202bbc1477695d9405b6d9446ae52aab2334a9220737cf7dadfa8b360331209efad93f79d9b77c744e2c49593bec335d20f948cb5207ebe147'),(5,'one','scrypt:32768:8:1$gREC0T3omGH3qHv6$0685d24caed0dcef5b3b7cc24e0b0ef397c7cd63ff31295d7fceff7574094127bf229efa5bcfaaccbde2ba6748645e4fc9b41a808e0420d85c3e41b1ad7d1dc4'),(6,'vinayak','scrypt:32768:8:1$LmpqtDmKiVE2R8dy$5158dfd16df702956359ef46b5066740b3c9b8908576ba35bbae56c9876c687d3cd48730a08956cf4ff310fbf57c1d80ef55cbc6784b42033be4923fce3eff4c'),(7,'vinu','scrypt:32768:8:1$OS2kxdyJmyxgmK2U$a4d0047487d824c7aebae189a139b48f86bd3d30df1c5960fe91843662af04e5f39bca1b770a831fa227a2873055abcacac25edbd21894d7e62e9d27bdfe184f'),(8,'dev ','scrypt:32768:8:1$08JmDl8B74GV1I1S$93b70d98cc5c8813b5d80bbe11f5d1a0793c5045fbbe84d1ad5f702b28c5e3c79c0a89eafd1b053d7e70517fb791ffd996e477db5f1494477dda05fd00f3902c'),(9,'one ','scrypt:32768:8:1$LdR06K5WvYCIOsGM$7ec29d651dea19e1a7614566a9301f979ce6f0e713b18adf5c27308fc4f4ce4ee4c0093e1612aa6a318c519974d553e7e664fbb5064cf2913ea27da0b74c79cb'),(10,'ui','scrypt:32768:8:1$pVVq71umqI98jdMe$462fe55da6ed08531b62c1598c1e8be7ddf1fd2ac927a6d4d3a284fd5c44274653cb0d554f2b9025596c05751bf5a6c6d48a0d3717d9354c8d381a4c6df3b75d'),(13,'ui1','scrypt:32768:8:1$Ey2YqMXp2sNontgw$bf90425c99463e87764fe40e866b6441533ed9b2690d5ae6413b0e86b69450103ff3d463fba6802fab1111a354693a1e2defd96d513f6b330835799d8a14d0fa');
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

-- Dump completed on 2024-11-06 14:53:40