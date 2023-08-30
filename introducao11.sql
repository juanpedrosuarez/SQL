use sucos_vendas

SELECT * FROM tabela_de_vendedores;

SELECT * FROM notas_fiscais;

SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
#Junta todos os dados dos vendedores e das notas fiscais que tenham matricula como ponto em comum
#Nomeia a tabela de vendedores como a e a de notas fiscais como b
#O nome do campo(Matricula) não precisa ser igual, só precisa ter o mesmo dado
ALTER TABLE tabela_de_vendedores 
RENAME COLUMN MATRICULA TO MATRICULAS
#Muda o nome da coluna
SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULAS = B.MATRICULA
#Mostra que o campo não precisa ser igual
ALTER TABLE tabela_de_vendedores
RENAME COLUMN MATRICULAS TO MATRICULA

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;
#Conta quantas notas foram emitidas para cada vendedor

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores A, notas_fiscais B
WHERE A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;


SELECT COUNT(*) FROM tabela_de_clientes;

SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
INNER JOIN notas_fiscais B ON A.CPF = B.CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL;
#Todos da tabela de clientes e somente os correspondentes da tabela de notas fiscais
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM notas_fiscais B
RIGHT JOIN tabela_de_clientes A ON A.CPF = B.CPF
WHERE B.CPF IS NULL;
#Mostra somente quem tem campo nulo

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL AND YEAR(B.DATA_VENDA) = 2015

