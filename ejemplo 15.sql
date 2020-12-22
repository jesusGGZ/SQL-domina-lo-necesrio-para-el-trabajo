select * FROM materia;
select * FROM grupo;

SELECT Gnogrupo, Mnombre, Mcred
FROM Materia AS M INNER JOIN Grupo AS  G
ON M.Mnomateria = G.Gnomateria;

SELECT Gnogrupo, Mnombre, Mcred
FROM Grupo AS  G LEFT OUTER JOIN Materia AS M
ON M.Mnomateria = G.Gnomateria;

SELECT Gnogrupo, Mnombre, Mcred
FROM Grupo AS  G RIGHT OUTER JOIN Materia AS M
ON M.Mnomateria = G.Gnomateria;