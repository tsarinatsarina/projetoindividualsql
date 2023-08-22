-- Criação do banco de dados
CREATE DATABASE biblioteca3;

-- Uso do banco de dados criado
USE biblioteca3;

-- Tabela para armazenar informações sobre autores
CREATE TABLE Autores (
  ID INT PRIMARY KEY, 
  Nome VARCHAR(255), 
  Pais VARCHAR(255), 
  Biografia TEXT 
);

-- Tabela para armazenar informações sobre livros
CREATE TABLE Livros (
  ID INT PRIMARY KEY, 
  Titulo VARCHAR(255), 
  AutorID INT, 
  Genero VARCHAR(255), 
  AnoPublicacao YEAR, 
  Sinopse TEXT 
);

-- Tabela para armazenar informações sobre usuários
CREATE TABLE Usuarios (
  ID INT PRIMARY KEY, 
  NomeUsuario VARCHAR(255), 
  Senha VARCHAR(255), 
  Email VARCHAR(255), 
  DataRegistro DATE 
);

-- Tabela para armazenar informações sobre empréstimos de livros por usuários
CREATE TABLE Usuarios_Livros (
  UsuarioID INT, 
  LivroID INT, 
  DataMarcacao DATE,
  PRIMARY KEY (UsuarioID, LivroID), 
  FOREIGN KEY (UsuarioID) REFERENCES Usuarios (ID),
  FOREIGN KEY (LivroID) REFERENCES Livros (ID)
);

-- Inserção de registros na tabela Livros
INSERT INTO `livros` 
VALUES 
(1,'Lacos de familia',1,'Contos',1960,'Sinopse do Livro 1'),
(2,'Assim falou zaratustra',2,'Romance filosofico',1930, 'Sinopse do Livro 2'),
(3,'Antologia poetica',3,'Poesia',1945,'Sinopse do Livro 3'),
(4,'Historia mundial',4,'Historia',2018,'Sinopse do Livro 4'),
(5,'Pedro e as batatinhas',5,'Infantil',1989,'Sinopse do Livro 5');

-- Inserção de registros na tabela Autores
INSERT INTO `autores`
VALUES 
(1,'Clarice Lispector','Brasil','Biografia do Autor 1'),
(2,'Orhan Pamuk','Turquia','Biografia do Autor 2'),
(3,'Nietzsche','Alemanha','Biografia do Autor 3'),
(4,'Cecilia Meireles','Brasil','Biografia do Autor 4'),
(5,'Jose Saramago','Portugal','Biografia do Autor 5');

-- Inserção de registros na tabela Usuarios
INSERT INTO `usuarios` 
VALUES (1,'malena1','senha1','malena1@example.com','2023-05-28'),
(2,'malena2','senha2','malena2@example.com','2023-06-28'),
(3,'malena3','senha3','malena3@example.com','2023-04-28'),
(4,'malena4','senha4','malena4@example.com','2023-03-28'),
(5,'usuario5','senha5','usuario5@example.com','2023-02-28');


