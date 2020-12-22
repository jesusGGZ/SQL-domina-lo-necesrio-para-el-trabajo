SELECT Mnomateria, Mnombre, Mnocarrera, Cnombre 
FROM Materia INNER JOIN carrera
ON Cnocarrera = Mnocarrera;

SELECT Gnomateria, Gnomaestro, Anombre
FROM Academic INNER JOIN Grupo
ON Anoemplead = Gnomaestro;