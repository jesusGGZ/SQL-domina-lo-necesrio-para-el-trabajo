SELECT Gnogrupo, Mnombre, Mcred, Mnocarrera
FROM Grupo AS  G RIGHT OUTER JOIN Materia AS M
ON M.Mnomateria = G.Gnomateria WHERE Mnocarrera =32;

SELECT Gnogrupo, Mnombre, Mcred, Mnocarrera, Cnombre
FROM Grupo AS  G RIGHT OUTER JOIN Materia AS M
INNER JOIN carrera ON  Mnocarrera = Cnocarrera
ON M.Mnomateria = G.Gnomateria WHERE Mnocarrera =32;