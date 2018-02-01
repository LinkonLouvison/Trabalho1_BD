
-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 4





SELECT  municipio,estado,pctMulher
from Cidades
	where pctMulher > pctHomem
	group by municipio, estado
	order by estado,pctHomem;
	



SELECT   estado, count(pctMulher) as cidades_com_igual_pctMulher, pctMulher
from Cidades
	group by pctMulher, estado
	having count(pctMulher)>1
	order by estado,pctMulher;
	
