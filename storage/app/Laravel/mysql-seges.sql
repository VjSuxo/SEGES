
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
DROP TABLE IF EXISTS `ambientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacidad` int NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disponible',
  `controlador_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ambientes_controlador_id_foreign` (`controlador_id`),
  CONSTRAINT `ambientes_controlador_id_foreign` FOREIGN KEY (`controlador_id`) REFERENCES `controladores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `ambientes` WRITE;
/*!40000 ALTER TABLE `ambientes` DISABLE KEYS */;
INSERT INTO `ambientes` VALUES (1,'amarillo',50,'ocupado',1,'2023-04-09 20:00:51','2023-04-09 20:00:51'),(2,'rojo',20,'disponible',2,'2023-04-09 20:00:51','2023-04-09 20:00:51'),(3,'verde',30,'ocupado',3,'2023-04-09 20:00:51','2023-04-09 20:00:51'),(4,'Amarrilo 1',20,'mantenimiento',1,'2023-04-09 16:14:23','2023-04-09 16:14:24'),(5,'Amarillo 2',50,'libre',1,'2023-04-09 16:14:59','2023-04-09 16:15:00'),(6,'Amarrillo 3',50,'reservado',1,'2023-04-09 16:40:27','2023-04-09 16:40:27');
/*!40000 ALTER TABLE `ambientes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tema_id` bigint unsigned NOT NULL,
  `participante_id` bigint unsigned NOT NULL,
  `asistio` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `asistencias_tema_id_foreign` (`tema_id`),
  KEY `asistencias_participante_id_foreign` (`participante_id`),
  CONSTRAINT `asistencias_participante_id_foreign` FOREIGN KEY (`participante_id`) REFERENCES `participantes` (`id`),
  CONSTRAINT `asistencias_tema_id_foreign` FOREIGN KEY (`tema_id`) REFERENCES `temas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `auditorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditorias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `accion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valores_viejos` json DEFAULT NULL,
  `valores_nuevos` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auditorias_user_id_foreign` (`user_id`),
  CONSTRAINT `auditorias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `auditorias` WRITE;
/*!40000 ALTER TABLE `auditorias` DISABLE KEYS */;
INSERT INTO `auditorias` VALUES (1,32,'Inicio de sesión','Controlador',NULL,NULL,'2023-04-09 20:26:54','2023-04-09 20:26:54'),(2,32,'GET','controlador','null','null','2023-04-09 20:26:55','2023-04-09 20:26:55'),(3,32,'GET','controlador','null','null','2023-04-09 20:26:59','2023-04-09 20:26:59'),(4,32,'GET','controlador','null','null','2023-04-09 20:27:29','2023-04-09 20:27:29'),(5,32,'GET','controlador','null','null','2023-04-09 20:29:29','2023-04-09 20:29:29'),(6,32,'GET','controlador','null','null','2023-04-09 20:30:36','2023-04-09 20:30:36'),(7,32,'GET','controlador','null','null','2023-04-09 20:32:19','2023-04-09 20:32:19'),(8,32,'GET','controlador','null','null','2023-04-09 20:32:33','2023-04-09 20:32:33'),(9,32,'GET','controlador','null','null','2023-04-09 20:36:56','2023-04-09 20:36:56'),(10,32,'GET','controlador','null','null','2023-04-09 20:39:03','2023-04-09 20:39:03'),(11,32,'GET','controlador','null','null','2023-04-09 20:39:15','2023-04-09 20:39:15'),(12,32,'GET','controlador','null','null','2023-04-09 20:39:41','2023-04-09 20:39:41'),(13,32,'GET','controlador','null','null','2023-04-09 20:39:53','2023-04-09 20:39:53'),(14,32,'GET','controlador','null','null','2023-04-09 20:40:01','2023-04-09 20:40:01'),(15,32,'GET','controlador','null','null','2023-04-09 20:40:21','2023-04-09 20:40:21'),(16,32,'GET','controlador','null','null','2023-04-09 20:40:29','2023-04-09 20:40:29'),(17,32,'GET','controlador','null','null','2023-04-09 20:41:40','2023-04-09 20:41:40'),(18,32,'GET','controlador','null','null','2023-04-09 20:42:38','2023-04-09 20:42:38'),(19,32,'GET','controlador','null','null','2023-04-09 20:49:19','2023-04-09 20:49:19'),(20,32,'GET','controlador','null','null','2023-04-09 20:49:42','2023-04-09 20:49:42'),(21,32,'GET','controlador','null','null','2023-04-09 20:50:59','2023-04-09 20:50:59'),(22,32,'GET','controlador','null','null','2023-04-09 20:51:08','2023-04-09 20:51:08'),(23,32,'GET','controlador','null','null','2023-04-09 20:53:46','2023-04-09 20:53:46'),(24,32,'GET','controlador','null','null','2023-04-09 20:56:53','2023-04-09 20:56:53'),(25,32,'GET','controlador','null','null','2023-04-09 21:01:03','2023-04-09 21:01:03'),(26,32,'GET','controlador','null','null','2023-04-09 21:12:49','2023-04-09 21:12:49'),(27,32,'GET','controlador','null','null','2023-04-09 21:15:01','2023-04-09 21:15:01'),(28,32,'GET','controlador','null','null','2023-04-09 21:15:09','2023-04-09 21:15:09'),(29,32,'GET','controlador','null','null','2023-04-09 21:18:27','2023-04-09 21:18:27'),(30,32,'GET','controlador','null','null','2023-04-09 21:18:46','2023-04-09 21:18:46'),(31,32,'GET','controlador','null','null','2023-04-09 21:18:47','2023-04-09 21:18:47'),(32,32,'GET','controlador','null','null','2023-04-09 21:19:04','2023-04-09 21:19:04'),(33,32,'GET','controlador','null','null','2023-04-09 21:19:06','2023-04-09 21:19:06'),(34,32,'GET','controlador','null','null','2023-04-09 21:19:44','2023-04-09 21:19:44'),(35,32,'GET','controlador','null','null','2023-04-09 21:20:23','2023-04-09 21:20:23'),(36,32,'GET','controlador','null','null','2023-04-09 21:21:18','2023-04-09 21:21:18'),(37,32,'GET','controlador','null','null','2023-04-09 21:21:19','2023-04-09 21:21:19'),(38,32,'GET','controlador','null','null','2023-04-09 21:22:39','2023-04-09 21:22:39'),(39,32,'GET','controlador','null','null','2023-04-09 21:22:41','2023-04-09 21:22:41'),(40,32,'GET','controlador','null','null','2023-04-09 21:23:06','2023-04-09 21:23:06'),(41,32,'GET','controlador','null','null','2023-04-09 21:23:11','2023-04-09 21:23:11'),(42,32,'GET','controlador','null','null','2023-04-09 21:24:32','2023-04-09 21:24:32'),(43,32,'GET','controlador','null','null','2023-04-09 21:24:44','2023-04-09 21:24:44'),(44,32,'GET','controlador','null','null','2023-04-09 21:24:49','2023-04-09 21:24:49'),(45,32,'GET','controlador','null','null','2023-04-09 21:24:52','2023-04-09 21:24:52'),(46,32,'GET','controlador','null','null','2023-04-09 21:25:01','2023-04-09 21:25:01'),(47,32,'GET','controlador','null','null','2023-04-09 21:25:03','2023-04-09 21:25:03'),(48,32,'GET','controlador','null','null','2023-04-09 21:25:49','2023-04-09 21:25:49'),(49,32,'GET','controlador','null','null','2023-04-09 21:26:13','2023-04-09 21:26:13'),(50,32,'GET','controlador','null','null','2023-04-09 21:26:14','2023-04-09 21:26:14'),(51,32,'GET','controlador','null','null','2023-04-09 21:26:22','2023-04-09 21:26:22'),(52,32,'GET','controlador','null','null','2023-04-09 21:27:14','2023-04-09 21:27:14'),(53,32,'GET','controlador','null','null','2023-04-09 21:28:08','2023-04-09 21:28:08'),(54,32,'GET','controlador','null','null','2023-04-09 21:28:10','2023-04-09 21:28:10'),(55,32,'GET','controlador','null','null','2023-04-09 21:45:39','2023-04-09 21:45:39'),(56,32,'GET','controlador','null','null','2023-04-09 21:46:26','2023-04-09 21:46:26'),(57,32,'GET','controlador','null','null','2023-04-09 21:46:56','2023-04-09 21:46:56'),(58,32,'GET','controlador','null','null','2023-04-09 21:46:59','2023-04-09 21:46:59'),(59,32,'GET','controlador','null','null','2023-04-09 21:48:08','2023-04-09 21:48:08'),(60,32,'GET','controlador','null','null','2023-04-09 21:48:09','2023-04-09 21:48:09'),(61,32,'GET','controlador','null','null','2023-04-09 21:48:17','2023-04-09 21:48:17'),(62,32,'GET','controlador','null','null','2023-04-09 21:48:20','2023-04-09 21:48:20'),(63,32,'GET','controlador','null','null','2023-04-09 21:49:38','2023-04-09 21:49:38'),(64,32,'GET','controlador','null','null','2023-04-09 21:49:41','2023-04-09 21:49:41'),(65,32,'GET','controlador','null','null','2023-04-09 21:49:57','2023-04-09 21:49:57'),(66,32,'GET','controlador','null','null','2023-04-09 21:51:09','2023-04-09 21:51:09'),(67,32,'GET','controlador','null','null','2023-04-09 21:51:13','2023-04-09 21:51:13'),(68,32,'GET','controlador','null','null','2023-04-09 21:51:15','2023-04-09 21:51:15'),(69,32,'GET','controlador','null','null','2023-04-09 21:51:35','2023-04-09 21:51:35'),(70,32,'GET','controlador','null','null','2023-04-09 21:51:39','2023-04-09 21:51:39'),(71,32,'GET','controlador','null','null','2023-04-09 21:52:19','2023-04-09 21:52:19'),(72,32,'GET','controlador','null','null','2023-04-09 21:53:10','2023-04-09 21:53:10'),(73,32,'GET','controlador','null','null','2023-04-09 21:54:19','2023-04-09 21:54:19'),(74,32,'GET','controlador','null','null','2023-04-09 21:54:20','2023-04-09 21:54:20'),(75,32,'GET','controlador','null','null','2023-04-09 21:54:25','2023-04-09 21:54:25'),(76,32,'GET','controlador','null','null','2023-04-09 21:54:38','2023-04-09 21:54:38'),(77,32,'GET','controlador','null','null','2023-04-09 21:57:12','2023-04-09 21:57:12'),(78,32,'GET','controlador','null','null','2023-04-09 21:57:30','2023-04-09 21:57:30'),(79,32,'GET','controlador','null','null','2023-04-09 21:58:24','2023-04-09 21:58:24'),(80,32,'GET','controlador','null','null','2023-04-09 21:58:47','2023-04-09 21:58:47'),(81,32,'GET','controlador','null','null','2023-04-09 21:59:13','2023-04-09 21:59:13'),(82,32,'GET','controlador','null','null','2023-04-09 21:59:58','2023-04-09 21:59:58'),(83,32,'GET','controlador','null','null','2023-04-09 22:00:15','2023-04-09 22:00:15'),(84,32,'GET','controlador','null','null','2023-04-09 22:02:16','2023-04-09 22:02:16'),(85,32,'GET','controlador','null','null','2023-04-09 22:06:25','2023-04-09 22:06:25'),(86,32,'GET','controlador','null','null','2023-04-09 22:06:27','2023-04-09 22:06:27'),(87,32,'GET','controlador','null','null','2023-04-09 22:07:02','2023-04-09 22:07:02'),(88,32,'GET','controlador','null','null','2023-04-09 22:08:27','2023-04-09 22:08:27'),(89,32,'GET','controlador','null','null','2023-04-09 22:08:31','2023-04-09 22:08:31'),(90,32,'GET','controlador','null','null','2023-04-09 22:08:34','2023-04-09 22:08:34'),(91,32,'GET','controlador','null','null','2023-04-09 22:09:38','2023-04-09 22:09:38'),(92,32,'GET','controlador','null','null','2023-04-09 22:09:41','2023-04-09 22:09:41'),(93,32,'GET','controlador','null','null','2023-04-09 22:10:25','2023-04-09 22:10:25'),(94,32,'GET','controlador','null','null','2023-04-09 22:10:29','2023-04-09 22:10:29'),(95,32,'GET','controlador','null','null','2023-04-09 22:10:47','2023-04-09 22:10:47'),(96,32,'GET','controlador','null','null','2023-04-09 22:10:54','2023-04-09 22:10:54'),(97,32,'GET','controlador','null','null','2023-04-09 22:11:03','2023-04-09 22:11:03'),(98,32,'GET','controlador','null','null','2023-04-09 22:12:21','2023-04-09 22:12:21'),(99,32,'GET','controlador','null','null','2023-04-09 23:53:12','2023-04-09 23:53:12'),(100,32,'GET','controlador','null','null','2023-04-09 23:53:14','2023-04-09 23:53:14'),(101,32,'GET','controlador','null','null','2023-04-09 23:53:25','2023-04-09 23:53:25'),(102,32,'GET','controlador','null','null','2023-04-09 23:53:29','2023-04-09 23:53:29'),(103,32,'GET','controlador','null','null','2023-04-09 23:53:40','2023-04-09 23:53:40'),(104,32,'GET','controlador','null','null','2023-04-09 23:53:43','2023-04-09 23:53:43'),(105,32,'GET','controlador','null','null','2023-04-09 23:54:07','2023-04-09 23:54:07'),(106,32,'GET','controlador','null','null','2023-04-09 23:54:09','2023-04-09 23:54:09'),(107,32,'GET','controlador','null','null','2023-04-09 23:54:18','2023-04-09 23:54:18'),(108,32,'GET','controlador','null','null','2023-04-09 23:54:20','2023-04-09 23:54:20'),(109,32,'GET','controlador','null','null','2023-04-09 23:54:33','2023-04-09 23:54:33'),(110,32,'GET','controlador','null','null','2023-04-09 23:54:35','2023-04-09 23:54:35'),(111,32,'GET','controlador','null','null','2023-04-09 23:55:38','2023-04-09 23:55:38'),(112,32,'GET','controlador','null','null','2023-04-09 23:55:44','2023-04-09 23:55:44'),(113,32,'GET','controlador','null','null','2023-04-09 23:56:30','2023-04-09 23:56:30'),(114,32,'GET','controlador','null','null','2023-04-09 23:56:52','2023-04-09 23:56:52'),(115,32,'GET','controlador','null','null','2023-04-09 23:56:54','2023-04-09 23:56:54'),(116,32,'GET','controlador','null','null','2023-04-09 23:57:41','2023-04-09 23:57:41'),(117,32,'GET','controlador','null','null','2023-04-10 00:08:26','2023-04-10 00:08:26'),(118,32,'GET','controlador','null','null','2023-04-10 00:08:35','2023-04-10 00:08:35'),(119,32,'GET','controlador','null','null','2023-04-10 00:10:29','2023-04-10 00:10:29'),(120,32,'GET','controlador','null','null','2023-04-10 00:11:19','2023-04-10 00:11:19'),(121,32,'GET','controlador','null','null','2023-04-10 00:11:23','2023-04-10 00:11:23'),(122,32,'GET','controlador','null','null','2023-04-10 00:11:25','2023-04-10 00:11:25'),(123,32,'GET','controlador','null','null','2023-04-10 00:11:50','2023-04-10 00:11:50'),(124,32,'GET','controlador','null','null','2023-04-10 00:13:10','2023-04-10 00:13:10'),(125,32,'GET','controlador','null','null','2023-04-10 00:13:26','2023-04-10 00:13:26'),(126,32,'GET','controlador','null','null','2023-04-10 00:13:36','2023-04-10 00:13:36'),(127,32,'GET','controlador','null','null','2023-04-10 00:17:04','2023-04-10 00:17:04'),(128,32,'GET','controlador','null','null','2023-04-10 00:17:05','2023-04-10 00:17:05'),(129,32,'GET','controlador','null','null','2023-04-10 00:17:31','2023-04-10 00:17:31'),(130,32,'GET','controlador','null','null','2023-04-10 00:17:39','2023-04-10 00:17:39'),(131,32,'GET','controlador','null','null','2023-04-10 00:17:47','2023-04-10 00:17:47'),(132,32,'GET','controlador','null','null','2023-04-10 00:18:49','2023-04-10 00:18:49'),(133,32,'GET','controlador','null','null','2023-04-10 00:19:23','2023-04-10 00:19:23'),(134,32,'GET','controlador','null','null','2023-04-10 00:19:33','2023-04-10 00:19:33'),(135,32,'GET','controlador','null','null','2023-04-10 00:19:46','2023-04-10 00:19:46'),(136,32,'GET','controlador','null','null','2023-04-10 00:23:03','2023-04-10 00:23:03'),(137,32,'GET','controlador','null','null','2023-04-10 00:23:08','2023-04-10 00:23:08'),(138,32,'GET','controlador','null','null','2023-04-10 00:23:46','2023-04-10 00:23:46'),(139,32,'GET','controlador','null','null','2023-04-10 00:23:47','2023-04-10 00:23:47'),(140,32,'GET','controlador','null','null','2023-04-10 00:30:31','2023-04-10 00:30:31'),(141,32,'GET','controlador','null','null','2023-04-10 00:31:03','2023-04-10 00:31:03'),(142,32,'GET','controlador','null','null','2023-04-10 00:31:10','2023-04-10 00:31:10'),(143,32,'GET','controlador','null','null','2023-04-10 00:31:13','2023-04-10 00:31:13'),(144,32,'GET','controlador','null','null','2023-04-10 00:31:52','2023-04-10 00:31:52'),(145,32,'GET','controlador','null','null','2023-04-10 00:31:53','2023-04-10 00:31:53'),(146,32,'GET','controlador','null','null','2023-04-10 00:31:54','2023-04-10 00:31:54'),(147,32,'GET','controlador','null','null','2023-04-10 00:31:58','2023-04-10 00:31:58'),(148,32,'GET','controlador','null','null','2023-04-10 00:32:00','2023-04-10 00:32:00'),(149,32,'GET','controlador','null','null','2023-04-10 00:32:05','2023-04-10 00:32:05'),(150,32,'GET','controlador','null','null','2023-04-10 00:32:31','2023-04-10 00:32:31'),(151,32,'GET','controlador','null','null','2023-04-10 00:32:51','2023-04-10 00:32:51'),(152,32,'GET','controlador','null','null','2023-04-10 00:33:05','2023-04-10 00:33:05'),(153,32,'GET','controlador','null','null','2023-04-10 00:33:11','2023-04-10 00:33:11'),(154,32,'GET','controlador','null','null','2023-04-10 00:33:51','2023-04-10 00:33:51'),(155,32,'GET','controlador','null','null','2023-04-10 00:33:58','2023-04-10 00:33:58'),(156,32,'GET','controlador','null','null','2023-04-10 00:34:17','2023-04-10 00:34:17'),(157,32,'GET','controlador','null','null','2023-04-10 00:34:47','2023-04-10 00:34:47'),(158,32,'GET','controlador','null','null','2023-04-10 00:34:59','2023-04-10 00:34:59'),(159,32,'GET','controlador','null','null','2023-04-10 00:35:58','2023-04-10 00:35:58'),(160,32,'GET','controlador','null','null','2023-04-10 00:36:19','2023-04-10 00:36:19'),(161,32,'GET','controlador','null','null','2023-04-10 00:37:51','2023-04-10 00:37:51'),(162,32,'GET','controlador','null','null','2023-04-10 00:38:00','2023-04-10 00:38:00'),(163,32,'GET','controlador','null','null','2023-04-10 00:38:09','2023-04-10 00:38:09'),(164,32,'GET','controlador','null','null','2023-04-10 00:38:11','2023-04-10 00:38:11'),(165,32,'GET','controlador','null','null','2023-04-10 00:41:25','2023-04-10 00:41:25'),(166,32,'GET','controlador','null','null','2023-04-10 00:45:43','2023-04-10 00:45:43'),(167,32,'GET','controlador','null','null','2023-04-10 00:45:43','2023-04-10 00:45:43'),(168,32,'GET','controlador','null','null','2023-04-10 00:45:51','2023-04-10 00:45:51'),(169,32,'GET','controlador','null','null','2023-04-10 00:46:14','2023-04-10 00:46:14'),(170,32,'GET','controlador','null','null','2023-04-10 00:46:20','2023-04-10 00:46:20'),(171,32,'GET','controlador','null','null','2023-04-10 00:46:21','2023-04-10 00:46:21'),(172,32,'GET','controlador','null','null','2023-04-10 00:46:22','2023-04-10 00:46:22'),(173,32,'GET','controlador','null','null','2023-04-10 00:46:25','2023-04-10 00:46:25'),(174,32,'GET','controlador','null','null','2023-04-10 00:46:51','2023-04-10 00:46:51'),(175,32,'GET','controlador','null','null','2023-04-10 00:47:00','2023-04-10 00:47:00'),(176,32,'GET','controlador','null','null','2023-04-10 00:47:42','2023-04-10 00:47:42'),(177,32,'GET','controlador','null','null','2023-04-10 00:47:55','2023-04-10 00:47:55'),(178,32,'GET','controlador','null','null','2023-04-10 00:47:55','2023-04-10 00:47:55'),(179,32,'GET','controlador','null','null','2023-04-10 00:47:57','2023-04-10 00:47:57'),(180,32,'GET','controlador','null','null','2023-04-10 00:48:00','2023-04-10 00:48:00'),(181,32,'GET','controlador','null','null','2023-04-10 00:48:09','2023-04-10 00:48:09'),(182,32,'GET','controlador','null','null','2023-04-10 00:48:09','2023-04-10 00:48:09'),(183,32,'GET','controlador','null','null','2023-04-10 00:48:12','2023-04-10 00:48:12'),(184,32,'GET','controlador','null','null','2023-04-10 00:48:36','2023-04-10 00:48:36'),(185,32,'GET','controlador','null','null','2023-04-10 00:49:05','2023-04-10 00:49:05'),(186,32,'GET','controlador','null','null','2023-04-10 00:49:23','2023-04-10 00:49:23'),(187,32,'GET','controlador','null','null','2023-04-10 00:50:18','2023-04-10 00:50:18'),(188,32,'GET','controlador','null','null','2023-04-10 00:50:25','2023-04-10 00:50:25'),(189,32,'GET','controlador','null','null','2023-04-10 00:50:28','2023-04-10 00:50:28'),(190,32,'GET','controlador','null','null','2023-04-10 00:50:29','2023-04-10 00:50:29'),(191,32,'GET','controlador','null','null','2023-04-10 00:50:35','2023-04-10 00:50:35'),(192,32,'GET','controlador','null','null','2023-04-10 00:50:50','2023-04-10 00:50:50'),(193,32,'GET','controlador','null','null','2023-04-10 00:50:51','2023-04-10 00:50:51'),(194,32,'GET','controlador','null','null','2023-04-10 00:51:38','2023-04-10 00:51:38'),(195,32,'GET','controlador','null','null','2023-04-10 00:51:38','2023-04-10 00:51:38'),(196,32,'GET','controlador','null','null','2023-04-10 00:51:53','2023-04-10 00:51:53'),(197,32,'GET','controlador','null','null','2023-04-10 00:52:14','2023-04-10 00:52:14'),(198,32,'GET','controlador','null','null','2023-04-10 00:52:14','2023-04-10 00:52:14'),(199,32,'GET','controlador','null','null','2023-04-10 00:52:25','2023-04-10 00:52:25'),(200,32,'GET','controlador','null','null','2023-04-10 00:52:26','2023-04-10 00:52:26'),(201,32,'GET','controlador','null','null','2023-04-10 00:52:26','2023-04-10 00:52:26'),(202,32,'GET','controlador','null','null','2023-04-10 00:52:50','2023-04-10 00:52:50'),(203,32,'GET','controlador','null','null','2023-04-10 00:52:51','2023-04-10 00:52:51'),(204,32,'GET','controlador','null','null','2023-04-10 00:53:42','2023-04-10 00:53:42'),(205,32,'GET','controlador','null','null','2023-04-10 00:53:42','2023-04-10 00:53:42'),(206,32,'GET','controlador','null','null','2023-04-10 00:53:42','2023-04-10 00:53:42'),(207,32,'GET','controlador','null','null','2023-04-10 00:54:49','2023-04-10 00:54:49'),(208,32,'GET','controlador','null','null','2023-04-10 00:54:49','2023-04-10 00:54:49'),(209,32,'GET','controlador','null','null','2023-04-10 00:54:50','2023-04-10 00:54:50'),(210,32,'GET','controlador','null','null','2023-04-10 00:55:02','2023-04-10 00:55:02'),(211,32,'GET','controlador','null','null','2023-04-10 00:55:02','2023-04-10 00:55:02'),(212,32,'GET','controlador','null','null','2023-04-10 00:55:02','2023-04-10 00:55:02'),(213,32,'GET','controlador','null','null','2023-04-10 00:55:25','2023-04-10 00:55:25'),(214,32,'GET','controlador','null','null','2023-04-10 00:55:25','2023-04-10 00:55:25'),(215,32,'GET','controlador','null','null','2023-04-10 00:55:26','2023-04-10 00:55:26'),(216,32,'GET','controlador','null','null','2023-04-10 00:55:57','2023-04-10 00:55:57'),(217,32,'GET','controlador','null','null','2023-04-10 00:55:57','2023-04-10 00:55:57'),(218,32,'GET','controlador','null','null','2023-04-10 00:55:57','2023-04-10 00:55:57'),(219,32,'GET','controlador','null','null','2023-04-10 00:57:26','2023-04-10 00:57:26'),(220,32,'GET','controlador','null','null','2023-04-10 00:57:27','2023-04-10 00:57:27'),(221,32,'GET','controlador','null','null','2023-04-10 00:57:49','2023-04-10 00:57:49'),(222,32,'GET','controlador','null','null','2023-04-10 00:57:50','2023-04-10 00:57:50'),(223,32,'GET','controlador','null','null','2023-04-10 00:57:50','2023-04-10 00:57:50'),(224,32,'GET','controlador','null','null','2023-04-10 00:58:12','2023-04-10 00:58:12'),(225,32,'GET','controlador','null','null','2023-04-10 00:58:12','2023-04-10 00:58:12'),(226,32,'GET','controlador','null','null','2023-04-10 00:58:13','2023-04-10 00:58:13'),(227,32,'GET','controlador','null','null','2023-04-10 00:58:21','2023-04-10 00:58:21'),(228,32,'GET','controlador','null','null','2023-04-10 00:58:21','2023-04-10 00:58:21'),(229,32,'GET','controlador','null','null','2023-04-10 00:58:22','2023-04-10 00:58:22'),(230,32,'GET','controlador','null','null','2023-04-10 00:58:40','2023-04-10 00:58:40'),(231,32,'GET','controlador','null','null','2023-04-10 00:58:41','2023-04-10 00:58:41'),(232,32,'GET','controlador','null','null','2023-04-10 00:59:28','2023-04-10 00:59:28'),(233,32,'GET','controlador','null','null','2023-04-10 00:59:28','2023-04-10 00:59:28'),(234,32,'GET','controlador','null','null','2023-04-10 00:59:29','2023-04-10 00:59:29'),(235,32,'GET','controlador','null','null','2023-04-10 00:59:41','2023-04-10 00:59:41'),(236,32,'GET','controlador','null','null','2023-04-10 00:59:42','2023-04-10 00:59:42'),(237,32,'GET','controlador','null','null','2023-04-10 00:59:42','2023-04-10 00:59:42'),(238,32,'GET','controlador','null','null','2023-04-10 00:59:44','2023-04-10 00:59:44'),(239,32,'GET','controlador','null','null','2023-04-10 00:59:45','2023-04-10 00:59:45'),(240,32,'GET','controlador','null','null','2023-04-10 00:59:45','2023-04-10 00:59:45'),(241,32,'GET','controlador','null','null','2023-04-10 01:05:35','2023-04-10 01:05:35'),(242,32,'GET','controlador','null','null','2023-04-10 01:05:35','2023-04-10 01:05:35'),(243,32,'GET','controlador','null','null','2023-04-10 01:08:21','2023-04-10 01:08:21'),(244,32,'GET','controlador','null','null','2023-04-10 01:08:22','2023-04-10 01:08:22'),(245,32,'GET','controlador','null','null','2023-04-10 01:08:22','2023-04-10 01:08:22'),(246,32,'GET','controlador','null','null','2023-04-10 01:08:30','2023-04-10 01:08:30'),(247,32,'GET','controlador','null','null','2023-04-10 01:08:30','2023-04-10 01:08:30'),(248,32,'GET','controlador','null','null','2023-04-10 01:08:30','2023-04-10 01:08:30'),(249,32,'GET','controlador','null','null','2023-04-10 01:08:44','2023-04-10 01:08:44'),(250,32,'GET','controlador','null','null','2023-04-10 01:08:44','2023-04-10 01:08:44'),(251,32,'GET','controlador','null','null','2023-04-10 01:08:44','2023-04-10 01:08:44'),(252,32,'GET','controlador','null','null','2023-04-10 01:08:50','2023-04-10 01:08:50'),(253,32,'GET','controlador','null','null','2023-04-10 01:08:50','2023-04-10 01:08:50'),(254,32,'GET','controlador','null','null','2023-04-10 01:08:50','2023-04-10 01:08:50'),(255,32,'GET','controlador','null','null','2023-04-10 01:10:02','2023-04-10 01:10:02'),(256,32,'GET','controlador','null','null','2023-04-10 01:10:02','2023-04-10 01:10:02'),(257,32,'GET','controlador','null','null','2023-04-10 01:10:02','2023-04-10 01:10:02'),(258,32,'GET','controlador','null','null','2023-04-10 01:10:53','2023-04-10 01:10:53'),(259,32,'GET','controlador','null','null','2023-04-10 01:10:53','2023-04-10 01:10:53'),(260,32,'GET','controlador','null','null','2023-04-10 01:10:54','2023-04-10 01:10:54'),(261,32,'GET','controlador','null','null','2023-04-10 01:10:59','2023-04-10 01:10:59'),(262,32,'GET','controlador','null','null','2023-04-10 01:10:59','2023-04-10 01:10:59'),(263,32,'GET','controlador','null','null','2023-04-10 01:10:59','2023-04-10 01:10:59'),(264,32,'GET','controlador','null','null','2023-04-10 01:11:34','2023-04-10 01:11:34'),(265,32,'GET','controlador','null','null','2023-04-10 01:11:35','2023-04-10 01:11:35'),(266,32,'GET','controlador','null','null','2023-04-10 01:11:36','2023-04-10 01:11:36'),(267,32,'GET','controlador','null','null','2023-04-10 01:11:46','2023-04-10 01:11:46'),(268,32,'GET','controlador','null','null','2023-04-10 01:11:46','2023-04-10 01:11:46'),(269,32,'GET','controlador','null','null','2023-04-10 01:11:46','2023-04-10 01:11:46'),(270,32,'GET','controlador','null','null','2023-04-10 01:11:49','2023-04-10 01:11:49'),(271,32,'GET','controlador','null','null','2023-04-10 01:12:04','2023-04-10 01:12:04'),(272,32,'GET','controlador','null','null','2023-04-10 01:12:04','2023-04-10 01:12:04'),(273,32,'GET','controlador','null','null','2023-04-10 01:12:05','2023-04-10 01:12:05'),(274,32,'GET','controlador','null','null','2023-04-10 01:12:07','2023-04-10 01:12:07'),(275,32,'GET','controlador','null','null','2023-04-10 01:12:24','2023-04-10 01:12:24'),(276,32,'GET','controlador','null','null','2023-04-10 01:12:25','2023-04-10 01:12:25'),(277,32,'GET','controlador','null','null','2023-04-10 01:12:25','2023-04-10 01:12:25'),(278,32,'GET','controlador','null','null','2023-04-10 01:12:28','2023-04-10 01:12:28'),(279,32,'GET','controlador','null','null','2023-04-10 01:25:55','2023-04-10 01:25:55'),(280,32,'GET','controlador','null','null','2023-04-10 01:25:55','2023-04-10 01:25:55'),(281,32,'GET','controlador','null','null','2023-04-10 01:25:57','2023-04-10 01:25:57'),(282,32,'GET','controlador','null','null','2023-04-10 01:26:00','2023-04-10 01:26:00'),(283,32,'GET','controlador','null','null','2023-04-10 01:26:58','2023-04-10 01:26:58'),(284,32,'GET','controlador','null','null','2023-04-10 01:26:59','2023-04-10 01:26:59'),(285,32,'GET','controlador','null','null','2023-04-10 01:27:00','2023-04-10 01:27:00'),(286,32,'GET','controlador','null','null','2023-04-10 01:27:17','2023-04-10 01:27:17'),(287,32,'GET','controlador','null','null','2023-04-10 01:27:18','2023-04-10 01:27:18'),(288,32,'GET','controlador','null','null','2023-04-10 01:27:19','2023-04-10 01:27:19'),(289,32,'GET','controlador','null','null','2023-04-10 01:27:57','2023-04-10 01:27:57'),(290,32,'GET','controlador','null','null','2023-04-10 01:27:58','2023-04-10 01:27:58'),(291,32,'GET','controlador','null','null','2023-04-10 01:28:25','2023-04-10 01:28:25'),(292,32,'GET','controlador','null','null','2023-04-10 01:28:25','2023-04-10 01:28:25'),(293,32,'GET','controlador','null','null','2023-04-10 01:28:26','2023-04-10 01:28:26'),(294,32,'GET','controlador','null','null','2023-04-10 01:28:29','2023-04-10 01:28:29'),(295,32,'GET','controlador','null','null','2023-04-10 01:29:29','2023-04-10 01:29:29'),(296,32,'GET','controlador','null','null','2023-04-10 01:29:30','2023-04-10 01:29:30'),(297,32,'GET','controlador','null','null','2023-04-10 01:29:31','2023-04-10 01:29:31'),(298,32,'GET','controlador','null','null','2023-04-10 01:29:33','2023-04-10 01:29:33'),(299,32,'GET','controlador','null','null','2023-04-10 01:30:24','2023-04-10 01:30:24'),(300,32,'GET','controlador','null','null','2023-04-10 01:30:26','2023-04-10 01:30:26'),(301,32,'GET','controlador','null','null','2023-04-10 01:30:28','2023-04-10 01:30:28'),(302,32,'GET','controlador','null','null','2023-04-10 01:30:30','2023-04-10 01:30:30'),(303,32,'GET','controlador','null','null','2023-04-10 01:30:32','2023-04-10 01:30:32'),(304,32,'GET','controlador','null','null','2023-04-10 01:30:44','2023-04-10 01:30:44'),(305,32,'GET','controlador','null','null','2023-04-10 01:30:45','2023-04-10 01:30:45'),(306,32,'GET','controlador','null','null','2023-04-10 01:30:45','2023-04-10 01:30:45'),(307,32,'GET','controlador','null','null','2023-04-10 01:31:05','2023-04-10 01:31:05'),(308,32,'GET','controlador','null','null','2023-04-10 01:31:06','2023-04-10 01:31:06'),(309,32,'GET','controlador','null','null','2023-04-10 01:31:07','2023-04-10 01:31:07'),(310,32,'GET','controlador','null','null','2023-04-10 01:36:32','2023-04-10 01:36:32'),(311,32,'GET','controlador','null','null','2023-04-10 01:36:32','2023-04-10 01:36:32'),(312,32,'GET','controlador','null','null','2023-04-10 01:36:33','2023-04-10 01:36:33'),(313,32,'GET','controlador','null','null','2023-04-10 01:36:54','2023-04-10 01:36:54'),(314,32,'GET','controlador','null','null','2023-04-10 01:36:55','2023-04-10 01:36:55'),(315,32,'GET','controlador','null','null','2023-04-10 01:37:00','2023-04-10 01:37:00'),(316,32,'GET','controlador','null','null','2023-04-10 01:37:18','2023-04-10 01:37:18'),(317,32,'GET','controlador','null','null','2023-04-10 01:37:49','2023-04-10 01:37:49'),(318,32,'GET','controlador','null','null','2023-04-10 01:38:53','2023-04-10 01:38:53'),(319,32,'GET','controlador','null','null','2023-04-10 01:39:09','2023-04-10 01:39:09'),(320,32,'GET','controlador','null','null','2023-04-10 01:40:43','2023-04-10 01:40:43'),(321,32,'GET','controlador','null','null','2023-04-10 01:40:57','2023-04-10 01:40:57'),(322,32,'GET','controlador','null','null','2023-04-10 01:41:03','2023-04-10 01:41:03'),(323,32,'GET','controlador','null','null','2023-04-10 01:41:17','2023-04-10 01:41:17'),(324,32,'GET','controlador','null','null','2023-04-10 01:43:07','2023-04-10 01:43:07'),(325,32,'GET','controlador','null','null','2023-04-10 01:45:29','2023-04-10 01:45:29'),(326,32,'GET','controlador','null','null','2023-04-10 01:45:36','2023-04-10 01:45:36'),(327,32,'GET','controlador','null','null','2023-04-10 01:48:17','2023-04-10 01:48:17'),(328,32,'Cierre de sesión','controlador',NULL,NULL,'2023-04-10 02:04:44','2023-04-10 02:04:44'),(329,12,'Inicio de sesión','Expositor',NULL,NULL,'2023-04-10 02:05:10','2023-04-10 02:05:10'),(330,12,'GET','expositor','null','null','2023-04-10 02:05:11','2023-04-10 02:05:11'),(331,12,'GET','expositor','null','null','2023-04-10 02:05:13','2023-04-10 02:05:13'),(332,12,'Cierre de sesión','expositor',NULL,NULL,'2023-04-10 02:05:26','2023-04-10 02:05:26'),(333,32,'Inicio de sesión','Controlador',NULL,NULL,'2023-04-10 02:05:40','2023-04-10 02:05:40'),(334,32,'GET','controlador','null','null','2023-04-10 02:05:40','2023-04-10 02:05:40'),(335,32,'GET','controlador','null','null','2023-04-10 02:05:42','2023-04-10 02:05:42'),(336,32,'GET','controlador','null','null','2023-04-10 02:07:47','2023-04-10 02:07:47'),(337,32,'GET','controlador','null','null','2023-04-10 02:08:41','2023-04-10 02:08:41'),(338,32,'GET','controlador','null','null','2023-04-10 02:08:56','2023-04-10 02:08:56'),(339,32,'GET','controlador','null','null','2023-04-10 02:09:13','2023-04-10 02:09:13'),(340,32,'GET','controlador','null','null','2023-04-10 02:09:38','2023-04-10 02:09:38'),(341,32,'GET','controlador','null','null','2023-04-10 02:09:45','2023-04-10 02:09:45'),(342,32,'GET','controlador','null','null','2023-04-10 02:11:32','2023-04-10 02:11:32'),(343,32,'GET','controlador','null','null','2023-04-10 02:11:49','2023-04-10 02:11:49'),(344,32,'GET','controlador','null','null','2023-04-10 02:14:52','2023-04-10 02:14:52'),(345,32,'GET','controlador','null','null','2023-04-10 02:14:58','2023-04-10 02:14:58'),(346,32,'GET','controlador','null','null','2023-04-10 02:15:47','2023-04-10 02:15:47'),(347,32,'GET','controlador','null','null','2023-04-10 02:16:51','2023-04-10 02:16:51'),(348,32,'GET','controlador','null','null','2023-04-10 02:19:28','2023-04-10 02:19:28'),(349,32,'GET','controlador','null','null','2023-04-10 02:19:42','2023-04-10 02:19:42'),(350,32,'GET','controlador','null','null','2023-04-10 02:21:53','2023-04-10 02:21:53'),(351,32,'GET','controlador','null','null','2023-04-10 02:22:00','2023-04-10 02:22:00'),(352,32,'GET','controlador','null','null','2023-04-10 02:22:07','2023-04-10 02:22:07'),(353,32,'GET','controlador','null','null','2023-04-10 02:22:11','2023-04-10 02:22:11'),(354,32,'GET','controlador','null','null','2023-04-10 02:23:40','2023-04-10 02:23:40'),(355,32,'GET','controlador','null','null','2023-04-10 02:24:13','2023-04-10 02:24:13'),(356,32,'GET','controlador','null','null','2023-04-10 02:28:18','2023-04-10 02:28:18'),(357,32,'GET','controlador','null','null','2023-04-10 02:29:20','2023-04-10 02:29:20'),(358,32,'GET','controlador','null','null','2023-04-10 02:29:23','2023-04-10 02:29:23'),(359,32,'GET','controlador','null','null','2023-04-10 02:43:09','2023-04-10 02:43:09'),(360,32,'GET','controlador','null','null','2023-04-10 03:05:17','2023-04-10 03:05:17'),(361,32,'GET','controlador','null','null','2023-04-10 03:05:39','2023-04-10 03:05:39'),(362,32,'GET','controlador','null','null','2023-04-10 03:17:11','2023-04-10 03:17:11'),(363,32,'GET','controlador','null','null','2023-04-10 03:17:24','2023-04-10 03:17:24'),(364,32,'GET','controlador','null','null','2023-04-10 03:19:02','2023-04-10 03:19:02'),(365,32,'GET','controlador','null','null','2023-04-10 03:20:41','2023-04-10 03:20:41'),(366,32,'GET','controlador','null','null','2023-04-10 03:20:45','2023-04-10 03:20:45'),(367,32,'GET','controlador','null','null','2023-04-10 03:21:13','2023-04-10 03:21:13'),(368,32,'GET','controlador','null','null','2023-04-10 03:21:36','2023-04-10 03:21:36'),(369,32,'GET','controlador','null','null','2023-04-10 03:21:52','2023-04-10 03:21:52'),(370,32,'GET','controlador','null','null','2023-04-10 03:22:17','2023-04-10 03:22:17'),(371,32,'GET','controlador','null','null','2023-04-10 03:25:14','2023-04-10 03:25:14'),(372,32,'GET','controlador','null','null','2023-04-10 03:25:30','2023-04-10 03:25:30'),(373,32,'GET','controlador','null','null','2023-04-10 03:27:37','2023-04-10 03:27:37'),(374,32,'GET','controlador','null','null','2023-04-10 03:28:12','2023-04-10 03:28:12'),(375,32,'GET','controlador','null','null','2023-04-10 03:28:45','2023-04-10 03:28:45'),(376,32,'GET','controlador','null','null','2023-04-10 03:28:56','2023-04-10 03:28:56'),(377,32,'GET','controlador','null','null','2023-04-10 03:33:28','2023-04-10 03:33:28'),(378,32,'GET','controlador','null','null','2023-04-10 03:37:09','2023-04-10 03:37:09'),(379,32,'GET','controlador','null','null','2023-04-10 03:37:32','2023-04-10 03:37:32'),(380,32,'GET','controlador','null','null','2023-04-10 03:37:53','2023-04-10 03:37:53'),(381,32,'GET','controlador','null','null','2023-04-10 03:38:02','2023-04-10 03:38:02'),(382,32,'GET','controlador','null','null','2023-04-10 03:38:15','2023-04-10 03:38:15'),(383,32,'GET','controlador','null','null','2023-04-10 03:38:21','2023-04-10 03:38:21'),(384,32,'GET','controlador','null','null','2023-04-10 03:38:29','2023-04-10 03:38:29'),(385,32,'GET','controlador','null','null','2023-04-10 03:38:42','2023-04-10 03:38:42'),(386,32,'GET','controlador','null','null','2023-04-10 03:38:49','2023-04-10 03:38:49'),(387,32,'GET','controlador','null','null','2023-04-10 03:39:36','2023-04-10 03:39:36'),(388,32,'GET','controlador','null','null','2023-04-10 03:39:42','2023-04-10 03:39:42'),(389,32,'GET','controlador','null','null','2023-04-10 03:39:51','2023-04-10 03:39:51'),(390,32,'GET','controlador','null','null','2023-04-10 03:39:57','2023-04-10 03:39:57'),(391,32,'GET','controlador','null','null','2023-04-10 03:39:58','2023-04-10 03:39:58'),(392,32,'GET','controlador','null','null','2023-04-10 03:40:03','2023-04-10 03:40:03'),(393,32,'GET','controlador','null','null','2023-04-10 03:41:24','2023-04-10 03:41:24'),(394,32,'GET','controlador','null','null','2023-04-10 03:41:36','2023-04-10 03:41:36'),(395,32,'GET','controlador','null','null','2023-04-10 03:41:46','2023-04-10 03:41:46'),(396,32,'GET','controlador','null','null','2023-04-10 03:44:17','2023-04-10 03:44:17'),(397,32,'GET','controlador','null','null','2023-04-10 03:44:51','2023-04-10 03:44:51'),(398,32,'GET','controlador','null','null','2023-04-10 03:45:15','2023-04-10 03:45:15'),(399,32,'GET','controlador','null','null','2023-04-10 03:51:36','2023-04-10 03:51:36'),(400,32,'GET','controlador','null','null','2023-04-10 03:52:02','2023-04-10 03:52:02'),(401,32,'GET','controlador','null','null','2023-04-10 03:52:49','2023-04-10 03:52:49'),(402,32,'GET','controlador','null','null','2023-04-10 03:54:01','2023-04-10 03:54:01'),(403,32,'GET','controlador','null','null','2023-04-10 03:54:27','2023-04-10 03:54:27'),(404,32,'GET','controlador','null','null','2023-04-10 03:54:48','2023-04-10 03:54:48'),(405,32,'GET','controlador','null','null','2023-04-10 03:55:00','2023-04-10 03:55:00'),(406,32,'GET','controlador','null','null','2023-04-10 03:55:12','2023-04-10 03:55:12'),(407,32,'GET','controlador','null','null','2023-04-10 03:55:29','2023-04-10 03:55:29'),(408,32,'GET','controlador','null','null','2023-04-10 03:55:30','2023-04-10 03:55:30'),(409,32,'GET','controlador','null','null','2023-04-10 03:59:19','2023-04-10 03:59:19'),(410,32,'GET','controlador','null','null','2023-04-10 04:00:19','2023-04-10 04:00:19'),(411,32,'GET','controlador','null','null','2023-04-10 04:01:30','2023-04-10 04:01:30'),(412,32,'GET','controlador','null','null','2023-04-10 04:01:43','2023-04-10 04:01:43'),(413,32,'GET','controlador','null','null','2023-04-10 04:01:52','2023-04-10 04:01:52'),(414,32,'GET','controlador','null','null','2023-04-10 04:03:11','2023-04-10 04:03:11'),(415,32,'GET','controlador','null','null','2023-04-10 04:03:16','2023-04-10 04:03:16'),(416,32,'GET','controlador','null','null','2023-04-10 04:03:31','2023-04-10 04:03:31'),(417,32,'GET','controlador','null','null','2023-04-10 04:03:35','2023-04-10 04:03:35'),(418,32,'GET','controlador','null','null','2023-04-10 04:03:40','2023-04-10 04:03:40'),(419,32,'GET','controlador','null','null','2023-04-10 04:03:45','2023-04-10 04:03:45'),(420,32,'GET','controlador','null','null','2023-04-10 04:03:49','2023-04-10 04:03:49'),(421,32,'GET','controlador','null','null','2023-04-10 04:06:38','2023-04-10 04:06:38'),(422,32,'GET','controlador','null','null','2023-04-10 04:08:22','2023-04-10 04:08:22'),(423,32,'GET','controlador','null','null','2023-04-10 04:08:51','2023-04-10 04:08:51'),(424,32,'Cierre de sesión','controlador',NULL,NULL,'2023-04-10 04:08:53','2023-04-10 04:08:53'),(425,35,'GET','user','null','null','2023-04-10 04:10:02','2023-04-10 04:10:02'),(426,35,'Cierre de sesión','user',NULL,NULL,'2023-04-10 04:10:09','2023-04-10 04:10:09'),(427,35,'Inicio de sesión','Administrador',NULL,NULL,'2023-04-10 04:10:30','2023-04-10 04:10:30'),(428,35,'GET','admin','null','null','2023-04-10 04:10:31','2023-04-10 04:10:31'),(429,35,'GET','admin','null','null','2023-04-10 04:10:41','2023-04-10 04:10:41'),(430,35,'GET','admin','null','null','2023-04-10 04:10:44','2023-04-10 04:10:44'),(431,35,'GET','admin','null','null','2023-04-10 04:10:46','2023-04-10 04:10:46'),(432,35,'GET','admin','null','null','2023-04-10 04:10:58','2023-04-10 04:10:58'),(433,35,'Cierre de sesión','admin',NULL,NULL,'2023-04-10 04:11:05','2023-04-10 04:11:05'),(434,32,'Inicio de sesión','Controlador',NULL,NULL,'2023-04-10 04:11:23','2023-04-10 04:11:23'),(435,32,'GET','controlador','null','null','2023-04-10 04:11:23','2023-04-10 04:11:23'),(436,32,'GET','controlador','null','null','2023-04-10 04:11:25','2023-04-10 04:11:25'),(437,32,'GET','controlador','null','null','2023-04-10 04:11:56','2023-04-10 04:11:56'),(438,32,'GET','controlador','null','null','2023-04-10 04:15:41','2023-04-10 04:15:41'),(439,32,'GET','controlador','null','null','2023-04-10 04:22:17','2023-04-10 04:22:17'),(440,32,'GET','controlador','null','null','2023-04-10 04:24:35','2023-04-10 04:24:35'),(441,32,'GET','controlador','null','null','2023-04-10 04:24:42','2023-04-10 04:24:42'),(442,32,'GET','controlador','null','null','2023-04-10 04:25:51','2023-04-10 04:25:51'),(443,32,'GET','controlador','null','null','2023-04-10 04:26:07','2023-04-10 04:26:07'),(444,32,'GET','controlador','null','null','2023-04-10 04:26:55','2023-04-10 04:26:55'),(445,32,'GET','controlador','null','null','2023-04-10 04:27:11','2023-04-10 04:27:11'),(446,32,'GET','controlador','null','null','2023-04-10 04:27:19','2023-04-10 04:27:19'),(447,32,'GET','controlador','null','null','2023-04-10 04:28:09','2023-04-10 04:28:09'),(448,32,'GET','controlador','null','null','2023-04-10 04:28:20','2023-04-10 04:28:20'),(449,32,'GET','controlador','null','null','2023-04-10 04:30:10','2023-04-10 04:30:10'),(450,32,'GET','controlador','null','null','2023-04-10 04:30:26','2023-04-10 04:30:26'),(451,32,'GET','controlador','null','null','2023-04-10 04:30:29','2023-04-10 04:30:29'),(452,32,'GET','controlador','null','null','2023-04-10 04:30:38','2023-04-10 04:30:38'),(453,32,'GET','controlador','null','null','2023-04-10 04:31:56','2023-04-10 04:31:56'),(454,32,'GET','controlador','null','null','2023-04-10 04:32:25','2023-04-10 04:32:25'),(455,32,'GET','controlador','null','null','2023-04-10 04:32:58','2023-04-10 04:32:58'),(456,32,'GET','controlador','null','null','2023-04-10 04:33:35','2023-04-10 04:33:35'),(457,32,'GET','controlador','null','null','2023-04-10 04:34:25','2023-04-10 04:34:25'),(458,32,'GET','controlador','null','null','2023-04-10 04:34:45','2023-04-10 04:34:45'),(459,32,'GET','controlador','null','null','2023-04-10 04:34:54','2023-04-10 04:34:54'),(460,32,'GET','controlador','null','null','2023-04-10 04:35:01','2023-04-10 04:35:01'),(461,32,'GET','controlador','null','null','2023-04-10 04:35:17','2023-04-10 04:35:17'),(462,32,'GET','controlador','null','null','2023-04-10 04:35:26','2023-04-10 04:35:26'),(463,32,'GET','controlador','null','null','2023-04-10 04:35:38','2023-04-10 04:35:38'),(464,32,'GET','controlador','null','null','2023-04-10 04:35:57','2023-04-10 04:35:57'),(465,32,'GET','controlador','null','null','2023-04-10 04:36:07','2023-04-10 04:36:07'),(466,32,'GET','controlador','null','null','2023-04-10 04:36:09','2023-04-10 04:36:09'),(467,32,'GET','controlador','null','null','2023-04-10 04:36:16','2023-04-10 04:36:16'),(468,32,'GET','controlador','null','null','2023-04-10 04:36:33','2023-04-10 04:36:33'),(469,32,'GET','controlador','null','null','2023-04-10 04:36:35','2023-04-10 04:36:35'),(470,32,'GET','controlador','null','null','2023-04-10 04:37:08','2023-04-10 04:37:08'),(471,32,'GET','controlador','null','null','2023-04-10 04:37:09','2023-04-10 04:37:09'),(472,32,'GET','controlador','null','null','2023-04-10 04:37:29','2023-04-10 04:37:29'),(473,32,'GET','controlador','null','null','2023-04-10 04:37:43','2023-04-10 04:37:43'),(474,32,'GET','controlador','null','null','2023-04-10 04:38:16','2023-04-10 04:38:16'),(475,32,'GET','controlador','null','null','2023-04-10 04:38:31','2023-04-10 04:38:31'),(476,32,'GET','controlador','null','null','2023-04-10 05:24:17','2023-04-10 05:24:17'),(477,32,'GET','controlador','null','null','2023-04-10 05:28:04','2023-04-10 05:28:04'),(478,32,'GET','controlador','null','null','2023-04-10 05:28:11','2023-04-10 05:28:11'),(479,32,'GET','controlador','null','null','2023-04-10 05:28:15','2023-04-10 05:28:15'),(480,32,'GET','controlador','null','null','2023-04-10 05:28:20','2023-04-10 05:28:20'),(481,32,'GET','controlador','null','null','2023-04-10 05:36:51','2023-04-10 05:36:51'),(482,32,'GET','controlador','null','null','2023-04-10 05:37:09','2023-04-10 05:37:09'),(483,32,'GET','controlador','null','null','2023-04-10 05:38:49','2023-04-10 05:38:49'),(484,32,'GET','controlador','null','null','2023-04-10 05:38:50','2023-04-10 05:38:50'),(485,32,'GET','controlador','null','null','2023-04-10 05:45:06','2023-04-10 05:45:06'),(486,32,'GET','controlador','null','null','2023-04-10 06:07:31','2023-04-10 06:07:31'),(487,32,'GET','controlador','null','null','2023-04-10 06:07:32','2023-04-10 06:07:32'),(488,32,'GET','controlador','null','null','2023-04-10 06:07:37','2023-04-10 06:07:37'),(489,32,'GET','controlador','null','null','2023-04-10 06:07:43','2023-04-10 06:07:43'),(490,32,'GET','controlador','null','null','2023-04-10 06:07:56','2023-04-10 06:07:56'),(491,32,'GET','controlador','null','null','2023-04-10 06:07:58','2023-04-10 06:07:58'),(492,32,'GET','controlador','null','null','2023-04-10 06:09:38','2023-04-10 06:09:38'),(493,32,'GET','controlador','null','null','2023-04-10 06:09:55','2023-04-10 06:09:55'),(494,32,'GET','controlador','null','null','2023-04-10 06:10:28','2023-04-10 06:10:28'),(495,32,'GET','controlador','null','null','2023-04-10 06:10:31','2023-04-10 06:10:31'),(496,32,'GET','controlador','null','null','2023-04-10 06:14:41','2023-04-10 06:14:41'),(497,32,'GET','controlador','null','null','2023-04-10 06:31:01','2023-04-10 06:31:01'),(498,32,'GET','controlador','null','null','2023-04-10 06:32:08','2023-04-10 06:32:08'),(499,32,'GET','controlador','null','null','2023-04-10 06:41:39','2023-04-10 06:41:39'),(500,32,'GET','controlador','null','null','2023-04-10 06:41:49','2023-04-10 06:41:49'),(501,32,'GET','controlador','null','null','2023-04-10 06:42:08','2023-04-10 06:42:08'),(502,32,'GET','controlador','null','null','2023-04-10 06:50:09','2023-04-10 06:50:09'),(503,32,'GET','controlador','null','null','2023-04-10 06:50:32','2023-04-10 06:50:32'),(504,32,'GET','controlador','null','null','2023-04-10 06:50:47','2023-04-10 06:50:47'),(505,32,'GET','controlador','null','null','2023-04-10 06:55:29','2023-04-10 06:55:29'),(506,32,'GET','controlador','null','null','2023-04-10 07:00:09','2023-04-10 07:00:09'),(507,32,'GET','controlador','null','null','2023-04-10 07:00:26','2023-04-10 07:00:26'),(508,32,'GET','controlador','null','null','2023-04-10 07:02:50','2023-04-10 07:02:50'),(509,32,'GET','controlador','null','null','2023-04-10 07:09:02','2023-04-10 07:09:02'),(510,32,'GET','controlador','null','null','2023-04-10 07:09:12','2023-04-10 07:09:12'),(511,32,'GET','controlador','null','null','2023-04-10 07:11:02','2023-04-10 07:11:02'),(512,32,'GET','controlador','null','null','2023-04-10 07:11:13','2023-04-10 07:11:13'),(513,32,'GET','controlador','null','null','2023-04-10 07:12:43','2023-04-10 07:12:43'),(514,32,'GET','controlador','null','null','2023-04-10 07:12:53','2023-04-10 07:12:53'),(515,32,'GET','controlador','null','null','2023-04-10 07:14:36','2023-04-10 07:14:36'),(516,32,'GET','controlador','null','null','2023-04-10 07:15:54','2023-04-10 07:15:54'),(517,32,'GET','controlador','null','null','2023-04-10 07:16:41','2023-04-10 07:16:41'),(518,32,'GET','controlador','null','null','2023-04-10 07:16:52','2023-04-10 07:16:52'),(519,32,'GET','controlador','null','null','2023-04-10 07:17:16','2023-04-10 07:17:16'),(520,32,'GET','controlador','null','null','2023-04-10 07:17:23','2023-04-10 07:17:23'),(521,32,'GET','controlador','null','null','2023-04-10 07:17:28','2023-04-10 07:17:28'),(522,32,'GET','controlador','null','null','2023-04-10 07:17:39','2023-04-10 07:17:39'),(523,32,'GET','controlador','null','null','2023-04-10 07:18:00','2023-04-10 07:18:00'),(524,32,'GET','controlador','null','null','2023-04-10 07:18:13','2023-04-10 07:18:13'),(525,32,'GET','controlador','null','null','2023-04-10 07:18:30','2023-04-10 07:18:30'),(526,32,'GET','controlador','null','null','2023-04-10 07:18:52','2023-04-10 07:18:52'),(527,32,'GET','controlador','null','null','2023-04-10 07:19:07','2023-04-10 07:19:07'),(528,32,'GET','controlador','null','null','2023-04-10 07:19:21','2023-04-10 07:19:21'),(529,32,'GET','controlador','null','null','2023-04-10 07:21:09','2023-04-10 07:21:09'),(530,32,'GET','controlador','null','null','2023-04-10 07:21:16','2023-04-10 07:21:16'),(531,32,'GET','controlador','null','null','2023-04-10 07:21:30','2023-04-10 07:21:30'),(532,32,'GET','controlador','null','null','2023-04-10 07:21:35','2023-04-10 07:21:35'),(533,32,'GET','controlador','null','null','2023-04-10 07:22:36','2023-04-10 07:22:36'),(534,32,'GET','controlador','null','null','2023-04-10 07:22:40','2023-04-10 07:22:40'),(535,32,'Cierre de sesión','controlador',NULL,NULL,'2023-04-10 07:22:43','2023-04-10 07:22:43');
/*!40000 ALTER TABLE `auditorias` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `certificados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificados` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `participante_id` bigint unsigned NOT NULL,
  `evento_id` bigint unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `certificados_participante_id_foreign` (`participante_id`),
  KEY `certificados_evento_id_foreign` (`evento_id`),
  CONSTRAINT `certificados_evento_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  CONSTRAINT `certificados_participante_id_foreign` FOREIGN KEY (`participante_id`) REFERENCES `participantes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `certificados` WRITE;
/*!40000 ALTER TABLE `certificados` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificados` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `participante_id` bigint unsigned NOT NULL,
  `evento_id` bigint unsigned NOT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comentarios_participante_id_foreign` (`participante_id`),
  KEY `comentarios_evento_id_foreign` (`evento_id`),
  CONSTRAINT `comentarios_evento_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  CONSTRAINT `comentarios_participante_id_foreign` FOREIGN KEY (`participante_id`) REFERENCES `participantes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,1,'lorem','2023-04-09 23:13:08','2023-04-09 23:13:09'),(2,2,1,'lorem','2023-04-09 23:25:27','2023-04-09 23:25:27');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `contenidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tema_id` bigint unsigned NOT NULL,
  `expositor_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contenidos_tema_id_foreign` (`tema_id`),
  KEY `contenidos_expositor_id_foreign` (`expositor_id`),
  CONSTRAINT `contenidos_expositor_id_foreign` FOREIGN KEY (`expositor_id`) REFERENCES `expositores` (`id`),
  CONSTRAINT `contenidos_tema_id_foreign` FOREIGN KEY (`tema_id`) REFERENCES `temas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `contenidos` WRITE;
/*!40000 ALTER TABLE `contenidos` DISABLE KEYS */;
INSERT INTO `contenidos` VALUES (1,'los inicios','archivo1','contiene temas y etc..',1,1,'2023-04-09 20:06:47','2023-04-09 20:06:47');
/*!40000 ALTER TABLE `contenidos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `controladores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controladores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `turno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio_contrato` date NOT NULL,
  `fecha_termino_contrato` date NOT NULL,
  `usuario_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `controladores_usuario_id_foreign` (`usuario_id`),
  CONSTRAINT `controladores_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `controladores` WRITE;
/*!40000 ALTER TABLE `controladores` DISABLE KEYS */;
INSERT INTO `controladores` VALUES (1,'mañana','2022-01-01','2022-12-01',32,'2023-04-09 19:58:04','2023-04-09 19:58:04'),(2,'mañana','2022-01-01','2022-12-01',33,'2023-04-09 19:58:04','2023-04-09 19:58:04'),(3,'mañana','2022-01-01','2022-12-01',34,'2023-04-09 19:58:04','2023-04-09 19:58:04');
/*!40000 ALTER TABLE `controladores` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `evento_participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento_participantes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `evento_id` bigint unsigned NOT NULL,
  `participante_id` bigint unsigned NOT NULL,
  `inscrito` tinyint(1) NOT NULL DEFAULT '0',
  `reservado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evento_participantes_evento_id_foreign` (`evento_id`),
  KEY `evento_participantes_participante_id_foreign` (`participante_id`),
  CONSTRAINT `evento_participantes_evento_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  CONSTRAINT `evento_participantes_participante_id_foreign` FOREIGN KEY (`participante_id`) REFERENCES `participantes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `evento_participantes` WRITE;
/*!40000 ALTER TABLE `evento_participantes` DISABLE KEYS */;
INSERT INTO `evento_participantes` VALUES (1,1,1,0,1,NULL,NULL),(2,1,2,1,0,NULL,NULL),(3,1,3,1,0,NULL,NULL);
/*!40000 ALTER TABLE `evento_participantes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controlador_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eventos_controlador_id_foreign` (`controlador_id`),
  CONSTRAINT `eventos_controlador_id_foreign` FOREIGN KEY (`controlador_id`) REFERENCES `controladores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'lectura Mediaval','lorem Ipsun','taller',1,'2023-04-09 20:05:02','2023-04-09 20:05:02'),(2,'lectura Draconiana','lorem Ipsun','mesa redonda',1,'2023-04-09 20:05:02','2023-04-09 20:05:02'),(3,'El señor de los anillos','lorem Ipsun','debate',3,'2023-04-09 20:05:02','2023-04-09 20:05:02'),(4,'Idiomas ','Lorem','taller',1,'2023-04-09 17:24:30','2023-04-09 17:24:31');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `expositores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expositores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biografia` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expositores_usuario_id_foreign` (`usuario_id`),
  CONSTRAINT `expositores_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `expositores` WRITE;
/*!40000 ALTER TABLE `expositores` DISABLE KEYS */;
INSERT INTO `expositores` VALUES (1,'ABC Corp','Patitos',12,'2023-04-09 19:58:03','2023-04-09 19:58:03');
/*!40000 ALTER TABLE `expositores` ENABLE KEYS */;
UNLOCK TABLES;
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

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `files_pagina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_pagina` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `files_pagina` WRITE;
/*!40000 ALTER TABLE `files_pagina` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_pagina` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `infraestructuras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infraestructuras` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ambiente_id` bigint unsigned DEFAULT NULL,
  `tema_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infraestructuras_ambiente_id_foreign` (`ambiente_id`),
  KEY `infraestructuras_tema_id_foreign` (`tema_id`),
  CONSTRAINT `infraestructuras_ambiente_id_foreign` FOREIGN KEY (`ambiente_id`) REFERENCES `ambientes` (`id`),
  CONSTRAINT `infraestructuras_tema_id_foreign` FOREIGN KEY (`tema_id`) REFERENCES `temas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `infraestructuras` WRITE;
/*!40000 ALTER TABLE `infraestructuras` DISABLE KEYS */;
INSERT INTO `infraestructuras` VALUES (1,1,1,'2023-04-09 20:07:06','2023-04-09 20:07:06'),(2,1,2,'2023-04-09 20:07:06','2023-04-09 20:07:06'),(3,1,3,'2023-04-09 20:07:06','2023-04-09 20:07:06'),(4,2,4,'2023-04-09 20:07:06','2023-04-09 20:07:06'),(5,2,5,'2023-04-09 20:07:06','2023-04-09 20:07:06'),(6,2,6,'2023-04-09 20:07:06','2023-04-09 20:07:06');
/*!40000 ALTER TABLE `infraestructuras` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2015_04_02_011315_create_participantes_table',1),(5,'2015_04_02_011441_create_expositores_table',1),(6,'2015_04_02_011525_create_controladores_table',1),(7,'2019_08_19_000000_create_failed_jobs_table',1),(8,'2019_12_14_000001_create_personal_access_tokens_table',1),(9,'2020_04_01_223805_create_eventos_table',1),(10,'2021_04_01_233452_create_temas_table',1),(11,'2023_03_06_023933_create_files_pagina',1),(12,'2023_04_01_04450_create_ambientes_table',1),(13,'2023_04_01_212049_create_asistencias_table',1),(14,'2023_04_02_000635_create_contenidos_table',1),(15,'2023_04_02_001904_create_certificados_table',1),(16,'2023_04_02_002320_create_comentarios_table',1),(17,'2023_04_02_004451_create_infraestructuras_table',1),(18,'2023_04_02_004452_create_reservas_table',1),(19,'2023_04_02_141823_create_evento_participantes_table',1),(20,'2023_04_06_211939_create_auditorias_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nivel_estudios` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profesion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participantes_usuario_id_foreign` (`usuario_id`),
  CONSTRAINT `participantes_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (1,'intermedio','estudiante',22,'2023-04-09 19:58:03','2023-04-09 19:58:03'),(2,'intermedio','estudiante',23,'2023-04-09 19:58:03','2023-04-09 19:58:03'),(3,'intermedio','estudiante',24,'2023-04-09 19:58:04','2023-04-09 19:58:04');
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;
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

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `hora_inicio` datetime NOT NULL,
  `hora_fin` datetime NOT NULL,
  `infraestructura_id` bigint unsigned NOT NULL,
  `tema_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reservas_infraestructura_id_foreign` (`infraestructura_id`),
  KEY `reservas_tema_id_foreign` (`tema_id`),
  CONSTRAINT `reservas_infraestructura_id_foreign` FOREIGN KEY (`infraestructura_id`) REFERENCES `infraestructuras` (`id`),
  CONSTRAINT `reservas_tema_id_foreign` FOREIGN KEY (`tema_id`) REFERENCES `temas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'2022-06-15 00:00:00','2023-04-09 10:00:00','2023-04-09 12:00:00',1,1,'2023-04-09 20:07:13','2023-04-09 20:07:13'),(2,'2022-06-15 00:00:00','2023-04-09 10:00:00','2023-04-09 12:00:00',1,1,'2023-04-09 20:26:31','2023-04-09 20:26:31');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_inicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora_fin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evento_id` bigint unsigned NOT NULL,
  `expositor_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `temas_evento_id_foreign` (`evento_id`),
  KEY `temas_expositor_id_foreign` (`expositor_id`),
  CONSTRAINT `temas_evento_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`),
  CONSTRAINT `temas_expositor_id_foreign` FOREIGN KEY (`expositor_id`) REFERENCES `expositores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `temas` WRITE;
/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
INSERT INTO `temas` VALUES (1,'Introduccion','Lorem','10:00','12:00',1,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-09'),(2,'Desarrollo','Lorem','10:00','12:00',1,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-11'),(3,'Finalizacion','Lorem','10:00','12:00',1,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-12'),(4,'Introduccion','Lorem','10:00','12:00',2,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-13'),(5,'Desarrollo','Lorem','10:00','12:00',2,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-15'),(6,'Finalizacion','Lorem','10:00','12:00',2,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-16'),(7,'Presentacion','Lorem','10:00','12:00',3,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-18'),(8,'Desarrollo','Lorem','10:00','12:00',3,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-20'),(9,'Conclusiones','Lorem','10:00','12:00',3,1,'2023-04-09 20:06:42','2023-04-09 20:06:42','2023-02-22');
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `apellido_Mat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_Pat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anio_Nac` int NOT NULL,
  `genero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'juanperez','juanperez@abccorp.com','2023-04-09 22:04:53','Perez','Perez',2000,'unicornio','$2y$10$npIBtqthJHOe1HQa1dH90O0wzGePcEPHeFOnZuCu4CWcf2mU0GquG',3,NULL,'2023-04-09 19:58:03','2023-04-09 19:58:03'),(22,'Maria','mariagomez@gmail.com',NULL,'Perez','Gomez',2000,'unicornio','$2y$10$tn1Na5e4CdxcURowZAxkU.GDJWvyZxn7erz.9dQUJb/gmhfNEqNoy',1,NULL,'2023-04-09 19:58:03','2023-04-09 19:58:03'),(23,'Mario','mariogomez@gmail.com',NULL,'Per','Gomez',2000,'unicornio','$2y$10$qS62lQs3a02MKR3peRauC.eKqAauyqrraPcbnq2xJ0RDsii5haCjK',1,NULL,'2023-04-09 19:58:03','2023-04-09 19:58:03'),(24,'Jaime','Jaimegomez@gmail.com',NULL,'Text','Perex',2000,'unicornio','$2y$10$A8OS/J34gN7TWF/Gkp98AOdiEynvHGZnzEqSSrLMdtFF8.vTWP/Te',1,NULL,'2023-04-09 19:58:03','2023-04-09 19:58:03'),(32,'pedro','pedrorodriguez@hotmail.com','2023-04-09 16:15:14','Perez','Rodriguez',2000,'unicornio','$2y$10$0JP1gdlQouLXImOg92Zy0.klxGWYrZx9ruqjZftQQoiVCpmCqAEt2',2,NULL,'2023-04-09 19:58:04','2023-04-09 19:58:04'),(33,'Kira','KiraYam@hotmail.com',NULL,'Perez','Yamashi',2000,'unicornio','$2y$10$Hulmf5oK/2xbq2SRsrEXLuEkQPLbp/eFh3ReBeuv3UoC0ncJLjqPS',2,NULL,'2023-04-09 19:58:04','2023-04-09 19:58:04'),(34,'Torino','TorinoMarquez@hotmail.com',NULL,'Carabaz','Marquez',2000,'unicornio','$2y$10$HkK3fy3vwVnB5vffZPZ23.nD62lVHgHbSVQ5lHP.ScoaP38ocNymm',2,NULL,'2023-04-09 19:58:04','2023-04-09 19:58:04'),(35,'Victor Joel Suxo Daza','vjoelsuxod@gmail.com','2023-04-10 04:10:02','Daza','Suxo',2000,'unicornio','$2y$10$pWilGui7xefk2mqegXztq.1NgZz/3zGjIdRsOM5.oNiWkFD3TOv5K',0,NULL,'2023-04-10 04:09:20','2023-04-10 04:10:02');
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

