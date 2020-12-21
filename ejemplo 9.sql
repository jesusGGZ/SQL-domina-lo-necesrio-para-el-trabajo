select Gnogrupo, Gnomateria, Gnomaestro, Gdias, Gsalon
from Grupo
where Gnomaestro is null;

select *
from Grupo
where Gnomaestro is not null;