USE [Filmes]
GO

--SELECT NOME E ANO FILMES
SELECT Nome, 
	   Ano 
  FROM Filmes

-- SELECT NOME E ANO com ORDER BY
SELECT Nome, 
	   Ano,
	   Duracao
  FROM Filmes
 ORDER BY Ano ASC

 --SELECT FILME DE VOLTA PARA FUTURO
SELECT Nome, 
	   Ano,
	   Duracao
  FROM Filmes
 WHERE Nome = 'De Volta para o Futuro'

 -- SELECT FILMES LANÇADOS EM 1997
SELECT Nome, 
	   Ano,
	   Duracao
  FROM Filmes
 WHERE Ano = 1997

 -- SELECT FILMES LANÇADOS Após o ano 2000
SELECT Nome, 
	   Ano,
	   Duracao
  FROM Filmes
 WHERE Ano > 2000

-- SELECT FILMES DURACAO ENTRE 100 e 150
SELECT Nome, 
	   Ano,
	   Duracao
  FROM Filmes
 WHERE Duracao > 100 AND DURACAO < 150
 ORDER BY Duracao ASC

 -- SELECT Quantia de filme por ano
SELECT Ano,
	   Count(*)
  FROM Filmes
GROUP BY Ano

 -- SELECT Quantia de filme por ano
SELECT Ano,
	   Count(*)
  FROM Filmes
GROUP BY Ano

-- SELECT ATORES MASCULINOS
SELECT * FROM Atores WHERE Genero = 'M'

-- SELECT ATORES FEMININOS
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- SELECT NOME FILME E GENERO
SELECT f.Nome,
	   g.Genero
  FROM FilmesGenero as fg
JOIN Filmes as f 
  on fg.IdFilme = f.Id
JOIN Generos as g 
  on fg.IdGenero = g.Id

-- SELECT NOME FILME E GENERO TIPO MISTERIO
SELECT f.Nome,
	   g.Genero
  FROM FilmesGenero as fg
JOIN Filmes as f 
  on fg.IdFilme = f.Id
JOIN Generos as g 
  on fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

-- SELECT Nome Filme, Atores e Papel
SELECT f.Nome,
	   a.PrimeiroNome,
	   a.UltimoNome,
	   ef.Papel
  FROM ElencoFilme as ef
JOIN Filmes as f 
  on ef.IdFilme = f.Id
JOIN Atores as a
  on ef.IdAtor = a.Id