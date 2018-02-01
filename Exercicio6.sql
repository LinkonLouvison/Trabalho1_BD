-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 6

	

SELECT B.municipio as CidadesBrasileiras, C.Latitude, C.Longitude
from BRCitiesCoord B
left join Aeroportos A
on B.municipio = A.municipio
 left join Estacoes C
on A.Sigla = C.ICAO
order by B.municipio;	
	
	
	
	
	
