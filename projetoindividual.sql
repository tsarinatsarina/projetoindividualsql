-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca2
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `ID` int NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Pais` varchar(255) DEFAULT NULL,
  `Biografia` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Clarice Lispector','Brasil','Biografia do Autor 1'),(2,'Orhan Pamuk','Turquia','Biografia do Autor 2'),(3,'Nietzsche','Alemanha','Biografia do Autor 3'),(4,'Cecilia Meireles','Brasil','Biografia do Autor 4'),(5,'Jose Saramago','Portugal','Biografia do Autor 5');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `ID` int NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `AutorID` int DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `AnoPublicacao` year DEFAULT NULL,
  `Sinopse` text,
  PRIMARY KEY (`ID`),
  KEY `AutorID` (`AutorID`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`AutorID`) REFERENCES `autores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Lacos de familia',1,'Contos',1960,'Sinopse do Livro 1'),(2,'Assim falou zaratustra',2,'Romance filosofico',1930,'Sinopse do Livro 2'),(3,'Antologia poetica',3,'Poesia',1945,'Sinopse do Livro 3'),(4,'Historia mundial',4,'Historia',2018,'Sinopse do Livro 4'),(5,'Pedro e as batatinhas',5,'Infantil',1989,'Sinopse do Livro 5');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID` int NOT NULL,
  `NomeUsuario` varchar(255) DEFAULT NULL,
  `Senha` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `DataRegistro` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'malena1','senha1','malena1@example.com','2023-05-28'),(2,'malena2','senha2','malena2@example.com','2023-06-28'),(3,'malena3','senha3','malena3@example.com','2023-04-28'),(4,'malena4','senha4','malena4@example.com','2023-03-28'),(5,'usuario5','senha5','usuario5@example.com','2023-02-28');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_livros`
--

DROP TABLE IF EXISTS `usuarios_livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_livros` (
  `UsuarioID` int NOT NULL,
  `LivroID` int NOT NULL,
  `DataMarcacao` date DEFAULT NULL,
  PRIMARY KEY (`UsuarioID`,`LivroID`),
  KEY `LivroID` (`LivroID`),
  CONSTRAINT `usuarios_livros_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`ID`),
  CONSTRAINT `usuarios_livros_ibfk_2` FOREIGN KEY (`LivroID`) REFERENCES `livros` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_livros`
--

LOCK TABLES `usuarios_livros` WRITE;
/*!40000 ALTER TABLE `usuarios_livros` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02  1:22:50
