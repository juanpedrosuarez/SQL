SELECT EMBALAGEM, TAMANHO FROM tabela_de_produtos;

SELECT DISTINCT  EMBALAGEM, TAMANHO FROM tabela_de_produtos;
#Funciona de maneira semelhante ao set em c++

SELECT DISTINCT  EMBALAGEM, TAMANHO FROM tabela_de_produtos
WHERE SABOR = 'Laranja';

SELECT DISTINCT  EMBALAGEM, TAMANHO FROM tabela_de_produtos
WHERE SABOR = 'Laranja' LIMIT 2,3;
#Seleciona 3 embalagens começando do numero dois e retira embalagens repetidas
