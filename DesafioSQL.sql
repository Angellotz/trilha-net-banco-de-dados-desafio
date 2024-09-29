SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos
--1
SELECT nome, ano FROM Filmes
--2
SELECT nome, ano
FROM filmes
ORDER BY ano ASC;
--3
SELECT nome, ano, duracao
FROM filmes WHERE Filmes.Id = 28
--4

SELECT * FROM Filmes WHERE ano =1997
--5
SELECT * 
FROM filmes 
WHERE ano > 2000;
--6
SELECT * 
FROM filmes 
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;
--7

SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;

--8
SELECT PrimeiroNome, UltimoNome, Genero
FROM atores
WHERE genero = 'M'
--9
SELECT PrimeiroNome, UltimoNome, Genero
FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ASC;

--10

SELECT
	Nome, Generos.Genero
FROM
	Filmes
INNER JOIN
	FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
		INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--11
SELECT
	Nome, Generos.Genero
FROM
	Filmes
	INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
			INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério';
--12
SELECT
	Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM
	Filmes
	INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
		INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id