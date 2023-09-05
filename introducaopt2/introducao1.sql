create database vendas_sucos;
create table produtos(
	codigo varchar(10) primary key,
    descritor varchar(50) null,
    sabor varchar(50) null,
    embalagem varchar(50) null,
    preco_lista float null
)
create table vendedores(
	matricula varchar(5) primary key,
    nome varchar(100) null,
    bairro varchar(50) null,
    comissao float,
    `data_admissao` date null,
    ferias boolean null
)
drop table produtos
CREATE TABLE `vendas_sucos`.`clientes` (
  `CPF` INT NOT NULL,
  `nome` VARCHAR(100) NULL,
  `endereco` VARCHAR(150) NULL,
  `bairro` VARCHAR(50) NULL,
  `cidade` VARCHAR(50) NULL,
  `estado` VARCHAR(50) NULL,
  `cep` VARCHAR(8) NULL,
  `data_nascimento` DATE NULL,
  `idade` INT NULL,
  `sexo` VARCHAR(1) NULL,
  `limite_credito` FLOAT NULL,
  `volume_compra` FLOAT NULL,
  `primeira_compra` BIT(1) NULL,
  PRIMARY KEY (`CPF`));

