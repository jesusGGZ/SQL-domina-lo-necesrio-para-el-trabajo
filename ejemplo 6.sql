select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab BETWEEN 100 AND 200;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab <= 100 AND Mcostolab >= 200;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcostolab not BETWEEN 100 AND 200;

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mnombre BETWEEN 'B' AND 'D';