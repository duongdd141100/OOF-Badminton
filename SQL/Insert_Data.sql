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
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,NULL,NULL,NULL,NULL,'/api/image/1_banner.png'),(2,NULL,NULL,NULL,NULL,'/api/image/2_banner.png'),(3,NULL,NULL,NULL,NULL,'/api/image/3_banner.png'),(4,NULL,NULL,NULL,NULL,'/api/image/4_banner.png');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (5,72,1,35,1,'2023-11-08 00:51:16.167000',1,'2023-11-08 02:09:43.167000'),(6,5,1,3,1,'2023-11-08 00:56:45.580000',1,'2023-11-08 00:57:47.435000'),(7,16,1,6,1,'2023-11-08 01:27:53.166000',1,'2023-11-08 01:29:42.499000'),(9,1,1,8,1,'2023-11-08 14:44:52.871000',1,'2023-11-08 14:51:55.354000');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Vợt cầu lông',NULL,NULL,NULL,NULL,'/api/image/1_Vợt cầu lông.png'),(2,'Giày cầu lông',NULL,NULL,NULL,NULL,'/api/image/2_Giày cầu lông.png'),(3,'Áo cầu lông',NULL,NULL,NULL,NULL,'/api/image/3_Áo cầu lông.png'),(4,'Quần cầu lông',NULL,NULL,NULL,NULL,'/api/image/4_Quần cầu lông.png'),(5,'Tất cầu lông',NULL,NULL,NULL,NULL,'/api/image/5_Tất cầu lông.png'),(6,'Bao vợt',NULL,NULL,NULL,NULL,'/api/image/6_Bao vợt.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (9,1,NULL,'4U5',10,1,1,'2023-10-29 14:09:33.911000',1,'2023-10-29 14:09:33.911000'),(10,1,NULL,'',10,16,1,'2023-10-29 14:09:33.913000',1,'2023-10-29 14:09:33.913000'),(11,1,NULL,'4U5',11,3,1,'2023-10-29 15:03:36.920000',1,'2023-10-29 15:03:36.920000'),(16,1,NULL,'4U5',16,72,1,'2023-11-08 02:45:35.887000',1,'2023-11-08 02:45:35.887000');
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10,1,1,1,'2023-10-29 14:09:33.909000',1,'2023-10-29 14:09:33.909000'),(11,1,1,1,'2023-10-29 15:03:36.892000',1,'2023-10-29 15:03:36.892000'),(12,2,1,1,'2023-10-30 15:03:36.892000',1,'2023-10-30 15:03:36.892000'),(13,1,1,1,'2023-10-30 15:03:36.892000',1,'2023-10-30 15:03:36.892000'),(16,1,1,1,'2023-11-08 02:45:35.810000',1,'2023-11-08 02:45:35.810000'),(17,1,1,1,'2023-11-08 14:58:56.486000',1,'2023-11-08 14:58:56.486000');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,14,1,NULL,NULL,NULL,NULL,NULL),(2,11,2,NULL,NULL,NULL,NULL,NULL),(3,10,3,NULL,NULL,NULL,NULL,NULL),(4,26,4,NULL,NULL,NULL,NULL,NULL),(5,14,5,NULL,NULL,NULL,NULL,NULL),(6,14,6,NULL,NULL,NULL,NULL,NULL),(7,12,7,NULL,NULL,NULL,NULL,NULL),(8,11,8,NULL,NULL,NULL,NULL,NULL),(9,8,9,NULL,NULL,NULL,NULL,NULL),(10,5,10,NULL,NULL,NULL,NULL,NULL),(11,5,11,12,NULL,NULL,NULL,NULL),(13,4,13,12,NULL,NULL,NULL,NULL),(14,6,14,12,NULL,NULL,NULL,NULL),(15,6,15,12,NULL,NULL,NULL,NULL),(16,2,12,12,NULL,NULL,NULL,NULL),(72,20,16,3,NULL,NULL,NULL,NULL),(73,20,17,3,NULL,NULL,NULL,NULL),(74,20,18,3,NULL,NULL,NULL,NULL),(75,20,19,3,NULL,NULL,NULL,NULL),(76,20,20,3,NULL,NULL,NULL,NULL),(77,20,21,3,NULL,NULL,NULL,NULL),(78,20,22,3,NULL,NULL,NULL,NULL),(79,20,23,3,NULL,NULL,NULL,NULL),(80,20,24,3,NULL,NULL,NULL,NULL),(81,20,25,3,NULL,NULL,NULL,NULL),(82,20,26,3,NULL,NULL,NULL,NULL),(83,20,27,3,NULL,NULL,NULL,NULL),(84,20,28,3,NULL,NULL,NULL,NULL),(85,20,29,3,NULL,NULL,NULL,NULL),(86,20,30,3,NULL,NULL,NULL,NULL),(87,20,31,3,NULL,NULL,NULL,NULL),(88,20,32,3,NULL,NULL,NULL,NULL),(89,20,33,3,NULL,NULL,NULL,NULL),(90,20,34,3,NULL,NULL,NULL,NULL),(91,20,35,3,NULL,NULL,NULL,NULL),(92,20,35,3,NULL,NULL,NULL,NULL),(93,20,37,3,NULL,NULL,NULL,NULL),(94,20,38,3,NULL,NULL,NULL,NULL),(95,20,39,3,NULL,NULL,NULL,NULL),(96,20,40,3,NULL,NULL,NULL,NULL),(97,20,41,3,NULL,NULL,NULL,NULL),(98,20,42,3,NULL,NULL,NULL,NULL),(99,20,43,3,NULL,NULL,NULL,NULL),(100,20,44,3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Astrox 88D Pro',3850000,1,'/api/image/1_Astrox 88D Pro.png','- Điểm cân bằng: Khoảng 301mm (Nặng đầu)\n\n- Độ Cứng: Siêu Cứng\n\n- Màu sắc: Camel Gold - Vàng Lạc Đà\n\n- Vật liệu khung: HM Graphite + VOLUME CUT RESIN + Tungsten\n\n- Vật liệu trục: HM Graphite + Namd\n\n- Trọng lượng/ Chu vi cán vợt: 3U (Ave.88g)/G5\n\n                                                4U (Ave.83g)/G5\n\n- Chiều dài tổng thể: 675 mm\n\n- Điểm swing: 84 - 86 kg/cm2\n\n- Chiều dài cán vợt: 200mm\n\n- Mức căng dây 4U: 20 - 28 lbs\n\n                          3U: 21 - 29 lbs\n\n- Cây vợt cầu lông Yonex Astrox 88D Pro New 2021 được sản xuất tại Nhật Bản.',1,1,NULL,NULL,NULL,NULL),(2,'Astrox 88D Game',2850000,1,'/api/image/2_Astrox 88D Game.png','- Điểm cân bằng: Khoảng 300mm (Nặng đầu)\n\n- Độ Cứng: Cứng\n\n- Màu sắc: Camel Gold - Vàng lạc đà\n\n- Vật liệu khung: HM Graphite + VOLUME CUT RESIN + Tungsten\n\n- Vật liệu trục: HM Graphite + NANOMESH NEO\n\n- Trọng lượng/ Chi vi cán vợt: 3U (Ave.88g)/G5\n\n                                                4U (Ave.83g)/G5\n\n- Chiều dài tổng thể: 675 mm\n\n- Chiều dài cán vợt: 205 mm (cán dài)\n\n- Mức căng dây 4U: 20 - 28 lbs\n\n                          3U: 21 - 29 lbs\n\n- Cây vợt cầu lông Yonex Astrox 88D Game New 2021 được sản xuất tại Taiwan.',1,1,NULL,NULL,NULL,NULL),(3,'Astrox 100zz',4150000,1,'/api/image/3_Astrox 100zz.png','- Độ cứng: Cứng\n\n- Khung vợt: H.M. GRAPHITE + Tungsten\n\n- Thân vợt: GRAPHITE + NANOMESH NEO \n\n- Trọng lượng: 3U, 4U\n\n- Chu vi cán vợt: 3U G4, 5, 6\n\n                           4U G5, 6\n\n- Sức căng tối đa:  20-28 LBS (12.7kg) \n\n- Điểm cân bằng: Nặng đầu.\n\n- Màu sắc: Cam/ Đen/ Trắng/ xanh Endeavour\n\n- Sản xuất: Nhật Bản.',1,1,NULL,NULL,NULL,NULL),(4,'Astrox 77 Pro',3750000,1,'/api/image/4_Astrox 77 Pro.png','- Độ cứng: Trung bình\n\n- Khung vợt: HM Graphite\n\n- Thân vợt :  HM Graphite / Namd\n\n- Trọng lượng /Chu vi cán vợt : 4U(Avg:83g)G5, 4UG6, 3U(Avg:88g)G4, 3UG5,３UG6\n\n- Sức căng tối đa: 4U: 20 - 28 lbs, 3U: 21 - 29 lbs\n\n- Màu sắc: Cam\n\n- Xuất xứ: Nhật Bản',1,1,NULL,NULL,NULL,NULL),(5,'Astrox 77 xanh chuối',3250000,1,'/api/image/5_Astrox 77 xanh chuối.png','- Độ Cứng: Trung Bình\n\n- Vật liệu khung: H.M Graphite + Nanometrix + Tungsten\n\n- Vật liệu trục: H.M. Graphite + Namd\n\n- Trọng lượng: 4U 83g +/-2\n\n- Chu vi cán vợt: 4U G5.\n\n- Chiều dài: 673mm +/-2\n\n- Mức căng: 28lbs ~ 12,5kg\n\n- Màu sắc: Màu Xanh chuối\n\n- Sản xuất: Nhật Bản.',1,1,NULL,NULL,NULL,NULL),(6,'Halbertec 8000',3700000,1,'/api/image/6_Halbertec 8000.png','Thương hiệu	Li-Ning\nKhung vợt	Med Carbon Fiber\nĐũa vợt	T1100 + Polyurethane + Non Woven\nĐộ cứng	Cứng\nĐiểm cân bằng	298mm (4U), 295mm (3U)\nTrọng lượng / Cán cầm	4U/G5, 3U/G5\nĐộ dài vợt	675mm\nMức căng	13.5kg',1,2,NULL,NULL,NULL,NULL),(7,'Lining Bladex 600',3750000,1,'/api/image/7_Lining Bladex 600.png','- Khung vợt : Carbon Fiber\n\n- Thân vợt: Carbon Fiber\n\n- Độ cứng: Trung bình\n\n- Trọng lượng: 4U, 5U\n\n- Điểm cân bằng: 295mm\n\n- Lực căng tối đa: 30 LBS\n\n- Sản xuất : Trung Quốc',1,2,NULL,NULL,NULL,NULL),(8,'Victor Ryuga II',3700000,1,'/api/image/8_Victor Ryuga II.png','- Điểm cân bằng: Khoảng 300 \n\n- Độ cứng : cứng\n\n- Khung vợt: HHigh Resilience Modulus Graphite + HARD CORED TECHNOLOGY.\n\n - Thân vợt: High Resilience Modulus Graphite + PYROFIL + 6.6 SHAFT.\n\n- Trọng lượng : 3U và 4U\n\n- Chu vi cán vợt : G5\n\n- Chiều dài tổng thể: 675 mm.\n\n- Sức căng tối đa : 3U: ≦ 32 lbs (14,5kg)\n                                4U: ≦ 31 lbs (14kg)\n\n- Màu sắc: Đen phối tím\n\n- Vợt Victor Tk Ryuga II được sản xuất tại Taiwan.',1,3,NULL,NULL,NULL,NULL),(9,'TK-Rabbit',800000,1,'/api/image/9_TK-Rabbit.png','\nThương hiệu	Victor\nKhung vợt	Carbon Fiber\nĐũa vợt	Carbon Fiber\nĐộ cứng	Trung bình\nĐiểm cân bằng	 \nTrọng lượng / Cán cầm	4U / G5, 5U / G6\nĐộ dài vợt	675mm\nMức căng	4U ≤ 13kg\n5U ≤ 12.7kg',1,3,NULL,NULL,NULL,NULL),(10,'Mizuno Speedflex 9.3',2680000,1,'/api/image/10_Mizuno Speedflex 9.3.png','- Độ cứng: Dẻo\n\n- Điểm cân bằng:  Nặng Đầu -l-[]-lII- Nhẹ Đầu\n\n- Khung vợt: Japanese Ultra Carbon\n\n- Thân vợt: Japanese Ultra Carbon\n\n- Chiều dài: 675mm\n\n- Trọng lượng: 4U, 5U\n\n- Chu vi cán vợt: G5\n\n- Lực căng tối đa: 30LBS\n\n- Màu sắc: Cam /Đen /Bạc\n\n- Xuất xứ: Nhật Bản',1,4,NULL,NULL,NULL,NULL),(11,'65Z3 C-90 Wide',2650000,1,'/api/image/11_65Z3 C-90 Wide.png','- Thương hiệu: Yonex\n\n- Mã sản phẩm: SHB65Z3WY\n\n- Màu sắc: Kem (Be)\n\n- Thân giày: Sợi tổng hợp + lưới mesh thoáng khí (Synthetic Fiber)\n\n- Midsole: Nhựa tổng hợp, tấm đệm Power Cushion+ (Synthetic Resin)\n\n- Outsole: Đế cao su\n\n- Form giày: Wide dành cho người có bàn chân bè',2,1,NULL,NULL,NULL,NULL),(12,'65Z3 Kurenai',2950000,1,'/api/image/12_65Z3 Kurenai.png','- Upper: Sợi tổng hợp cao cấp\n\n- Midsole: Nhựa tổng hợp cao cấp\n\n- Outsole: Đế cao su mới siêu bám sân\n\n- Material: POWER CUSHION+, Radial Blade Sole, Lateral Shell, Feather Bounce Foam,…\n\n- Độ thoáng khí: 8/10\n\n- Độ êm ái: 9/10\n\n- Độ nhẹ nhàng: 9/10\n\n- Độ ổn định: 8/10\n\n- Size giày: 35 – 45',2,1,NULL,NULL,NULL,NULL),(13,'SC6 Lindan',2550000,1,'/api/image/13_SC6 Lindan.png','- Thương hiệu: Yonex\n\n- Màu sắc: Nâu đồng, đen, đỏ\n\n- Upper: Sợi tổng hợp cao cấp\n\n- Midsole: Nhựa tổng hợp cao cấp\n\n- Outsole: Đế cao su siêu bám sân',2,1,NULL,NULL,NULL,NULL),(14,'Eclipsion Z3 Men - Xanh Navy',2600000,1,'/api/image/14_Eclipsion Z3 Men - Xanh Navy.png','- Phía trên: Sợi tổng hợp\n\n- Đế giữa: Nhựa tổng hợp\n\n- Đế ngoài: Cao su\n\n- Màu sắc: Xanh navy\n\n- Chất liệu: da PU\n\n- Đối tượng: Nam\n\n- Size: 37-45\n\n- Sản xuất: Nhật Bản',2,1,NULL,NULL,NULL,NULL),(15,'AYTT003-3',1400000,1,'/api/image/15_AYTT003-3.png','- Thương hiệu: Lining\n\n- Sản xuất: Trung Quốc\n\n- Mặt trên: dệt + da tổng hợp\n\n- Đế: cao su + EVA\n\n- Chỉ số độ thoáng khí trên giày: siêu thoáng khí',2,2,NULL,NULL,NULL,NULL),(16,'T-0001',240000,1,'/api/image/16_T-0001.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(17,'T-0002',240000,1,'/api/image/17_T-0002.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(18,'T-0003',240000,1,'/api/image/18_T-0003.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(19,'T-0004',240000,1,'/api/image/19_T-0004.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(20,'T-0005',240000,1,'/api/image/20_T-0005.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(21,'T-0006',240000,1,'/api/image/21_T-0006.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(22,'T-0007',240000,1,'/api/image/22_T-0007.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(23,'T-0008',240000,1,'/api/image/23_T-0008.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(24,'T-0009',240000,1,'/api/image/24_T-0009.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(25,'T-0010',240000,1,'/api/image/25_T-0010.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(26,'T-0011',240000,1,'/api/image/26_T-0011.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(27,'T-0012',240000,1,'/api/image/27_T-0012.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(28,'T-0013',240000,1,'/api/image/28_T-0013.png','- Loại áo: Áo chuyển nhiệt\n\n- Chất liệu: Vải tổng hợp cao cấp\n- Tính năng:\n\n     + Thấm hút mồ hôi tốt.\n\n     + Khô nhanh.\n\n     + Làm mát nhanh.\n\n     + Chống nhăn.\n\n     + Siêu bền bỉ.',3,1,NULL,NULL,NULL,NULL),(29,'S-0001',240000,1,'/api/image/29_S-0001.png',NULL,4,1,NULL,NULL,NULL,NULL),(30,'S-0002',240000,1,'/api/image/30_S-0002.png',NULL,4,1,NULL,NULL,NULL,NULL),(31,'S-0003',240000,1,'/api/image/31_S-0003.png',NULL,4,1,NULL,NULL,NULL,NULL),(32,'S-0004',240000,1,'/api/image/32_S-0004.png',NULL,4,1,NULL,NULL,NULL,NULL),(33,'S-0005',240000,1,'/api/image/33_S-0005.png',NULL,4,1,NULL,NULL,NULL,NULL),(34,'S-0006',240000,1,'/api/image/34_S-0006.png',NULL,4,1,NULL,NULL,NULL,NULL),(35,'S-0007',240000,1,'/api/image/35_S-0007.png',NULL,4,1,NULL,NULL,NULL,NULL),(36,'S-0008',240000,1,'/api/image/36_S-0008.png',NULL,4,1,NULL,NULL,NULL,NULL),(37,'SO-0001',240000,1,'/api/image/37_SO-0001.png',NULL,6,1,NULL,NULL,NULL,NULL),(38,'SO-0002',240000,1,'/api/image/38_SO-0002.png',NULL,6,1,NULL,NULL,NULL,NULL),(39,'SO-0003',240000,1,'/api/image/39_SO-0003.png',NULL,6,1,NULL,NULL,NULL,NULL),(40,'SO-0004',240000,1,'/api/image/40_SO-0004.png',NULL,6,1,NULL,NULL,NULL,NULL),(41,'B-0001',240000,1,'/api/image/41_B-0001.png',NULL,6,1,NULL,NULL,NULL,NULL),(42,'B-0002',240000,1,'/api/image/42_B-0002.png',NULL,6,1,NULL,NULL,NULL,NULL),(43,'B-0003',240000,1,'/api/image/43_B-0003.png',NULL,6,1,NULL,NULL,NULL,NULL),(44,'B-0004',240000,1,'/api/image/44_B-0004.png',NULL,6,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,'Chất liệu tốt, bền','Do Duc Duong',4,1,1,NULL,1,NULL),(2,'Đẹp','Phan Van Hung',3,1,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN',NULL,NULL,NULL,NULL),(2,'CUSTOMER',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'36',NULL,NULL,NULL,NULL),(3,'L',NULL,NULL,NULL,NULL),(5,'M',NULL,NULL,NULL,NULL),(7,'S',NULL,NULL,NULL,NULL),(8,'37',NULL,NULL,NULL,NULL),(9,'38',NULL,NULL,NULL,NULL),(10,'39',NULL,NULL,NULL,NULL),(11,'40',NULL,NULL,NULL,NULL),(12,'41',NULL,NULL,NULL,NULL),(13,'42',NULL,NULL,NULL,NULL),(14,'43',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Yonex',NULL,NULL,NULL,NULL),(2,'Lining',NULL,NULL,NULL,NULL),(3,'Victor',NULL,NULL,NULL,NULL),(4,'Mizuno',NULL,NULL,NULL,NULL),(5,'Kumpoo',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-11-09 19:33:35
