--1
SELECT Nome, ano FROM Filmes

--2
Select Nome,ano,Duracao from Filmes 
Order by Ano asc

--3

select Nome,ano,Duracao from Filmes
where Nome ='De volta para o futuro'

--4
Select Nome,ano,Duracao from Filmes 
where ano =1997

--5
Select Nome,ano,Duracao from Filmes 
where ano > 2000

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;


--8

SELECT PrimeiroNome, UltimoNome , Genero
FROM Atores
WHERE Genero = 'M';


--9
SELECT PrimeiroNome, UltimoNome , Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10
SELECT  F.Nome AS NomeFilme,G.Genero
FROM Filmes F
JOIN Generos G ON g.Genero = g.Genero
ORDER BY G.Genero;

--11
SELECT  F.Nome AS NomeFilme,G.Genero
FROM Filmes F
JOIN Generos G ON g.Genero = 'mistério'

--12

  SELECT
  F.Nome AS NomeFilme,
  A.PrimeiroNome,
  A.UltimoNome,
  EF.Papel
FROM
  Filmes F
  
JOIN
  ElencoFilme EF ON F.Id = EF.IdFilme
JOIN
  Atores A ON EF.IdAtor = A.Id;
