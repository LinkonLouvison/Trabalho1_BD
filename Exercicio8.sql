
-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 8



SELECT  
        A.Pais, 
        count(*) as qtd_pais,
        (select count(*) from Aeroportos x where not exists (select 1 from Estacoes ex where ex.icao = x.sigla)  ) as total_sem_estacoes,
        (select count(*) from Aeroportos) as total
    from Aeroportos A
    WHERE NOT EXISTS (select 1 from Estacoes e where e.icao = a.sigla)
    group by A.Pais
    order by Pais;








