SELECT * FROM tabela_de_clientes;

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTAD0;
#Nomeia a soma do limite de credito como limite_total 
#E usa o group by para somar todo limite de credito dos estados

SELECT EMBALAGEM, PRECO_DE_LISTA FROM tabela_de_produtos;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS VALOR_MAXIMO FROM tabela_de_produtos GROUP BY EMBALAGEM
#Seleciona o produto mais caro de cada embalagem

SELECT EMBALAGEM, COUNT(*) AS CONTADOR FROM tabela_de_produtos GROUP BY EMBALAGEM;
#Conta o numero de produtos

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes
WHERE CIDADE = 'Rio de Janeiro' group by BAIRRO;
#Seleciona a soma do limite dos bairros da cidade do rio de janeiro
SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes
WHERE CIDADE = 'Rio de Janeiro' group by BAIRRO;
