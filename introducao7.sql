SELECT * FROM tabela_de_produtos;
SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA;
#Ordena do menor para o maior
SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC;
#Ordena do maior para menor
SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO;

SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC;
