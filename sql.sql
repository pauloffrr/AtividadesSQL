/* 1) todos os produtos da unidade de medida 'un' */

SELECT * from produto
WHERE UNIDADE = 'un';

/* 2) todos os produtos da classificação 020 que a quantidade seja maior que 20 */

select * from produto
where CODIGO_CLASSIFICACAO = 020 and QUANTIDADE > 20;

/* 3) todas as balas cadstradas levando em consideração sua classificação e que sua quantidade seja maior que 6 */

SELECT * from produto  
WHERE DESCRICAO LIKE 'bala %'  and QUANTIDADE >= 6;


/* 4) Validar se existe algum 'martelo' que não pertença a classificação material de construção */

SELECT * FROM produto
WHERE CODIGO_CLASSIFICACAO <> 001 and DESCRICAO LIKE '%martelo%';

/* 5) Retornar os produtos da classificação EPI que estejam em menos de 
5 caixas; */

SELECT * FROM produto
where CODIGO_CLASSIFICACAO = 002 and QUANTIDADE > 5 and UNIDADE = 'cx';

/* 6) Retornar os produtos da Classificação EPI que NÃO ESTEJA em 
caixas e sua quantidade esteja em 10 e 50; */

select * from produto 
where CODIGO_CLASSIFICACAO  = 002 and UNIDADE <> 'cx' and QUANTIDADE >= 10 and QUANTIDADE <= 50

/* 7) Retornar todos registros da classificação UNIFORMES com o nome
'camiseta e todos os produtos da classificação MATERIAL ESPORTIVO
e com nome 'bola'*/ 

select * from classificacao c ;

select * from produto p where CODIGO_CLASSIFICACAO = 021 and DESCRICAO like '%camiseta%'
or CODIGO_CLASSIFICACAO = 008 and DESCRICAO like '%bola%' ;

select * from produto
where DESCRICAO like '%camiseta%';

/*8) Retornar apenas o numero total de produtos cadastrados com
unidade pacote e que seja da classificação de alimentos*/
 
select * from produto p 
where UNIDADE = 'PCT' and CODIGO_CLASSIFICACAO = 003


/*9) Retornar todos os tipos de ‘UNIDADE’ da classificação Veterinária*/
select distinct  UNIDADE  from produto p 
where  CODIGO_CLASSIFICACAO = 006;

/*10) Quantos produtos estão com a quantidade maior que 6 e menor
que 10 ?*/

select * from produto 
where QUANTIDADE > 6 and QUANTIDADE < 10;

/*11) Quantos produtos tem o nome iniciando com 'oleo' e tem sua
unidade de medida em litros 'L' ? */

select * from produto 
where DESCRICAO like 'oleo%' and UNIDADE ='L'

/* 12) Buscar todos os produtos da classificação 015 e que esteja em
caixas, também ao final adicionar uma coluna com o valor total ex(
quantidade 2 e valor 10, coluna total = 20)?*/

select *, (QUANTIDADE * VALOR) as TOTAL from produto 
where CODIGO_CLASSIFICACAO = 015 and UNIDADE = 'CX' 