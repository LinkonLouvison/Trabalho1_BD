
-- Nome: Linkon Jose Santos Louvison Número USP 7143698
-- Email: linkon.louvison@usp.br
-- Exercicio 1

CREATE TABLE Cidades (
    Codigo      decimal(7)   NOT NULL, -- Código IBGE
    Estado      char(2)      NOT NULL, -- Sigla do estado 
    Municipio   char(70)     NOT NULL,
    Populacao   decimal(10)  NOT NULL, -- População total
    pctUrbana   decimal(7,4) NOT NULL, -- Porcentagem da população urbana
    pctRural    decimal(7,4) NOT NULL, -- Porcentagem da população rural
    pctHomem    decimal(7,4) NOT NULL, -- Porcentagem da população masculina
    PctMulher   decimal(7,4) NOT NULL, -- Porcentagem da população feminina
    pctHM       decimal(7,4) NOT NULL,  -- proporção de homens na população
    
    -- RESTRIÇÕES DE INTEGRIDADE DA TABELA
    CONSTRAINT PK_Cidade PRIMARY KEY (Municipio, Estado),
    
    CONSTRAINT  Unique_Codigo UNIQUE (Codigo)
    
    
    );
    
    
    
CREATE TABLE BRCitiesCoord(
    Municipio   varchar(70) NOT NULL,
    UF          char(4)  NOT NULL,
    Lat         decimal(5,2),
    Long        decimal(5,2),
    
     -- RESTRIÇÕES DE INTEGRIDADE DA TABELA 
    CONSTRAINT PK_Municipio_Uf PRIMARY KEY (Municipio,UF),
    
    CONSTRAINT  Unique_Cidade_Estadobr UNIQUE (Municipio, UF),
    
     CONSTRAINT FK_coordenadas FOREIGN KEY
        (Municipio,UF) REFERENCES Cidades(Municipio,Estado)
        ON DELETE CASCADE
        ON UPDATE CASCADE
    
    
    );



CREATE TABLE Aeroportos (
    Sigla       char(5) NOT NULL,
    Descricao   varchar(100),
    Municipio   varchar(70) NOT NULL,
    UF          char(4),
    Pais        char(25),
    Continente  char(16),
    
     -- RESTRIÇÕES DE INTEGRIDADE DA TABELA
    CONSTRAINT PK_SigladoAeroporto PRIMARY KEY (Sigla)
   
    );
 
    
CREATE TABLE  Estacoes (
    País       char(2) NOT NULL,
    WMO        char(5),
    ICAO       char(4),
    Estacao    varchar(70) NOT NULL,
    Latitude   decimal(7,4),
    Longitude  decimal(7,4), 
    Altitude   decimal(7,2),
    
     -- RESTRIÇÕES DE INTEGRIDADE DA TABELA
    CONSTRAINT PK_Estacao_Pais PRIMARY KEY (País,Estacao)
    
    
    );
   
    
    
