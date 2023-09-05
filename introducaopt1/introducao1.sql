USE world;

SELECT * FROM CITY; #Seleciona todas as cidades da tabela

SELECT * FROM COUNTRY;#Seleciona todos os paises da tabela


CREATE DATABASE IF NOT EXISTS SUCOS;

DROP DATABASE SUCOS2; #Apagar

#Por cmd: vai na bin do mysql sever
#Digite -h localhost -u root -p

CREATE TABLE tbCliente
(CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(50),
CEP VARCHAR(8),
IDADE SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT(1)
);#Cada linha é a coluna

CREATE TABLE tbProdutos
(CODIGO_PRODUTO INT NULL,
NOME_PRODUTO  VARCHAR(50) NULL,
EMBALAGEM  VARCHAR(50) NULL,
TAMANHO INT NULL,
SABOR VARCHAR(50) NULL,
PRECO_LISTA FLOAT NULL
); #O null serve para falar que aceita valores nulos
DROP TABLE tbProdutos;#Apagar tabela


INSERT INTO tbprodutos(
CODIGO_PRODUTO, NOME_PRODUTO, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)VALUES(
1040107,'Light - 350ml - Melancia','Lata',350,'Melancia', 4.56);

SELECT * FROM tbprodutos where tamanho>300;

USE sucos;

INSERT INTO tbprodutos (
CODIGO_PRODUTO, NOME_PRODUTO, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES
(544931, 'Frescor do Verão - 350 ml - Limão', 'PET', 350,'Limão',3.20);

INSERT INTO tbprodutos (
CODIGO_PRODUTO, NOME_PRODUTO, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES
(1078680, 'Frescor do Verão - 470 ml - Manga', 'Lata', 470,'Manga',5.18);

UPDATE tbprodutos SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE NOME_PRODUTO = 544931;#serve pra mudar valores da tabela

UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = 1078680;

SELECT * FROM tbproduto;

DELETE FROM tbprodutos WHERE NOME_PRODUTO = 1078680;

USE sucos;

ALTER TABLE tbprodutos ADD PRIMARY KEY(NOME_PRODUTO);

clientes_tbclientes_tbtbprodutostbprodutos

