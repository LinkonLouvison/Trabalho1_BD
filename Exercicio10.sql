
-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 10


SELECT A.municipio as Nome_Do_Municipio, descricao as Aeroporto,Altitude
from Aeroportos A
left join Estacoes E
on A.Sigla = E.ICAO
where A.UF = 'SP'
order by   (1-E.Altitude) ;
