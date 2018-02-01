
-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 3



SELECT municipio as Maior_Populacao_Masculina, pctHomem
from Cidades 
	where pctHomem > pctMulher
	order by pctMulher;


SELECT municipio as Maior_Populacao_Feminina, pctMulher
from Cidades
	where pctMulher > pctHomem
	order by pctHomem;

	

SELECT municipio as Maior_Populacao_Urbana, pctUrbana
from Cidades
	where pctUrbana > pctRural
	order by pctRural;



SELECT municipio as Maior_Populacao_Rural, pctRural
from Cidades
	where pctRural > pctUrbana
	order by pctUrbana;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

