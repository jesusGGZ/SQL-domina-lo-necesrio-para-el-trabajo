select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcred in (10, 8);

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcred not in (10, 8);

select Mnomateria, Mnombre, Mcred, Mnocarrera, Mcostolab
from Materia
where Mcred <> 10 and Mcred <> 8;