# projetoindividualsql
Projeto individual do módulo 3 do curso Códigos do Amanhã 

Este é um pequeno projeto de banco de dados para um sistema de gerenciamento de livros e autores. 
O esquema de banco de dados inclui quatro tabelas principais: autores, livros, usuarios e usuarios_livros.
A tabela autores armazena informações sobre os autores dos livros, incluindo seu nome, país de origem e biografia.
A tabela livros contém detalhes sobre os livros, como título, autor, gênero, ano de publicação e sinopse. 
Esta tabela também possui uma chave estrangeira que se relaciona com a tabela de autores.
A tabela usuarios registra informações dos usuários do sistema, como nome de usuário, senha, email e data de registro.
A tabela usuarios_livros é utilizada para rastrear a relação entre usuários e os livros que eles marcaram. 
Ela armazena o ID do usuário, o ID do livro e a data de marcação.

Pensado em quem possui pouco ou nenhum conhecimento sobre  MySQL Workbench e deseja explorar o banco de dados "biblioteca3", você pode seguir esses passos aqui:

 1. Primeiro, certifique-se de ter o MySQL Server e o MySQL Workbench instalados. 
 2. Após abrir o Workbench, vá para "Database" e escolha "Connect to Database". Preencha as informações de conexão, incluindo o nome de usuário, senha e selecione "biblioteca3" como o banco de dados padrão. 
 3. Agora, abra o script "biblioteca3.sql" contendo o código fornecido, selecione o trecho desejado e clique em "Execute" para criar as tabelas e inserir dados. 
 4. Explore o banco de dados selecionando-o no painel esquerdo e clicando com o botão direito nas tabelas para ver os registros.
 
A interface do MySQL Workbench pode parecer complexa no início, mas te garanto que ela é mais simples do que parece.
Ainda é a melhor opção para gerenciar bancos de dados através de comandos simples e  uma visualização gráfica. 
Espero que com esses passos você consiga acessar o banco que eu criei. 

Aqui se encontra um link para o Dbdiagram que foi a primeira base para o banco de dados: https://dbdiagram.io/d/64c848f902bd1c4a5e03176c

