#Mais queries simples

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE IDADE = 22;

SELECT* FROM tbcliente WHERE IDADE > 22;

SELECT* FROM tbcliente WHERE IDADE < 22;

SELECT* FROM tbcliente WHERE IDADE <> 22;
#Seleciona clientes com idade diferente a 22 anos

SELECT* FROM tbcliente WHERE nome > 'Juan';
#Os nomes seguem uma ordem alfabetica 
SELECT* FROM tbcliente WHERE PRECO_LISTA BETWEEN 16.007 AND 16.008;
#Essa busca serve para buscar floats entre um determinado valor
  
SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO = '1995-01-13'
#Seleciona pessoas que nasceram nessa data

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13'

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13'

SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;
#Uma função para mostrar as pessoas que nasceram em 1995, poderia usar month para mes

SELECT * FROM tbproduto;

SELECT * FROM tbproduto WHERE PRECO_LISTA >= 16.007 AND PRECO_LISTA <= 16.009

SELECT * FROM tbcliente WHERE IDADE>=18 AND IDADE <= 22 AND SEXO = 'M';
#Pode usar or tambem 



 
