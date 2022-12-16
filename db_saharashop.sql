-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_i8web
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `amount_productbycate`
--

DROP TABLE IF EXISTS `amount_productbycate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amount_productbycate` (
  `id` int DEFAULT NULL,
  `amount` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amount_productbycate`
--

LOCK TABLES `amount_productbycate` WRITE;
/*!40000 ALTER TABLE `amount_productbycate` DISABLE KEYS */;
INSERT INTO `amount_productbycate` VALUES (1,8,'Điện thoại'),(7,8,'Máy tính bảng'),(8,7,'Tai nghe'),(9,8,'Laptop'),(10,8,'Thời trang'),(11,8,'Đồ gia dụng'),(12,8,'Thiết bị văn phòng');
/*!40000 ALTER TABLE `amount_productbycate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `cat_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `deleted_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Áo sơ mi','ao-so-mi','0','2022-12-13',NULL,NULL),(2,'Đầm','dam','0','2022-12-13',NULL,NULL),(3,'Áo khoác','ao-khoac','0','2022-12-13',NULL,NULL),(4,'Áo len','ao-len','0','2022-12-13',NULL,NULL),(5,'Khăn quàng cổ','khan-quang-co','0','2022-12-13',NULL,NULL),(6,'Chân váy','chan-vay','0','2022-12-13',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriespost`
--

DROP TABLE IF EXISTS `categoriespost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriespost` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriespost`
--

LOCK TABLES `categoriespost` WRITE;
/*!40000 ALTER TABLE `categoriespost` DISABLE KEYS */;
INSERT INTO `categoriespost` VALUES (1,'Blog','blog','31/10/2022'),(2,'Giới thiệu','gioi-thieu','31/10/2022');
/*!40000 ALTER TABLE `categoriespost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `month_revenue`
--

DROP TABLE IF EXISTS `month_revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `month_revenue` (
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `sum` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `month_revenue`
--

LOCK TABLES `month_revenue` WRITE;
/*!40000 ALTER TABLE `month_revenue` DISABLE KEYS */;
INSERT INTO `month_revenue` VALUES (2022,10,1740000),(2022,11,1275000),(2022,12,1575000);
/*!40000 ALTER TABLE `month_revenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `pay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `bill_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `bill_detail` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `bill_total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT 'Chờ xác nhận',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (58,'Lương Xuân Thắng','53 Đường số 8, Linh Trung, Thủ Đức, Tp.HCM','0343984928','','Thanh toán tại nhà','2022-10-01','3','[\"id:85,name:ÁO SƠ MI VOAN DẬP PHỒNG CỔ VUÔNG ĐƠN GIẢN,image:pr2.png,price:300000,quantity:1\",\"id:87,name:ÁO SƠ MI NGẮN TAY PHỒNG CỔ TRÒN 2 TÚI VIỀN HẠT NGỌC TRAI,image:pr3.png,price:380000,quantity:1\",\"id:152,name:ÁO KHOÁC PHAO THÂN NGẮN 2 TÚI HỘP CÓ MŨ SAU,image:aokhoac14.png,price:700000,quantity:1\"]','1.380.000Đ','Đã giao','luongxuanthang'),(59,'Lương Xuân Thắng','53 Đường số 8, Linh Trung, Thủ Đức, Tp.HCM','0343984928','','Thanh toán tại nhà','2022-10-13','2','[\"id:87,name:ÁO SƠ MI NGẮN TAY PHỒNG CỔ TRÒN 2 TÚI VIỀN HẠT NGỌC TRAI,image:pr3.png,price:380000,quantity:2\",\"id:93,name:ÁO SƠ MI CHIFFON TRẮNG CÔNG SỞ CỔ BẺ ĐƠN GIẢN,image:pr7.png,price:300000,quantity:1\"]','1.060.000Đ','Đã giao','luongxuanthang'),(60,'Lương Xuân Thắng','53 Đường số 8, Linh Trung, Thủ Đức, Tp.HCM','023928382','','Thanh toán tại nhà','2022-11-11','2','[\"id:85,name:ÁO SƠ MI VOAN DẬP PHỒNG CỔ VUÔNG ĐƠN GIẢN,image:pr2.png,price:300000,quantity:1\",\"id:91,name:ÁO SƠ MI SỌC TAM GIÁC THẮT NƠ CỔ,image:pr5.png,price:375000,quantity:1\"]','675.000Đ','Đã giao','luongxuanthang'),(61,'Nguyễn Văn Quốc Tuấn','170/47 Mai Hắc Đế Phường Tân Thành, Tp.Buôn Ma Thuột, Đăk Lăk','0343984928','','Thanh toán tại nhà','2022-11-15','1','[\"id:85,name:ÁO SƠ MI VOAN DẬP PHỒNG CỔ VUÔNG ĐƠN GIẢN,image:pr2.png,price:300000,quantity:2\"]','600.000Đ','Đã giao','user123456'),(62,'Nguyễn Văn Quốc Tuấn','170/47 Mai Hắc Đế Phường Tân Thành, Tp.Buôn Ma Thuột, Đăk Lăk','0343984928','Cố lên nhé','Thanh toán tại nhà','2022-12-16','3','[\"id:150,name:ĐẦM VOAN HOA NHÍ CỔ THẮT NƠ VIỀN BÈO TAY LOE DÀI,image:dam12.png,price:450000,quantity:1\",\"id:92,name:ÁO SƠ MI SỌC KẺ HQ CỔ TRẮNG VIỀN REN NHỌN,image:pr6.png,price:300000,quantity:1\",\"id:93,name:ÁO SƠ MI CHIFFON TRẮNG CÔNG SỞ CỔ BẺ ĐƠN GIẢN,image:pr7.png,price:300000,quantity:1\"]','1.050.000Đ','Đã giao','user123456'),(63,'Nguyễn Văn Quốc Tuấn','170/47 Mai Hắc Đế Phường Tân Thành, Tp.Buôn Ma Thuột, Đăk Lăk','0343984928','','Thanh toán tại nhà','2022-12-17','2','[\"id:98,name:ĐẦM VOAN HOA NHÍ CỔ BẺ BÚP BÊ TẦNG DỄ THƯƠNG,image:dam2.png,price:500000,quantity:1\",\"id:99,name:ĐẦM VOAN HOA NHÍ RETRO CỔ CHỮ V VIỀN REN NHỎ,image:dam3.png,price:500000,quantity:1\"]','1.000.000Đ','Đã giao','user123456'),(65,'Nguyễn Văn Quốc Tuấn','170/47 Mai Hắc Đế Phường Tân Thành, Tp.Buôn Ma Thuột, Đăk Lăk','0343984928','','Thanh toán tại nhà','2022-12-17','3','[\"id:99,name:ĐẦM VOAN HOA NHÍ RETRO CỔ CHỮ V VIỀN REN NHỎ,image:dam3.png,price:500000,quantity:1\",\"id:91,name:ÁO SƠ MI SỌC TAM GIÁC THẮT NƠ CỔ,image:pr5.png,price:375000,quantity:1\",\"id:93,name:ÁO SƠ MI CHIFFON TRẮNG CÔNG SỞ CỔ BẺ ĐƠN GIẢN,image:pr7.png,price:300000,quantity:2\"]','1.475.000Đ','Đã giao','user123456');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `deleted_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'https://icdn.dantri.com.vn/thumb_w/640/2020/12/16/ngam-dan-hot-girl-xinh-dep-noi-bat-nhat-nam-2020-docx-1608126694049.jpeg','bai viet 1',NULL,NULL,1,'bai-viet-1','2022-12-13',NULL,NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_order` (
  `id_order` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `size` varchar(45) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id_order`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order`
--

LOCK TABLES `product_order` WRITE;
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
INSERT INTO `product_order` VALUES (58,85,1,'2022-10-01',300000,NULL),(58,87,1,'2022-10-01',380000,NULL),(58,152,1,'2022-10-01',700000,NULL),(59,87,2,'2022-10-13',760000,NULL),(59,93,1,'2022-10-13',300000,NULL),(60,85,1,'2022-11-11',300000,NULL),(60,91,1,'2022-11-11',375000,NULL),(61,85,2,'2022-11-15',600000,NULL),(62,92,1,'2022-12-16',300000,NULL),(62,93,1,'2022-12-16',300000,NULL),(62,150,1,'2022-12-16',450000,NULL),(63,98,1,'2022-12-17',500000,NULL),(63,99,1,'2022-12-17',500000,NULL),(65,91,1,'2022-12-17',375000,NULL),(65,93,2,'2022-12-17',600000,NULL),(65,99,1,'2022-12-17',500000,NULL);
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_revenue`
--

DROP TABLE IF EXISTS `product_revenue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_revenue` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `revenue` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_revenue`
--

LOCK TABLES `product_revenue` WRITE;
/*!40000 ALTER TABLE `product_revenue` DISABLE KEYS */;
INSERT INTO `product_revenue` VALUES (150,'ĐẦM VOAN HOA NHÍ CỔ THẮT NƠ VIỀN BÈO TAY LOE DÀI',450000),(98,'ĐẦM VOAN HOA NHÍ CỔ BẺ BÚP BÊ TẦNG DỄ THƯƠNG',500000),(99,'ĐẦM VOAN HOA NHÍ RETRO CỔ CHỮ V VIỀN REN NHỎ',1000000);
/*!40000 ALTER TABLE `product_revenue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `price_old` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `price_new` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `many_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `detail` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `ghimSale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ghimNew` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `deleted_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (84,'ÁO SƠ MI SỌC KẺ THÂN DÀI PHỐI KHĂN CHOÀNG MỎNG','450000','400000','<p>&Aacute;o sơ mi sọc kẻ th&acirc;n d&agrave;i phối khăn cho&agrave;ng mỏng</p>\r\n','Còn hàng',NULL,'ao1.png','<p>PRODUCT ID:&nbsp;<strong>26568</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A320</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','0','pr-1',NULL,'2022-12-13',NULL,NULL),(85,'ÁO SƠ MI VOAN DẬP PHỒNG CỔ VUÔNG ĐƠN GIẢN','350000','300000','<p>A319 : &Aacute;o sơ mi voan dập phồng cổ vu&ocirc;ng đơn giản</p>\r\n\r\n<p>Free size v&ograve;ng 1 dưới 96cm.</p>\r\n','Còn hàng',NULL,'pr2.png','<p>PRODUCT ID:&nbsp;<strong>26198</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A319</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','1','pr-2',NULL,'2022-12-16',NULL,NULL),(87,'ÁO SƠ MI NGẮN TAY PHỒNG CỔ TRÒN 2 TÚI VIỀN HẠT NGỌC TRAI','385000','380000','<p>A309 : &Aacute;o sơ mi ngắn tay phồng cổ tr&ograve;n 2 t&uacute;i viền hạt ngọc trai</p>\r\n\r\n<p>Free size vòng 1 dưới 96cm.</p>\r\n','Còn hàng',NULL,'pr3.png','<p>PRODUCT ID:&nbsp;<strong>26093</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A309</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','1','pr-3',NULL,'2022-12-16',NULL,NULL),(90,'ÁO SƠ MI NGẮN TAY PHỒNG THÊU HOA CỔ BẺ BÚP BÊ','385000','380000','<p>A308 : &Aacute;o sơ mi ngắn tay phồng th&ecirc;u hoa cổ bẻ b&uacute;p b&ecirc;</p>\r\n\r\n<p>Free size vòng 1 dưới 98cm.</p>\r\n','Còn hàng',NULL,'pr4.png','<p>PRODUCT ID:&nbsp;<strong>26082</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A308</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','0','pr-4',NULL,'2022-12-13',NULL,NULL),(91,'ÁO SƠ MI SỌC TAM GIÁC THẮT NƠ CỔ','385000','375000','<p>Áo sơ mi sọc tam giác thắt nơ c&ocirc;̉</p>\r\n','Còn hàng',NULL,'pr5.png','<p>PRODUCT ID:&nbsp;<strong>19969</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A248</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','1','pr-5',NULL,'2022-12-16',NULL,NULL),(92,'ÁO SƠ MI SỌC KẺ HQ CỔ TRẮNG VIỀN REN NHỌN','400000','300000','<p>A306 : &Aacute;o sơ mi sọc kẻ HQ cổ ren nhọn d&agrave;i</p>\r\n\r\n<p>Free size vòng 1 dưới 96cm.</p>\r\n','Còn hàng',NULL,'pr6.png','<p>PRODUCT ID:&nbsp;<strong>26062</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A306</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','0','pr-6',NULL,'2022-12-13',NULL,NULL),(93,'ÁO SƠ MI CHIFFON TRẮNG CÔNG SỞ CỔ BẺ ĐƠN GIẢN','385000','300000','<p>A300 : &Aacute;o sơ mi chiffon trắng c&ocirc;ng sở cổ bẻ đơn giản</p>\r\n\r\n<p>Free size vòng 1 dưới 96cm.</p>\r\n','Còn hàng',NULL,'pr7.png','<p>PRODUCT ID:&nbsp;<strong>25991</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A300</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','1','pr-7',NULL,'2022-12-16',NULL,NULL),(94,'ÁO SƠ MI VOAN CHẤM BI CỔ THẮT NƠ ĐƠN GIẢN MẪU MỚI','385000','300000','<p>A295 : &Aacute;o sơ mi voan chấm bi cổ thắt nơ đơn giản mẫu mới</p>\r\n\r\n<p>Free size vòng 1 dưới 98cm.</p>\r\n','Còn hàng',NULL,'pr8.png','<p>PRODUCT ID:&nbsp;<strong>25937</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A295</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','0','pr-8',NULL,'2022-12-13',NULL,NULL),(95,'ÁO SƠ MI REN DÀI TAY CỔ CHỮ V (CÓ LỚP LÓT)','450000','400000','<p>A293 : &Aacute;o sơ mi ren d&agrave;i tay cổ chữ V (c&oacute; lớp l&oacute;t)</p>\r\n\r\n<p>Free size vòng 1 dưới 96cm.</p>\r\n','Còn hàng',NULL,'pr9.png','<p>PRODUCT ID:&nbsp;<strong>25913</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A293</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','0','pr-9',NULL,'2022-12-13',NULL,NULL),(96,'ÁO SƠ MI CHIFFON HQ CỔ BẺ CÀI NÚT XẺ CHỮ V NHỎ','385000','300000','<p>A291 : Áo sơ mi chiffon HQ c&ocirc;̉ bẻ cài nút xẻ chữ V nhỏ</p>\r\n\r\n<p>Free size vòng 1 dưới 98cm.</p>\r\n','Còn hàng',NULL,'pr10.png','<p>PRODUCT ID:&nbsp;<strong>24799</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A291</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'1','1','pr-10',NULL,'2022-12-13',NULL,NULL),(97,'ĐẦM VOAN HOA DÀI CỔ VUÔNG, CHUN NGỰC TAY PHỒNG DỄ THƯƠNG','530000','500000','<p>D257 : Đầm voan hoa d&agrave;i cổ vu&ocirc;ng, chun ngực tay phồng dễ thương</p>\r\n','Còn hàng',NULL,'dam1.png','<p>PRODUCT ID:&nbsp;<strong>26460</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D257</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'0','1','dam-1',NULL,'2022-12-16',NULL,NULL),(98,'ĐẦM VOAN HOA NHÍ CỔ BẺ BÚP BÊ TẦNG DỄ THƯƠNG','530000','500000','<p>D256 : Đầm voan hoa nh&iacute; cổ bẻ b&uacute;p b&ecirc; tầng dễ thương</p>\r\n\r\n<p>&nbsp;</p>\r\n','Còn hàng',NULL,'dam2.png','<p>PRODUCT ID:&nbsp;<strong>26450</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D256</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'0','1','dam-2',NULL,'2022-12-13',NULL,NULL),(99,'ĐẦM VOAN HOA NHÍ RETRO CỔ CHỮ V VIỀN REN NHỎ','530000','500000','<p>D255 : Đầm voan hoa nh&iacute; retro cổ chữ V viền ren nhỏ</p>\r\n','Còn hàng',NULL,'dam3.png','<p>PRODUCT ID:&nbsp;<strong>26440</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D255</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'0','0','dam-3',NULL,'2022-12-13',NULL,NULL),(100,'ĐẦM VOAN HOA CÚC DÀI CỔ BẺ BÚP BÊ VIỀN REN','485000','400000','<p>D254 : Đầm voan hoa c&uacute;c d&agrave;i cổ bẻ b&uacute;p b&ecirc; viền ren</p>\r\n','Còn hàng',NULL,'dam4.png','<p>PRODUCT ID:&nbsp;<strong>26430</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D254</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'1','1','dam-4',NULL,'2022-12-13',NULL,NULL),(101,'ĐẦM VOAN HOA NHÍ XÒE CỔ CHỮ V','450000','400000','<p>D253 : Đầm voan hoa nh&iacute; x&ograve;e cổ chữ V</p>\r\n','Còn hàng',NULL,'dam5.png','<p>PRODUCT ID:&nbsp;<strong>26416</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D253</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'0','1','dam-5',NULL,'2022-12-13',NULL,NULL),(102,'ĐẦM VOAN DẬP PHỒNG XÒE CỔ CHỮ V','450000','400000','<p>D252 : Đầm voan dập phồng x&ograve;e cổ chữ V</p>\r\n','',NULL,'dam6.png','<p>PRODUCT ID:&nbsp;<strong>26401</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D252</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'1','1','dam-6',NULL,'2022-12-13',NULL,NULL),(103,'ĐẦM VOAN IN HÌNH NƠ CỔ CHỮ V CHUN EO','450000','400000','<p>D251 : Đầm voan in h&igrave;nh nơ cổ chữ V chun eo</p>\r\n','Còn hàng',NULL,'dam7.png','<p>PRODUCT ID:&nbsp;<strong>26386</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D251</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'0','1','dam-7',NULL,'2022-12-16',NULL,NULL),(104,'ĐẦM VOAN HOA CÚC CỔ CHỮ V THẮT ĐAI EO','530000','500000','<p>D249 : Đầm voan hoa c&uacute;c cổ chữ V thắt đai eo</p>\r\n','Còn hàng',NULL,'dam8.png','<p>PRODUCT ID:&nbsp;<strong>26361</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D249</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'1','1','dam-8',NULL,'2022-12-13',NULL,NULL),(105,'ĐẦM CHIFFON HQ CỔ XẺ CHỮ V VIỀN TRẮNG RÚT DÂY EO ĐƠN GIẢN','530000','500000','<p>D243 : Đ&acirc;̀m chiffon HQ c&ocirc;̉ xẻ chữ V vi&ecirc;̀n trắng rút d&acirc;y eo đơn giản</p>\r\n\r\n<p>Size M : Ngực 92cm, eo thun co giãn, dài 113cm</p>\r\n\r\n<p>Size L : Ngực 96cm, eo thun co giãn, dài 114cm</p>\r\n\r\n<p>Kích thước th&acirc;̣t sẽ ch&ecirc;nh l&ecirc;̣ch 1-3cm so với bảng size.</p>\r\n','',NULL,'dam9.png','<p>PRODUCT ID:&nbsp;<strong>25322</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D243</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'1','0','dam-9',NULL,'2022-12-13',NULL,NULL),(106,'ĐẦM VOAN DÀI TAY HOA VĂN RETRO CHÂN VÁY XÒE, CỔ CHỮ V','530000','500000','<p>D240 : Đ&acirc;̀m voan dài tay hoa văn retro ch&acirc;n váy xòe, c&ocirc;̉ chữ V</p>\r\n\r\n<p>Size M : Ngực 92cm, eo thun, dài 128cm</p>\r\n\r\n<p>Size L : Ngực 96cm, eo thun, dài 129cm</p>\r\n\r\n<p>Kích thước th&acirc;̣t sẽ ch&ecirc;nh l&ecirc;̣ch 1-3cm so với bảng size.</p>\r\n','Còn hàng',NULL,'dam10.png','<p>PRODUCT ID:&nbsp;<strong>25283</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D240</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'1','0','dam-10',NULL,'2022-12-13',NULL,NULL),(107,'ÁO KHOÁC LEN DỆT KIM THÂN DÀI HQ ĐƠN GIẢN','585000','550000','<p>K254 : &Aacute;o kho&aacute;c len dệt kim th&acirc;n d&agrave;i HQ đơn giản</p>\r\n','Còn hàng',NULL,'aokhoac12.png','<p>PRODUCT ID:&nbsp;<strong>26857</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K254</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'0','1','ao-khoac-1',NULL,'2022-12-16',NULL,NULL),(108,'ÁO KHOÁC PHAO DÁNG SUÔNG DÀI HQ MŨ LÔNG THÚ CỰC ẤM ÁP','1250000','1200000','<p>&Aacute;o kho&aacute;c phao d&aacute;ng su&ocirc;ng d&agrave;i HQ mũ l&ocirc;ng th&uacute; cực ấm &aacute;p</p>\r\n','Còn hàng',NULL,'aokhoac2.png','<p>PRODUCT ID:&nbsp;<strong>27444</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K268</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'0','1','ao-khoac-2',NULL,'2022-12-16',NULL,NULL),(109,'ÁO KHOÁC DẠ THÂN DÀI CỔ BẺ + ÁO CHOÀNG NGẮN TIỂU THƯ BÊN NGOÀI','1185000','1100000','<p>&Aacute;o kho&aacute;c dạ th&acirc;n d&agrave;i cổ bẻ + &aacute;o cho&agrave;ng ngắn tiểu thư b&ecirc;n ngo&agrave;i</p>\r\n','Còn hàng',NULL,'aokhoac3.png','<p>PRODUCT ID:&nbsp;<strong>27434</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K267</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'0','0','ao-khoac-3',NULL,'2022-12-13',NULL,NULL),(110,'ÁO KHOÁC DẠ HQ THÂN DÀI CỔ VEST 2 TÚI ĐƠN GIẢN','1185000','1100000','<p>&Aacute;o kho&aacute;c dạ HQ th&acirc;n d&agrave;i cổ vest 2 t&uacute;i đơn giản</p>\r\n','',NULL,'aokhoac4.png','<p>PRODUCT ID:&nbsp;<strong>27412</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K266</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'0','1','ao-khoac-4',NULL,'2022-12-16',NULL,NULL),(111,'ÁO KHOÁC DẠ LEN SỌC KẺ CỔ VEST CÔNG SỞ HQ DÁNG RỘNG','950000','900000','<p>&Aacute;o kho&aacute;c dạ len sọc kẻ cổ vest c&ocirc;ng sở HQ d&aacute;ng rộng</p>\r\n','',NULL,'aokhoac5.png','<p>PRODUCT ID:&nbsp;<strong>27402</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K265</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'1','1','ao-khoac-5',NULL,'2022-12-13',NULL,NULL),(112,'ÁO KHOÁC DẠ LEN CỔ VEST CÔNG SỞ HQ THANH LỊCH, ẤM ÁP','950000','900000','<p>&Aacute;o kho&aacute;c dạ len cổ vest c&ocirc;ng sở HQ thanh lịch, ấm &aacute;p</p>\r\n','',NULL,'aokhoac6.png','<p>PRODUCT ID:&nbsp;<strong>27393</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K264</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'1','0','ao-khoac-6',NULL,'2022-12-13',NULL,NULL),(113,'ÁO KHOÁC DẠ CỔ VEST HQ THÂN NGẮN 2 TÚI GIẢ','965000','900000','<p>&Aacute;o kho&aacute;c dạ cổ vest HQ th&acirc;n ngắn 2 t&uacute;i giả</p>\r\n','Còn hàng',NULL,'aokhoac7.png','<p>PRODUCT ID:&nbsp;<strong>27378</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K263</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'0','0','ao-khoac-7',NULL,'2022-12-16',NULL,NULL),(114,'ÁO KHOÁC KAKI CỔ VEST HQ THÂN DÀI THẮT ĐAI EO (CÓ LÓT)','1150000','1100000','<p>K262 : &Aacute;o kho&aacute;c kaki cổ vest HQ th&acirc;n d&agrave;i thắt đai eo (c&oacute; l&oacute;t)</p>\r\n','',NULL,'aokhoac8.png','<p>PRODUCT ID:&nbsp;<strong>26976</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K262</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'1','1','ao-khoac-8',NULL,'2022-12-13',NULL,NULL),(115,'ÁO KHOÁC KAKI CỔ VEST HQ THÂN NGẮN THẮT ĐAI EO (CÓ LÓT)','950000','900000','<p>K261 : &Aacute;o kho&aacute;c kaki cổ vest HQ th&acirc;n ngắn thắt đai eo (c&oacute; l&oacute;t)</p>\r\n','Còn hàng',NULL,'aokhoac9.png','<p>PRODUCT ID:&nbsp;<strong>26960</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K261</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'1','0','ao-khoac-9',NULL,'2022-12-13',NULL,NULL),(116,'ÁO KHOÁC DẠ LEN SỌC Ô TO HQ THÂN NGẮN','685000','600000','<p>K260 : &Aacute;o kho&aacute;c dạ len sọc &ocirc; to HQ th&acirc;n ngắn</p>\r\n','Còn hàng',NULL,'aokhoac10.png','<p>PRODUCT ID:&nbsp;<strong>26941</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K260</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'1','0','ao-khoac-10',NULL,'2022-12-13',NULL,NULL),(117,'ÁO LEN DỆT KIM SỌC KẺ DÀY CỔ BẺ','450000','400000','<p>AL239 : &Aacute;o len dệt kim sọc kẻ d&agrave;y cổ bẻ</p>\r\n','',NULL,'aolen1.png','<p>PRODUCT ID:&nbsp;<strong>26817</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL239</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'1','0','ao-len-1',NULL,'2022-12-13',NULL,NULL),(118,'ÁO LEN DỆT KIM PHỐI MÀU SÓNG LỚN','450000','400000','<p>AL238 : &Aacute;o len dệt kim phối m&agrave;u s&oacute;ng lớn</p>\r\n','Còn hàng',NULL,'aolen2.png','<p>PRODUCT ID:&nbsp;<strong>26809</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL238</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'0','1','ao-len-2',NULL,'2022-12-16',NULL,NULL),(119,'ÁO LEN DỆT KIM SỌC KIM CƯƠNG TO','450000','400000','<p>AL237 : &Aacute;o len dệt kim sọc kim cương to</p>\r\n','Còn hàng',NULL,'aolen3.png','<p>PRODUCT ID:&nbsp;<strong>26802</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL237</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'1','0','ao-len-3',NULL,'2022-12-13',NULL,NULL),(120,'ÁO LEN DỆT KIM HỌA TIẾT SỌC KIM CƯƠNG CỔ TRÒN ĐƠN GIẢN','450000','410000','<p>AL236 : &Aacute;o len dệt kim họa tiết sọc kim cương cổ tr&ograve;n đơn giản</p>\r\n','',NULL,'aolen4.png','<p>PRODUCT ID:&nbsp;<strong>26794</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL236</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'1','1','ao-len-4',NULL,'2022-12-13',NULL,NULL),(121,'ÁO LEN DỆT KIM HQ CAO CẤP ĐÍNH NƠ VÀ HẠT','485000','450000','<p>AL235 : &Aacute;o len dệt kim HQ cao cấp đ&iacute;nh nơ v&agrave; hạt</p>\r\n','Còn hàng',NULL,'aolen5.png','<p>PRODUCT ID:&nbsp;<strong>26784</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL235</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'0','1','ao-len-5',NULL,'2022-12-16',NULL,NULL),(122,'ÁO LEN DỆT KIM PHỐI TAY VOAN CỔ CHỮ V CÀI NÚT','450000','400000','<p>AL234 : &Aacute;o len dệt kim phối tay voan cổ chữ V c&agrave;i n&uacute;t</p>\r\n','',NULL,'aolen6.png','<p>PRODUCT ID:&nbsp;<strong>26769</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL234</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'1','0','ao-len-6',NULL,'2022-12-13',NULL,NULL),(123,'ÁO LEN DỆT KIM HQ CỔ BÚP BÊ ĐÍNH NÚT','450000','400000','<p>AL232 : &Aacute;o len dệt kim HQ cổ b&uacute;p b&ecirc; đ&iacute;nh n&uacute;t</p>\r\n','Còn hàng',NULL,'aolen7.png','<p>PRODUCT ID:&nbsp;<strong>26739</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL232</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'1','0','ao-len-7',NULL,'2022-12-13',NULL,NULL),(124,'ÁO LEN DỆT KIM HQ MỎNG CỔ PHỐI TAY LỤA CỔ BÚP BÊ','450000','410000','<p>AL231 : &Aacute;o len dệt kim HQ mỏng cổ phối tay lụa cổ b&uacute;p b&ecirc;</p>\r\n','Còn hàng',NULL,'aolen8.png','<p>PRODUCT ID:&nbsp;<strong>26721</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL231</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'0','1','ao-len-8',NULL,'2022-12-16',NULL,NULL),(125,'ÁO LEN DỆT KIM HQ MỎNG CỔ CHỮ V RĂNG CƯA ĐÍNH NƠ','450000','420000','<p>AL230 : &Aacute;o len dệt kim HQ mỏng cổ chữ V răng cưa đ&iacute;nh nơ</p>\r\n','',NULL,'aolen9.png','<p>PRODUCT ID:&nbsp;<strong>26718</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL230</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'1','0','ao-len-9',NULL,'2022-12-13',NULL,NULL),(126,'ÁO LEN HQ MỎNG PHỐI CỔ REN BÚP BÊ','450000','400000','<p>AL229 : &Aacute;o len HQ mỏng phối cổ ren b&uacute;p b&ecirc;</p>\r\n','Còn hàng',NULL,'aolen10.png','<p>PRODUCT ID:&nbsp;<strong>26690</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;AL229</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'1','0','ao-len-10',NULL,'2022-12-13',NULL,NULL),(127,'KHĂN CHOÀNG DẠ LEN HQ BẢN LỚN CAO CẤP','550000','500000','<p>KQ233 : Khăn cho&agrave;ng dạ len HQ bản lớn cao cấp</p>\r\n','',NULL,'khan1.png','<p>PRODUCT ID:&nbsp;<strong>27163</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ233</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'1','0','khan-quang-co-1',NULL,'2022-12-13',NULL,NULL),(128,'KHĂN QUÀNG DẠ LEN SỌC KẺ HQ TO MẪU MỚI NHẤT','485000','400000','<p>KQ232 : Khăn qu&agrave;ng dạ len sọc kẻ HQ to mẫu mới nhất</p>\r\n','Còn hàng',NULL,'khan2.png','<p>PRODUCT ID:&nbsp;<strong>27150</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ232</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'0','1','khan-quang-co-2',NULL,'2022-12-16',NULL,NULL),(129,'KHĂN QUÀNG DẠ LEN SỌC KẺ HQ XINH XẮN VÀ ẤM ÁP','4850000','450000','<p>KQ231 : Khăn qu&agrave;ng dạ len sọc kẻ HQ xinh xắn v&agrave; ấm &aacute;p</p>\r\n','Còn hàng',NULL,'khan3.png','<p>PRODUCT ID:&nbsp;<strong>27145</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ231</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'1','1','khan-quang-co-3',NULL,'2022-12-13',NULL,NULL),(130,'KHĂN QUÀNG CỔ DẠ LEN HQ SỌC Ô VUÔNG LỚN TUA RUA','485000','460000','<p>KQ230 : Khăn qu&agrave;ng cổ dạ len HQ sọc &ocirc; vu&ocirc;ng lớn tua rua</p>\r\n','Còn hàng',NULL,'khan4.png','<p>PRODUCT ID:&nbsp;<strong>27128</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ230</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'0','1','khan-quang-co-4',NULL,'2022-12-16',NULL,NULL),(131,'KHĂN QUÀNG CỔ DẠ LEN SỌC KẺ LỚN HQ GOODLUCK','485000','420000','<p>KQ229 : Khăn qu&agrave;ng cổ dạ len sọc kẻ lớn HQ Goodluck</p>\r\n','',NULL,'khan5.png','<p>PRODUCT ID:&nbsp;<strong>27119</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ229</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'1','0','khan-quang-co-5',NULL,'2022-12-13',NULL,NULL),(132,'KHĂN QUÀNG CỔ DẠ LEN SỌC KẺ LỚN HQ TUA RUA','485000','430000','<p>KQ228 : Khăn qu&agrave;ng cổ dạ len sọc kẻ lớn HQ tua rua</p>\r\n','Còn hàng',NULL,'khan6.png','<p>PRODUCT ID:&nbsp;<strong>27102</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ228</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'1','0','khan-quang-co-6',NULL,'2022-12-13',NULL,NULL),(133,'KHĂN QUÀNG CỔ DẠ LEN SỌC KẺ NHỎ TUA RUA HQ','485000','460000','<p>KQ227 : Khăn qu&agrave;ng cổ dạ len sọc kẻ nhỏ tua rua HQ</p>\r\n','',NULL,'khan7.png','<p>PRODUCT ID:&nbsp;<strong>27093</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ227</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'0','0','khan-quang-co-7',NULL,'2022-12-16',NULL,NULL),(134,'KHĂN QUÀNG CỔ DẠ LEN SỌC KẺ NHỎ HQ ẤM ÁP MẪU MỚI','485000','440000','<p>KQ226 : Khăn qu&agrave;ng cổ dạ len sọc kẻ nhỏ HQ ấm &aacute;p mẫu mới</p>\r\n','Còn hàng',NULL,'khan8.png','<p>PRODUCT ID:&nbsp;<strong>27076</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ226</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'0','1','khan-quang-co-8',NULL,'2022-12-16',NULL,NULL),(135,'KHĂN QUÀNG CỔ DẠ LEN SỌC Ô VUÔNG TO HQ','485000','475000','<p>KQ225 : Khăn qu&agrave;ng cổ dạ len sọc &ocirc; vu&ocirc;ng to HQ</p>\r\n','',NULL,'khan9.png','<p>PRODUCT ID:&nbsp;<strong>27063</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ225</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'1','0','khan-quang-co-9',NULL,'2022-12-13',NULL,NULL),(136,'KHĂN QUÀNG CỔ DẠ LEN SỌC KẺ NHỎ HQ ẤM ÁP','485000','485000','<p>KQ224 : Khăn qu&agrave;ng cổ dạ len sọc kẻ nhỏ HQ ấm &aacute;p</p>\r\n','',NULL,'khan10.png','<p>PRODUCT ID:&nbsp;<strong>27051</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ224</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'0','1','khan-quang-co-10',NULL,'2022-12-16',NULL,NULL),(137,'CHÂN VÁY JEAN CHỮ A CẠP CAO XẺ GIỮA','450000','420000','<p>CV223 : Ch&acirc;n v&aacute;y Jean chữ A cạp cao xẻ giữa</p>\r\n\r\n<p>Size M : Eo 71, M&ocirc;ng 93, Dài 71</p>\r\n\r\n<p>Size L : Eo 75, M&ocirc;ng 97, Dài 71</p>\r\n\r\n<p>Kích thước thực t&ecirc;́ có th&ecirc;̉ x&ecirc; dịch 1-3cm so với bảng size.</p>\r\n','',NULL,'chanvay1.png','<p>PRODUCT ID:&nbsp;<strong>26268</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV223</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'1','0','chan-vay-1',NULL,'2022-12-13',NULL,NULL),(138,'CHÂN VÁY JEAN MIDI XÒE CẠP CHUN SAU','450000','460000','<p>CV222 : Ch&acirc;n v&aacute;y Jean midi x&ograve;e cạp chun sau</p>\r\n\r\n<p>Size M : Eo 72-78, M&ocirc;ng 118, Dài 71</p>\r\n\r\n<p>Size L : Eo 75-82, M&ocirc;ng 120, Dài 72</p>\r\n\r\n<p>Kích thước thực t&ecirc;́ có th&ecirc;̉ x&ecirc; dịch 1-3cm so với bảng size.</p>\r\n','Còn hàng',NULL,'chanvay2.png','<p>PRODUCT ID:&nbsp;<strong>26258</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV222</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'1','1','chan-vay-2',NULL,'2022-12-13',NULL,NULL),(139,'CHÂN VÁY JEAN CHỮ A DÀI PHỐI 2 MÀU XẺ ĐÙI ĐÍNH NÚT','450000','400000','<p>CV221 : Ch&acirc;n v&aacute;y Jean chữ A d&agrave;i phối 2 m&agrave;u xẻ đ&ugrave;i đ&iacute;nh n&uacute;t</p>\r\n\r\n<p>Size M : Eo 68, M&ocirc;ng 92, Dài 76</p>\r\n\r\n<p>Size L : Eo 72, M&ocirc;ng 97, Dài 76</p>\r\n\r\n<p>Kích thước thực t&ecirc;́ có th&ecirc;̉ x&ecirc; dịch 1-3cm so với bảng size.</p>\r\n\r\n<p>&nbsp;</p>\r\n','',NULL,'chanvay3.png','<p>PRODUCT ID:&nbsp;<strong>26248</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV221</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'1','0','chan-vay-3',NULL,'2022-12-13',NULL,NULL),(140,'CHÂN VÁY JEAN CHỮ A DÀI EO CAO XẺ ĐÙI MẪU MỚI','450000','450000','<p>CV220 : Ch&acirc;n v&aacute;y Jean chữ A d&agrave;i eo cao xẻ đ&ugrave;i mẫu mới</p>\r\n\r\n<p>Size M : Eo 71, M&ocirc;ng 97, Dài 76</p>\r\n\r\n<p>Size L : Eo 75, M&ocirc;ng 101, Dài 77</p>\r\n\r\n<p>Kích thước thực t&ecirc;́ có th&ecirc;̉ x&ecirc; dịch 1-3cm so với bảng size.</p>\r\n','',NULL,'chanvay4.png','<p>PRODUCT ID:&nbsp;<strong>26234</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV220</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'1','1','chan-vay-4',NULL,'2022-12-13',NULL,NULL),(141,'CHÂN VÁY JEAN MỎNG CHỮ A XẺ ĐÙI EO CAO','450000','400000','<p>CV219 : Ch&acirc;n váy Jean mỏng chữ A xẻ đùi eo cao</p>\r\n\r\n<p>Size M : Eo 68, M&ocirc;ng 94, D&agrave;i 72cm</p>\r\n\r\n<p>Kích thước thực t&ecirc;́ có th&ecirc;̉ x&ecirc; dịch 1-3cm so với bảng size.</p>\r\n','',NULL,'chanvay5.png','<p>PRODUCT ID:&nbsp;<strong>26220</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV219</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'0','1','chan-vay-5',NULL,'2022-12-13',NULL,NULL),(142,'CHÂN VÁY XÒE CHỮ A IN HOA MẪU MỚI DỄ THƯƠNG','400000','360000','<p>CV218 : Ch&acirc;n v&aacute;y x&ograve;e chữ A in hoa mẫu mới dễ thương</p>\r\n','Còn hàng',NULL,'chanvay6.png','<p>PRODUCT ID:&nbsp;<strong>26208</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV218</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'1','1','chan-vay-6',NULL,'2022-12-13',NULL,NULL),(143,'CHÂN VÁY JEAN CHỮ A XẺ ĐÙI EO CAO MẪU MỚI HOT','450000','420000','<p>CV217 : Ch&acirc;n váy Jean chữ A xẻ đùi eo cao m&acirc;̃u mới HOT</p>\r\n\r\n<p>Size M : Eo 69, M&ocirc;ng 93, Dài 69</p>\r\n\r\n<p>Size L : Eo 73, M&ocirc;ng 97, Dài 70</p>\r\n\r\n<p>Kích thước thực t&ecirc;́ có th&ecirc;̉ x&ecirc; dịch 1-3cm so với bảng size.</p>\r\n','Còn hàng',NULL,'chanvay7.png','<p>PRODUCT ID:&nbsp;<strong>25032</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV217</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'0','1','chan-vay-7',NULL,'2022-12-16',NULL,NULL),(144,'VÁY VOAN HOA LỚN LƯNG CAO MẪU MỚI SIÊU HOT','450000','400000','<p>CV216 : Váy voan hoa lớn lưng cao m&acirc;̃u mới si&ecirc;u HOT</p>\r\n','Còn hàng',NULL,'chanvay8.png','<p>PRODUCT ID:&nbsp;<strong>25017</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV216</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'0','1','chan-vay-8',NULL,'2022-12-16',NULL,NULL),(145,'CHÂN VÁY VOAN XÒE CHỮ A VIỀN BÈO NHỎ','400000','400000','<p>CV215 : Ch&acirc;n váy voan xòe chữ A vi&ecirc;̀n bèo nhỏ</p>\r\n','Còn hàng',NULL,'chanvay9.png','<p>PRODUCT ID:&nbsp;<strong>25000</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV215</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'0','0','chan-vay-9',NULL,'2022-12-16',NULL,NULL),(146,'CHÂN VÁY VOAN TRÁI TIM XÒE CHỮ A DỄ THƯƠNG','400000','390000','<p>CV214 : Ch&acirc;n váy voan trái tim xòe chữ A d&ecirc;̃ thương</p>\r\n','Còn hàng',NULL,'chanvay10.png','<p>PRODUCT ID:&nbsp;<strong>24989</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV214</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'0','1','chan-vay-10',NULL,'2022-12-13',NULL,NULL),(147,'ÁO SƠ MI SỌC KẺ FORM THỤNG CỔ XẺ CHỮ V PHỐI THUN','400000','299000','<p>&Aacute;o sơ mi sọc kẻ form thụng cổ xẻ chữ V phối thun</p>\r\n','Còn hàng',NULL,'ao2.png','<p>PRODUCT ID:&nbsp;<strong>12262</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A1989</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','1','ao-so-mi-11',NULL,'2022-12-16',NULL,NULL),(148,'ÁO SƠ MI SỌC KẺ DỌC 1 TÚI CỔ TRẮNG BẺ MẪU MỚI','385000','350000','<p>&Aacute;o sơ mi sọc kẻ dọc 1 t&uacute;i cổ trắng bẻ mẫu mới 2019</p>\r\n\r\n<p>Video + H&igrave;nh ảnh được cung cấp trực tiếp từ xưởng sản xuất</p>\r\n\r\n<p>Yishop ph&acirc;n phối độc quyền c&aacute;c mẫu sơ mi HQ tại Việt Nam</p>\r\n\r\n<p>Ship COD to&agrave;n quốc từ 3-4 ng&agrave;y sau khi ho&agrave;n tất đặt h&agrave;ng</p>\r\n\r\n<p>Free ship khi mua từ 2 sản phẩm.</p>\r\n','Còn hàng',NULL,'ao3.png','<p>PRODUCT ID:&nbsp;<strong>11368</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;A1953</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-so-mi-nu\" rel=\"tag\">&Aacute;O SƠ MI NỮ</a></p>\r\n',1,'0','1','ao-so-mi-12',NULL,'2022-12-16',NULL,NULL),(149,'ĐẦM VOAN HOA NHÍ XÒE ĐUÔI CÁ CỔ CHỮ V','485000','400000','<p>D230 : Đ&acirc;̀m voan hoa nhí xòe đu&ocirc;i cá c&ocirc;̉ chữ V</p>\r\n\r\n<p>Free size : Ngực 92cm, eo thun, dài 114cm.</p>\r\n\r\n<p>Kích thước th&acirc;̣t sẽ ch&ecirc;nh l&ecirc;̣ch 1-3cm so với bảng size.</p>\r\n','Còn hàng',NULL,'dam11.png','<p>PRODUCT ID:&nbsp;<strong>25142</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D230</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'0','0','dam-11',NULL,'2022-12-16',NULL,NULL),(150,'ĐẦM VOAN HOA NHÍ CỔ THẮT NƠ VIỀN BÈO TAY LOE DÀI','485000','450000','<p>D229 : Đ&acirc;̀m voan hoa nhí c&ocirc;̉ thắt nơ vi&ecirc;̀n bèo tay loe dài</p>\r\n\r\n<p>Free size : Ngực 93cm, eo thun, dài 115cm</p>\r\n\r\n<p>Kích thước th&acirc;̣t sẽ ch&ecirc;nh l&ecirc;̣ch 1-3cm so với bảng size.</p>\r\n','Còn hàng',NULL,'dam12.png','<p>PRODUCT ID:&nbsp;<strong>25122</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;D229</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/vay-dam\" rel=\"tag\">V&Aacute;Y ĐẸP - ĐẦM ĐẸP</a></p>\r\n',2,'0','0','dam-12',NULL,'2022-12-16',NULL,NULL),(151,'ÁO KHOÁC PHAO THÂN NGẮN DÀY CÓ MŨ SAU TÚI CHÉO','850000','800000','<p>Áo khoác phao th&acirc;n ngắn dày có mũ sau túi chéo</p>\r\n','',NULL,'aokhoac13.png','<p>PRODUCT ID:&nbsp;<strong>17952</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K1982</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'0','1','ao-khoac-13',NULL,'2022-12-16',NULL,NULL),(152,'ÁO KHOÁC PHAO THÂN NGẮN 2 TÚI HỘP CÓ MŨ SAU','750000','700000','<p>Áo khoác phao th&acirc;n ngắn 2 túi h&ocirc;̣p có mũ sau</p>\r\n','',NULL,'aokhoac14.png','<p>PRODUCT ID:&nbsp;<strong>17929</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;K1981</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-khoac\" rel=\"tag\">&Aacute;O KHO&Aacute;C NỮ</a></p>\r\n',3,'0','1','ao-khoac-14',NULL,'2022-12-16',NULL,NULL),(153,'ÁO REN HOA CỔ SEN BẺ LÓT LÔNG','425000','350000','<p><a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n','Còn hàng',NULL,'aolen11.png','<p>PRODUCT ID:&nbsp;<strong>4053</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;YA1111</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'0','0','ao-len-11',NULL,'2022-12-16',NULL,NULL),(154,'ÁO LEN DỆT KIM HỞ VAI','340000','285000','<p><a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n','Còn hàng',NULL,'aolen12.png','<p>PRODUCT ID:&nbsp;<strong>4025</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;YA034</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/ao-len-thu-dong\" rel=\"tag\">&Aacute;O LEN THU Đ&Ocirc;NG</a></p>\r\n',4,'0','0','ao-len-12',NULL,'2022-12-16',NULL,NULL),(155,'KHĂN QUÀNG CỔ DẠ LEN SỌC KẺ HQ CAO CẤP','485000','400000','<p>KQ222 : Khăn qu&agrave;ng cổ dạ len sọc kẻ HQ cao cấp</p>\r\n','',NULL,'khan11.png','<p>PRODUCT ID:&nbsp;<strong>27024</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ222</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'0','1','khan-quang-co-11',NULL,'2022-12-16',NULL,NULL),(156,'KHĂN QUÀNG CỔ DẠ LEN SỌC KẺ HQ MỚI','450000','420000','<p>KQ221 : Khăn qu&agrave;ng cổ dạ len sọc kẻ HQ mới</p>\r\n','',NULL,'khan12.png','<p>PRODUCT ID:&nbsp;<strong>27010</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;KQ221</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/khan-quang-co\" rel=\"tag\">KHĂN QU&Agrave;NG CỔ</a></p>\r\n',5,'0','1','khan-quang-co-12',NULL,'2022-12-16',NULL,NULL),(157,'CHÂN VÁY REN LƯỚI XÒE CHẤM BI','400000','350000','<p>Ch&acirc;n v&aacute;y ren lưới x&ograve;e chấm bi</p>\r\n','',NULL,'chanvay11.png','<p>PRODUCT ID:&nbsp;<strong>11960</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV1920</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'0','1','chan-vay-11',NULL,'2022-12-16',NULL,NULL),(158,'CHÂN VÁY REN TẦNG XÒE DÀI','450000','430000','<p>Ch&acirc;n v&aacute;y ren tầng x&ograve;e d&agrave;i</p>\r\n','',NULL,'chanvay12.png','<p>PRODUCT ID:&nbsp;<strong>11932</strong></p>\r\n\r\n<p>M&Atilde;:&nbsp;CV1919</p>\r\n\r\n<p>DANH MỤC:&nbsp;<a href=\"https://yishop.com.vn/danh-muc/chan-vay\" rel=\"tag\">CH&Acirc;N V&Aacute;Y</a></p>\r\n',6,'0','1','chan-vay-12',NULL,'2022-12-16',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'slider-3.png','2022-12-01'),(2,'slider-01.png','2022-12-01');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'admin','admin123','123456789','admin@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_client`
--

DROP TABLE IF EXISTS `users_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_client`
--

LOCK TABLES `users_client` WRITE;
/*!40000 ALTER TABLE `users_client` DISABLE KEYS */;
INSERT INTO `users_client` VALUES (10,'Lê Văn Phú','levanphu123','123456789','phu@gmail.com'),(11,'Minh Chiến','minhchien123','123456789','chien@gmail.com'),(19,'Nguyễn Văn Quốc Tuấn','quoctuan123','123456789','tuan@gmail.com'),(20,'Nguyễn Văn Quốc Tuấn','user123456','123456789','tuanbmt123123@gmail.com'),(21,'Lương Xuân Thắng','luongxuanthang','123456789','thangluon@gmail.com');
/*!40000 ALTER TABLE `users_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_shipper`
--

DROP TABLE IF EXISTS `users_shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_shipper` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_shipper`
--

LOCK TABLES `users_shipper` WRITE;
/*!40000 ALTER TABLE `users_shipper` DISABLE KEYS */;
INSERT INTO `users_shipper` VALUES (2,'shipper','shipper123','123456789','shipper@gmail.com');
/*!40000 ALTER TABLE `users_shipper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16 21:53:07
