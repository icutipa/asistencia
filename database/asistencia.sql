-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: asistencia
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `id_asistencia` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `id_estudiante` int NOT NULL,
  PRIMARY KEY (`id_asistencia`),
  KEY `fk_asistencia_estudiante1_idx` (`id_estudiante`),
  CONSTRAINT `fk_asistencia_estudiante1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(128) NOT NULL,
  `apellidos` varchar(128) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `genero` varchar(1) NOT NULL,
  `id_programa` int NOT NULL,
  `id_semestre` int NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `fk_estudiante_programa_idx` (`id_programa`),
  KEY `fk_estudiante_semestre1_idx` (`id_semestre`),
  CONSTRAINT `fk_estudiante_programa` FOREIGN KEY (`id_programa`) REFERENCES `programa` (`id_programa`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_estudiante_semestre1` FOREIGN KEY (`id_semestre`) REFERENCES `semestre` (`id_semestre`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa` (
  `id_programa` int NOT NULL AUTO_INCREMENT,
  `nombre_programa` varchar(128) NOT NULL,
  PRIMARY KEY (`id_programa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestre` (
  `id_semestre` int NOT NULL AUTO_INCREMENT,
  `nombre_semestre` varchar(32) NOT NULL,
  PRIMARY KEY (`id_semestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestre`
--

LOCK TABLES `semestre` WRITE;
/*!40000 ALTER TABLE `semestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `semestre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-05  9:08:55
