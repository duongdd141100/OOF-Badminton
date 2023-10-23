-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: oof_badminton
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` float NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Vợt cầu lông',NULL,NULL,NULL,NULL),(2,'Giày cầu lông',NULL,NULL,NULL,NULL),(3,'Áo cầu lông',NULL,NULL,NULL,NULL),(4,'Quần cầu lông',NULL,NULL,NULL,NULL),(5,'Tất cầu lông',NULL,NULL,NULL,NULL),(6,'Bao vợt',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `id` float NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_id` float DEFAULT NULL,
  `product_size_id` float DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl5mnj9n0di7k1v90yxnthkc73` (`order_id`),
  KEY `FKotu2lheo1suuwhwn7c81a502o` (`product_size_id`),
  CONSTRAINT `FKl5mnj9n0di7k1v90yxnthkc73` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKotu2lheo1suuwhwn7c81a502o` FOREIGN KEY (`product_size_id`) REFERENCES `product_size` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` float NOT NULL AUTO_INCREMENT,
  `status` int DEFAULT NULL,
  `user_id` float DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `id` float NOT NULL AUTO_INCREMENT,
  `stock_quantity` int DEFAULT NULL,
  `product_id` float DEFAULT NULL,
  `size_id` float DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9qjgp0xvl5jfetdt683i7wqwr` (`product_id`),
  KEY `FK1yl8bbmokvonm64131xlscnci` (`size_id`),
  CONSTRAINT `FK1yl8bbmokvonm64131xlscnci` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  CONSTRAINT `FK9qjgp0xvl5jfetdt683i7wqwr` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,14,1,NULL,NULL,NULL,NULL,NULL),(2,11,2,NULL,NULL,NULL,NULL,NULL),(3,10,3,NULL,NULL,NULL,NULL,NULL),(4,26,4,NULL,NULL,NULL,NULL,NULL),(5,14,5,NULL,NULL,NULL,NULL,NULL),(6,14,6,NULL,NULL,NULL,NULL,NULL),(7,12,7,NULL,NULL,NULL,NULL,NULL),(8,11,8,NULL,NULL,NULL,NULL,NULL),(9,8,9,NULL,NULL,NULL,NULL,NULL),(10,5,10,NULL,NULL,NULL,NULL,NULL),(11,5,11,NULL,NULL,NULL,NULL,NULL),(12,7,12,NULL,NULL,NULL,NULL,NULL),(13,4,13,NULL,NULL,NULL,NULL,NULL),(14,6,14,NULL,NULL,NULL,NULL,NULL),(15,6,15,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` float NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `status` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` float DEFAULT NULL,
  `supplier_id` float DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  KEY `FK6i174ixi9087gcvvut45em7fd` (`supplier_id`),
  CONSTRAINT `FK6i174ixi9087gcvvut45em7fd` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Astrox 88D Pro',3850000,1,NULL,1,1,NULL,NULL,NULL,NULL),(2,'Astrox 88D Game',2850000,1,NULL,1,1,NULL,NULL,NULL,NULL),(3,'Astrox 100zz',4150000,1,NULL,1,1,NULL,NULL,NULL,NULL),(4,'Astrox 77 Pro',3750000,1,NULL,1,1,NULL,NULL,NULL,NULL),(5,'Astrox 77 xanh chuối',3250000,1,NULL,1,1,NULL,NULL,NULL,NULL),(6,'Halbertec 8000',3700000,1,NULL,1,2,NULL,NULL,NULL,NULL),(7,'Lining Bladex 600',3750000,1,NULL,1,2,NULL,NULL,NULL,NULL),(8,'Victor Ryuga II',3700000,1,NULL,1,3,NULL,NULL,NULL,NULL),(9,'TK-Rabbit',800000,1,NULL,1,3,NULL,NULL,NULL,NULL),(10,'Mizuno Speedflex 9.3',2680000,1,NULL,1,4,NULL,NULL,NULL,NULL),(11,'65Z3 C-90 Wide',2650000,1,NULL,2,1,NULL,NULL,NULL,NULL),(12,'65Z3 Kurenai',2950000,1,NULL,2,1,NULL,NULL,NULL,NULL),(13,'SC6 Lindan',2550000,1,NULL,2,1,NULL,NULL,NULL,NULL),(14,'Eclipsion Z3 Men - Xanh Navy',2600000,1,NULL,2,1,NULL,NULL,NULL,NULL),(15,'AYTT003-3',1400000,1,NULL,2,2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` float NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN',NULL,NULL,NULL,NULL),(2,'CUSTOMER',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` float NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'36',_binary '',NULL,NULL,NULL,NULL),(2,'L',_binary '',NULL,NULL,NULL,NULL),(3,'L',_binary '\0',NULL,NULL,NULL,NULL),(4,'M',_binary '',NULL,NULL,NULL,NULL),(5,'M',_binary '\0',NULL,NULL,NULL,NULL),(6,'S',_binary '',NULL,NULL,NULL,NULL),(7,'S',_binary '\0',NULL,NULL,NULL,NULL),(8,'37',_binary '',NULL,NULL,NULL,NULL),(9,'38',_binary '',NULL,NULL,NULL,NULL),(10,'39',_binary '',NULL,NULL,NULL,NULL),(11,'40',_binary '',NULL,NULL,NULL,NULL),(12,'41',_binary '',NULL,NULL,NULL,NULL),(13,'42',_binary '',NULL,NULL,NULL,NULL),(14,'43',_binary '',NULL,NULL,NULL,NULL),(15,'36',_binary '\0',NULL,NULL,NULL,NULL),(16,'37',_binary '\0',NULL,NULL,NULL,NULL),(17,'38',_binary '\0',NULL,NULL,NULL,NULL),(18,'39',_binary '\0',NULL,NULL,NULL,NULL),(19,'40',_binary '\0',NULL,NULL,NULL,NULL),(20,'41',_binary '\0',NULL,NULL,NULL,NULL),(21,'42',_binary '\0',NULL,NULL,NULL,NULL),(22,'43',_binary '\0',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` float NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Yonex',NULL,NULL,NULL,NULL),(2,'Lining',NULL,NULL,NULL,NULL),(3,'Victor',NULL,NULL,NULL,NULL),(4,'Mizuno',NULL,NULL,NULL,NULL),(5,'Kumpoo',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` float NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` float DEFAULT NULL,
  `created_by` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_by` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1','User 1',_binary '','2000-11-14 07:00:00.000000',NULL,'user1@gmail.com','0999999999','$2a$10$nQ2eLYKGXftfvtKEa9df3.eaY5aRBbC8uX8rfDOxUMKtu6ysRP6C2',2,NULL,'2023-10-17 10:04:40.336000',NULL,'2023-10-17 10:04:40.336000'),(2,'admin1','Admin 1',_binary '','2000-11-14 07:00:00.000000',NULL,'admin1@gmail.com','0888888888','$2a$10$nQ2eLYKGXftfvtKEa9df3.eaY5aRBbC8uX8rfDOxUMKtu6ysRP6C2',1,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2023-10-22 14:49:55
