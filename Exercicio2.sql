
-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 2

SELECT  count(*) as QtostemSaoCarlos
from Cidades
	where municipio  like '%São Carlos%';



SELECT count(*) as QtosexatamenteSaoCarlos
from Cidades
	where municipio = 'São Carlos';
	
	
Select municipio, estado
from Cidades
	where municipio like '%São Carlos%';
	
	
