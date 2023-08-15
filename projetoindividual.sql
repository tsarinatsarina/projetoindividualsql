
DROP TABLE IF EXISTS `autores`;
CREATE TABLE `autores` (
  `ID` int NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Pais` varchar(255) DEFAULT NULL,
  `Biografia` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
;


LOCK TABLES `autores` WRITE;
INSERT INTO `autores` VALUES (1,'Clarice Lispector','Brasil','Biografia do Autor 1'),(2,'Orhan Pamuk','Turquia','Biografia do Autor 2'),
(3,'Nietzsche','Alemanha','Biografia do Autor 3'),(4,'Cecilia Meireles','Brasil','Biografia do Autor 4'),
(5,'Jose Saramago','Portugal','Biografia do Autor 5');
;
UNLOCK TABLES;


DROP TABLE IF EXISTS `livros`;
;;
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
;

LOCK TABLES `livros` WRITE;
;
INSERT INTO `livros` VALUES (1,'Lacos de familia',1,'Contos',1960,'Sinopse do Livro 1'),(2,'Assim falou zaratustra',2,'Romance filosofico',1930,
'Sinopse do Livro 2'),(3,'Antologia poetica',3,'Poesia',1945,'Sinopse do Livro 3'),
(4,'Historia mundial',4,'Historia',2018,'Sinopse do Livro 4'),(5,'Pedro e as batatinhas',5,'Infantil',1989,'Sinopse do Livro 5');
;
UNLOCK TABLES;


DROP TABLE IF EXISTS `usuarios`;
/;
/;
CREATE TABLE `usuarios` (
  `ID` int NOT NULL,
  `NomeUsuario` varchar(255) DEFAULT NULL,
  `Senha` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `DataRegistro` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
;


LOCK TABLES `usuarios` WRITE;
;
INSERT INTO `usuarios` VALUES (1,'malena1','senha1','malena1@example.com','2023-05-28'),(2,'malena2','senha2','malena2@example.com','2023-06-28'),
(3,'malena3','senha3','malena3@example.com','2023-04-28'),(4,'malena4','senha4','malena4@example.com','2023-03-28'),(5,'usuario5','senha5','usuario5@example.com',
'2023-02-28');
;
UNLOCK TABLES;


DROP TABLE IF EXISTS `usuarios_livros`;
;
;
CREATE TABLE `usuarios_livros` (
  `UsuarioID` int NOT NULL,
  `LivroID` int NOT NULL,
  `DataMarcacao` date DEFAULT NULL,
  PRIMARY KEY (`UsuarioID`,`LivroID`),
  KEY `LivroID` (`LivroID`),
  CONSTRAINT `usuarios_livros_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`ID`),
  CONSTRAINT `usuarios_livros_ibfk_2` FOREIGN KEY (`LivroID`) REFERENCES `livros` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
;


LOCK TABLES `usuarios_livros` WRITE;
;
;
UNLOCK TABLES;

