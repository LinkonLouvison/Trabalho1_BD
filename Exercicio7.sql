-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 7



SELECT C.municipio as Estao_Em_Cidades,B.municipio as Estao_Em_Coordenadas 
from Cidades C
full outer join BRCitiesCoord B
on C.municipio = B.municipio
where B.municipio is NULL
	OR C.municipio is NULL; 


	
