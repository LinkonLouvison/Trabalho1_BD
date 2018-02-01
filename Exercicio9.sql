
-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 9



SELECT A.municipio as Nome_Do_Municipio, descricao as Aeroporto,  Longitude, Latitude
from Aeroportos A
left join Estacoes E
on A.Sigla = E.ICAO
where A.UF = 'SP'
order by A.municipio;

	
