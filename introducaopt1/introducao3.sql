USE sucos
#queries simples
SELECT * FROM tbcliente;

SELECT CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO FROM tbcliente;
#Seleciona campos expecificos;

SELECT CPF, NOME FROM tbcliente LIMIT 5;
#Mostra só os primeiros 5 registros

SELECT CPF AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbclientes;
#Muda o nome dos campos na pesquisa exemplo cpf sera cpf_clientes

SELECT NOME, CPF, SEXP, IDADE, DATA_NASCIMENTO FROM tbcliente;
#Os campos são mostrados na ordem que voce selecionar

SELECT * FROM tbproduto WHERE PRODUTO = '544931';

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro';
#O where usa uma condição para retornar um registro

SELECT * FROM tbproduto WHERE SABOR 'Limão';

UPDATE tbproduto SET SABOR = 'citricos' WHERE SABOR = 'Limão';
#Muda onde tem o sabor igual a limao para o nome citricos
