-- MySQL dump 10.13  Distrib 8.0.27, for macos12.0 (arm64)
--
-- Host: localhost    Database: zaranara
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `receiver` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zipcode` varchar(300) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_user_id_c030de7d_fk_users_id` (`user_id`),
  CONSTRAINT `address_user_id_c030de7d_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'위코드','서울 강남구 테헤란로 11','11125',1),(2,'집','서울 도봉구 쌍문1동 22-1','32101',2),(3,'동생집','경기 성남시 분당구 수내동 9-22','80051',3),(4,'위코드','서울 강남구 테헤란로 11','11125',4),(5,'본가','경기 부천시 삼청동 8-2','63528',5),(6,'집','서울 강서구 방화동 222-2','90332',6);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_option_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_3a9d1785_fk_users_id` (`user_id`),
  KEY `carts_product_option_id_428c8f62_fk_product_options_id` (`product_option_id`),
  CONSTRAINT `carts_product_option_id_428c8f62_fk_product_options_id` FOREIGN KEY (`product_option_id`) REFERENCES `product_options` (`id`),
  CONSTRAINT `carts_user_id_3a9d1785_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'신상품','신상품 입니다.','https://images.unsplash.com/photo-1543467214-b247439848dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80'),(2,'인기상품','인기상품 입니다.','https://images.unsplash.com/photo-1605286175588-35c340ca31f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2352&q=80'),(3,'크리스마스','크리스마스 입니다.','https://images.unsplash.com/photo-1578990186849-3b6b47e5b3fb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1065&q=80'),(4,'의류','의류 입니다.','https://media.istockphoto.com/photos/cute-little-girl-having-fun-time-in-the-nature-picture-id1294345604?b=1&k=20&m=1294345604&s=170667a&w=0&h=MIdcDRPMnHDqX8E0_swEtZA69GVvnaaQF60VgAng9mY='),(5,'가구&데코&침실','가구 & 데코 & 침실 입니다.','https://images.unsplash.com/photo-1631541911232-72bc7448820a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),(6,'맘마','맘마 입니다.','https://images.unsplash.com/photo-1619960685647-e1e2e5763392?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),(7,'욕실','욕실 입니다.','https://images.unsplash.com/photo-1543588977-39b9ab600091?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=996&q=80'),(8,'선물아이디어','선물아이디어 입니다.','https://images.unsplash.com/photo-1512475190635-3b6f26557377?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'스카이블루'),(2,'민트크림'),(3,'엘리스블루'),(4,'라벤더'),(5,'라이트그레이'),(6,'허니옐로우'),(7,'딥블루'),(8,'스프링그린'),(9,'라이트코랄'),(10,'아쿠아마린'),(11,'샌디브라운'),(12,'올리브그린'),(13,'초코브라운'),(14,'저스티스레드'),(15,'큐트블랙'),(16,'스노우화이트');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_status`
--

DROP TABLE IF EXISTS `delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_status`
--

LOCK TABLES `delivery_status` WRITE;
/*!40000 ALTER TABLE `delivery_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'contenttypes','contenttype'),(3,'orders','deliverystatus'),(4,'orders','order'),(6,'orders','orderproduct'),(5,'orders','orderstatus'),(7,'products','category'),(8,'products','color'),(15,'products','material'),(9,'products','product'),(14,'products','productimage'),(13,'products','productoption'),(20,'products','productset'),(10,'products','size'),(11,'products','theme'),(12,'products','themeproduct'),(2,'sessions','session'),(19,'users','address'),(18,'users','cart'),(17,'users','like'),(16,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-12-01 11:15:09.126720'),(2,'contenttypes','0002_remove_content_type_name','2021-12-01 11:15:09.138865'),(3,'products','0001_initial','2021-12-01 11:15:09.264071'),(4,'users','0001_initial','2021-12-01 11:15:09.345295'),(5,'orders','0001_initial','2021-12-01 11:15:09.407467'),(6,'sessions','0001_initial','2021-12-01 11:15:09.415014'),(7,'orders','0002_rename_stock_orderproduct_product_option','2021-12-01 17:30:40.284402'),(8,'users','0002_rename_stock_cart_product_option','2021-12-01 17:30:40.306453'),(9,'users','0003_alter_user_password','2021-12-01 21:26:12.406120'),(10,'products','0002_auto_20211201_2135','2021-12-01 21:35:33.516189'),(11,'products','0003_product_keyword','2021-12-02 16:02:50.511088'),(12,'products','0002_auto_20211203_1650','2021-12-03 16:50:59.645296');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_product_id_7f73cfa5_fk_products_id` (`product_id`),
  KEY `likes_user_id_0899754c_fk_users_id` (`user_id`),
  CONSTRAINT `likes_product_id_7f73cfa5_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `likes_user_id_0899754c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `caution` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'면','미지근한 물에서 세탁하는 것을 권장합니다. 오염에 약한 소재이니 오염되면 즉시 물로 오염을 지워주세요.'),(2,'폴리에스터','찬물에서 세탁하는 것을 권장합니다. 오염에 강한 소재이니 티슈로 오염을 닦아내고 나중에 세탁하셔도 됩니다.'),(3,'종이','불에 닿으면 안되는 제품입니다.'),(4,'실리콘','뜨거운 물질에 약한 소재 입니다.'),(5,'가죽','제품에 때가 묻었을 경우엔 지우개로 살살 닦아주세요.');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials_product`
--

DROP TABLE IF EXISTS `materials_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `material_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `materials_product_material_id_product_id_e4a21f73_uniq` (`material_id`,`product_id`),
  KEY `materials_product_product_id_16327bcf_fk_products_id` (`product_id`),
  CONSTRAINT `materials_product_material_id_e98b5ffd_fk_materials_id` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`),
  CONSTRAINT `materials_product_product_id_16327bcf_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials_product`
--

LOCK TABLES `materials_product` WRITE;
/*!40000 ALTER TABLE `materials_product` DISABLE KEYS */;
INSERT INTO `materials_product` VALUES (1,1,1),(3,2,3),(2,3,2),(5,4,5),(4,5,4);
/*!40000 ALTER TABLE `materials_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  `tracking_number` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_status_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `product_option_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_products_delivery_status_id_c5f5b483_fk_delivery_status_id` (`delivery_status_id`),
  KEY `order_products_order_id_b5077dc2_fk_orders_id` (`order_id`),
  KEY `order_products_product_option_id_c0bd074b_fk_product_options_id` (`product_option_id`),
  CONSTRAINT `order_products_delivery_status_id_c5f5b483_fk_delivery_status_id` FOREIGN KEY (`delivery_status_id`) REFERENCES `delivery_status` (`id`),
  CONSTRAINT `order_products_order_id_b5077dc2_fk_orders_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_products_product_option_id_c0bd074b_fk_product_options_id` FOREIGN KEY (`product_option_id`) REFERENCES `product_options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_status_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_status_id_05e726df_fk_order_status_id` (`order_status_id`),
  KEY `orders_user_id_7e2523fb_fk_users_id` (`user_id`),
  CONSTRAINT `orders_order_status_id_05e726df_fk_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`),
  CONSTRAINT `orders_user_id_7e2523fb_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `alt` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_28ebf5f0_fk_products_id` (`product_id`),
  CONSTRAINT `product_images_product_id_28ebf5f0_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'베어 프린트 이불커버 이미지 01','https://images.unsplash.com/photo-1607110217074-f70b1947a9e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',1),(2,'베어 프린트 이불커버 이미지 02','https://images.unsplash.com/photo-1543346242-2b8e41fb91ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80',1),(3,'엘리펀트 자수 타월 이미지 01','https://url.kr/jyn1wu',2),(4,'엘리펀트 자수 타월 이미지 02','https://images.unsplash.com/photo-1512475190635-3b6f26557377?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',2),(5,'레더 부티 이미지 01','https://url.kr/jyn1wu',3),(6,'레더 부티 이미지 02','https://images.unsplash.com/photo-1548246671-c518156dcc6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1925&q=80',3),(7,'강아지 머그 이미지 01','https://images.unsplash.com/photo-1607877342097-d5431c3542fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',4),(8,'강아지 머그 이미지 02','https://images.unsplash.com/photo-1607877742574-a483ae272995?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2475&q=80',4),(9,'로봇 북마크 이미지 01','https://images.unsplash.com/photo-1607877342024-27a1ee8b68d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',5),(10,'로봇 북마크 이미지 02','https://images.unsplash.com/photo-1543467214-b247439848dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',5),(11,'아이템 이미지였던것','아이템01-00.jpg',7),(12,'아이템 이미지였던것','아이템01-01.jpg',7),(13,'세트 이미지였던것','https://url.kr/jyn1wu',6),(14,'아이템 이미지였던것','아이템이미지02.jpg',8),(15,'메리 크리스마스','https://url.kr/1mqvdr',9);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_options` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `sales` int NOT NULL,
  `stock` int NOT NULL,
  `thumbnail_image_url` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `color_id` bigint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `size_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_options_product_id_5452622a_fk_products_id` (`product_id`),
  KEY `product_options_color_id_aba390ef_fk_colors_id` (`color_id`),
  KEY `product_options_size_id_2670d2b2_fk_sizes_id` (`size_id`),
  CONSTRAINT `product_options_color_id_aba390ef_fk_colors_id` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  CONSTRAINT `product_options_product_id_5452622a_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_options_size_id_2670d2b2_fk_sizes_id` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_options`
--

LOCK TABLES `product_options` WRITE;
/*!40000 ALTER TABLE `product_options` DISABLE KEYS */;
INSERT INTO `product_options` VALUES (1,'2021-12-01 21:20:31.683388','2021-12-01 21:20:31.683400',121,190,'https://post-phinf.pstatic.net/MjAxOTA0MjZfMjc2/MDAxNTU2MjE2Njc1NjAz.5GjTVBEPY0kd2SExs3uiK2eeZ1K6pCae4MwViLxf8rcg.BN2Tr6BXUaFG_IJJOB4pSFLRdHqprgQxk-ugh-W0uZ4g.JPEG/KakaoTalk_20190426_032248653.jpg?type=w1200',3,1,1),(2,'2021-12-01 21:20:31.688982','2021-12-01 21:20:31.688996',11,0,'https://blog.kakaocdn.net/dn/vu3GC/btqT18KPi5Q/xKtz15fbo8nXdkAyfK9dbk/img.png',11,2,3),(3,'2021-12-01 21:20:31.691599','2021-12-01 21:20:31.691609',5,20,'https://t1.daumcdn.net/cfile/tistory/9927EA405F007B3F16',5,3,3),(4,'2021-12-01 21:20:31.693828','2021-12-01 21:20:31.693836',22,100,'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F99AFD04A5F577D3E10',6,4,4),(5,'2021-12-01 21:20:31.695834','2021-12-01 21:20:31.695839',111,598,'https://t1.daumcdn.net/cfile/tistory/996F674C5E6F5AD914',11,5,4);
/*!40000 ALTER TABLE `product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sets`
--

DROP TABLE IF EXISTS `product_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `x_position` int NOT NULL,
  `y_position` int NOT NULL,
  `product_id` bigint NOT NULL,
  `product_set_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sets`
--

LOCK TABLES `product_sets` WRITE;
/*!40000 ALTER TABLE `product_sets` DISABLE KEYS */;
INSERT INTO `product_sets` VALUES (1,20,20,2,1),(2,20,20,7,6),(3,20,70,8,6);
/*!40000 ALTER TABLE `product_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(65,2) NOT NULL,
  `information` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `keyword` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_a7a3a156_fk_categories_id` (`category_id`),
  CONSTRAINT `products_category_id_a7a3a156_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2021-12-01 19:15:35.078407','2021-12-01 19:15:35.078419','글리터 베어 프린트 이불커버',69000.00,'곰 프린트와 글리터 별 디테일이 매치된 180TC 퍼케일 면 소재 이불 커버.',5,NULL),(2,'2021-12-01 19:15:35.082133','2021-12-01 19:15:35.082139','엘리펀트 자수 후드 타월',49000.00,'면 소재 키즈용 후드 타월. 코끼리 자수가 있는 블루 모노크롬 디자인.',7,NULL),(3,'2021-12-01 19:15:35.083938','2021-12-05 14:43:04.954356','레더 부티',49000.00,'브라운 가죽 부티. 편안한 착용감과 착용하기 쉬운 부착 스트랩.',4,NULL),(4,'2021-12-01 19:15:35.085276','2021-12-01 19:15:35.085282','강아지 쉐이프 실리콘 머그',9000.00,'귀 모양 손잡이가 달린 강아지 얼굴 모양 실리콘 머그.',6,NULL),(5,'2021-12-01 19:15:35.086464','2021-12-01 19:15:35.086469','로봇 북마크',11000.00,'책과 공책을 위한 책갈피. 로봇 자수 디자인 면 소재.',5,NULL),(6,'2021-12-03 21:36:20.777915','2021-12-03 21:36:20.777980','이케아 선물 세트 01',139000.00,'선물세트입니다.01',8,'아이들에게 좋은 선물 세트'),(7,'2021-12-03 21:38:00.321388','2021-12-03 21:38:00.321449','선물세트 01에 맞는 아이템 01',39000.00,'좋은 아이템01 입니다. ',7,'선물세트 01의 첫번째 아이템'),(8,'2021-12-03 21:38:21.849435','2021-12-03 21:38:21.849496','선물세트 01에 맞는 아이템 02',39000.00,'좋은 아이템02 입니다. ',6,'선물세트 02의 첫번째 아이템'),(9,'2021-12-03 21:55:43.091544','2021-12-03 21:55:43.091611','크리스마스테마 아이템 01',49000.00,'',4,'메리 크리스마스');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `information` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'1-2 세','테스트'),(2,'2-3 세','테스트'),(3,'3-4 세','테스트'),(4,'4-5 세','테스트'),(5,'6-7 세','테스트'),(6,'8-9 세','테스트');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_products`
--

DROP TABLE IF EXISTS `theme_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `theme_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `theme_products_product_id_376b072d_fk_products_id` (`product_id`),
  KEY `theme_products_theme_id_dcdb1d6e_fk_themes_id` (`theme_id`),
  CONSTRAINT `theme_products_product_id_376b072d_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `theme_products_theme_id_dcdb1d6e_fk_themes_id` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_products`
--

LOCK TABLES `theme_products` WRITE;
/*!40000 ALTER TABLE `theme_products` DISABLE KEYS */;
INSERT INTO `theme_products` VALUES (1,1,1),(2,2,1),(3,3,3),(4,4,1),(5,5,2),(6,9,3);
/*!40000 ALTER TABLE `theme_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'애니멀'),(2,'로봇'),(3,'크리스마스'),(4,'정글'),(5,'우주'),(6,'공룡');
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cash` decimal(65,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2021-12-01 21:24:28.737089','2021-12-01 21:24:28.737154','이유진','dbwls@hanmail.net','Dldbwls1@','010-1234-5678',631252.00),(2,'2021-12-01 21:24:28.738819','2021-12-01 21:24:28.738827','고민혁','minhyeok@gmail.com','Rhalsgur1@','010-2345-6789',583240.56),(3,'2021-12-01 21:24:28.739642','2021-12-01 21:24:28.739648','김은찬','eunchan@gmail.com','Rladmscks1@','010-3456-7890',554376.11),(4,'2021-12-01 21:24:28.740407','2021-12-01 21:24:28.740412','양주영','jooyoung@gmail.com','Didwndud1@','010-4567-8901',765329.00),(5,'2021-12-01 21:24:28.741164','2021-12-01 21:24:28.741168','김예슬','yesul@gmail.com','RladPtmf1@','010-5678-9012',678320.00),(6,'2021-12-01 21:24:28.741876','2021-12-01 21:24:28.741880','정소영','soyoung@naver.com','Wjdthdud1@','010-6789-0123',666630.55);
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

-- Dump completed on 2021-12-07 14:27:30
