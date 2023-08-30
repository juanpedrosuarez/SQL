create database sucos_vendas;
use sucos_vendas;
SELECT * FROM itens_notas_fiscais;

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga'
OR TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga'
AND TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga'
AND NOT(TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE SABOR IN('Laranja','Manga');
#Seleciona todos sabores que são laranjas ou mangas

SELECT * FROM tabela_de_clientes WHERE CIDADE IN('Rio de Janeiro','São Paulo') 
AND IDADE >= 20; 

SELECT * FROM tabela_de_clientes WHERE CIDADE IN('Rio de Janeiro','São Paulo') 
AND IDADE >= 20 AND IDADE <= 21; 

SELECT * FROM tabela_de_clientes WHERE NOME LIKE '%Silva%';
#Seleciona todas as pessoas que tenham silva no nome
#Caso fosse assim:'%Silva' selecionaria todas as pessoas que tenham nome que termina com silva

SELECT * FROM tabela_de_clientes WHERE NOME LIKE '%Silva%'
AND BAIRRO = 'Jardim';
