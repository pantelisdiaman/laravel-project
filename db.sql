-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_resets_table',1),(11,'2019_08_19_000000_create_failed_jobs_table',1),(12,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'MyApp','7cb7f18b26b2d0fac8569960f929ec8625cae32d49b499c809d7c91c10fe5971','[\"*\"]',NULL,NULL,'2022-12-10 23:32:39','2022-12-10 23:32:39'),(2,'App\\Models\\User',1,'MyApp','f13b58bae23eea22435203322db8a50e17a88b383a597c786f83332231682ab9','[\"*\"]',NULL,NULL,'2022-12-10 23:32:58','2022-12-10 23:32:58'),(3,'App\\Models\\User',1,'MyApp','0dbb2d58bf3610bde3c3f502e868eac02b414fd8e690e48a18b4a12456a997c8','[\"*\"]',NULL,NULL,'2022-12-10 23:34:08','2022-12-10 23:34:08'),(4,'App\\Models\\User',1,'MyApp','ff112ee8c39fc1d4cf2c32ea737305330f61af603e4f45acc9226a9f275ad898','[\"*\"]',NULL,NULL,'2022-12-11 11:53:37','2022-12-11 11:53:37'),(5,'App\\Models\\User',1,'MyApp','a2d0e3e92dfaf013f243cf9d90c787d9fd0a6849682cd47b08baca80a9513c88','[\"*\"]',NULL,NULL,'2022-12-11 11:54:20','2022-12-11 11:54:20'),(6,'App\\Models\\User',1,'MyApp','51e9e9acb14c2f0b752792b552e49f37a2a9252f453cca6e9b609b4c066fe6b9','[\"*\"]',NULL,NULL,'2022-12-11 11:54:38','2022-12-11 11:54:38'),(7,'App\\Models\\User',1,'MyApp','28ec8dedbf87e4e50294b31da1ea1769e86d594d273458b6e5d224d084f360ff','[\"*\"]',NULL,NULL,'2022-12-11 12:56:35','2022-12-11 12:56:35'),(8,'App\\Models\\User',1,'token','e93e02987c84166c993e2f7c5deaf59bb13300139cfd640c60d13c43e2721066','[\"*\"]',NULL,NULL,'2022-12-11 13:00:16','2022-12-11 13:00:16'),(9,'App\\Models\\User',1,'token','b4dddb9073ab6c1527d0fbcbccf079f117d5cdfac40509dbde45f92150599710','[\"*\"]',NULL,NULL,'2022-12-11 13:08:20','2022-12-11 13:08:20'),(10,'App\\Models\\User',1,'token','1932ea45bc6510a13b78ac8b4167c646c9113a89e2137a5e96c1237c0ec44f57','[\"*\"]',NULL,NULL,'2022-12-11 13:09:25','2022-12-11 13:09:25'),(11,'App\\Models\\User',1,'token','8510b796d62dd0c42a84fdf1cbcb4e7617c57250dcfa5c2cc1a9294ffda7d6e5','[\"*\"]',NULL,NULL,'2022-12-11 13:32:26','2022-12-11 13:32:26'),(12,'App\\Models\\User',1,'token','6281ac67ace63e453bb3b7505d572a4c11e9f19370808690bbcb56fe8ad5741a','[\"*\"]',NULL,NULL,'2022-12-11 13:44:54','2022-12-11 13:44:54'),(13,'App\\Models\\User',1,'token','4b488f23f7a5ea1c6dcacf45accf5a8ab43d08667b45b0b9adef22241d8f997e','[\"*\"]',NULL,NULL,'2022-12-11 13:48:52','2022-12-11 13:48:52'),(14,'App\\Models\\User',1,'token','0b9ed771112ed5b804259e75d39e47c83129f0b05a6863b3eebb1788ad9f186b','[\"*\"]',NULL,NULL,'2022-12-11 13:49:08','2022-12-11 13:49:08'),(15,'App\\Models\\User',1,'token','1c14eac941438b62ad9abc72eeec58f5b9dc20372e38b96a268e40d9294f5828','[\"*\"]',NULL,NULL,'2022-12-11 13:51:17','2022-12-11 13:51:17'),(16,'App\\Models\\User',1,'token','783c42f079edf5c3d7dfe5d8a8a6eddceda07dc68bcde4e352d083a85c4fcc9c','[\"*\"]',NULL,NULL,'2022-12-11 13:52:52','2022-12-11 13:52:52'),(17,'App\\Models\\User',1,'token','2751e579227cb780d0a76ed2d1b123a008c9deba1692c27c3e193fd0d2328f5e','[\"*\"]',NULL,NULL,'2022-12-11 14:09:01','2022-12-11 14:09:01'),(18,'App\\Models\\User',1,'token','ac3e447cfca6ddbdc173c9820c0b6776704ab2d503fdb30d4ae4048d05ae8bf4','[\"*\"]',NULL,NULL,'2022-12-11 14:09:54','2022-12-11 14:09:54'),(19,'App\\Models\\User',1,'token','774d2a13f0a2b6ba07d8842e56df1b72ae8f5bf1a8d00713b8fc89a920a102b8','[\"*\"]',NULL,NULL,'2022-12-11 14:10:42','2022-12-11 14:10:42'),(20,'App\\Models\\User',1,'token','c8a3d7f10aa80e12cad1ee0c3d744ed67830d4f80911a5a44a2f6c1f4f3538db','[\"*\"]',NULL,NULL,'2022-12-11 14:11:50','2022-12-11 14:11:50'),(21,'App\\Models\\User',1,'token','89c8c86a5b6b25e4c0144a39d07ce05cb2a602b911185be9a969f6dfb28d9c2c','[\"*\"]',NULL,NULL,'2022-12-11 14:21:06','2022-12-11 14:21:06'),(22,'App\\Models\\User',1,'token','ec1264cdcb158da3d0f79a14f0a3da6cdf9122c40a66ab589993befcc5383126','[\"*\"]',NULL,NULL,'2022-12-11 14:48:31','2022-12-11 14:48:31');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testcompanies`
--

DROP TABLE IF EXISTS `testcompanies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testcompanies` (
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`name`,`address`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testcompanies`
--

LOCK TABLES `testcompanies` WRITE;
/*!40000 ALTER TABLE `testcompanies` DISABLE KEYS */;
INSERT INTO `testcompanies` VALUES ('LANCOM','THESSALONIKI','2112121222'),('LIONCODE','BALKAN','2102102100'),('NOCOMP','ATHENS','2514236720'),('TESLA','CALIFORNIA','2524022369'),('TESTCOM','ATHENS','2114444256');
/*!40000 ALTER TABLE `testcompanies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'pantelis@gmail.com','pantelis',NULL,'$2y$10$66QuNDh2eo.oc4l9Icd1zOzT4/Hxa8UiKE4C8IY7Wj.oc2Ed/9pm2',NULL,'2022-12-10 22:09:20','2022-12-10 22:09:20');
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

-- Dump completed on 2022-12-11 19:07:13
