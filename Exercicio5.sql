
-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 5

select A.municipio, count(*)
from Aeroportos A 
group by A.municipio
having count(*) > 1;
order by count;




