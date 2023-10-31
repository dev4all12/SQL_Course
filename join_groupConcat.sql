select m.title,group_concat(a.name separator ' |  ')from movies m
join movie_actor ma on m.movie_id=ma.movie_id
join actors a on a.actor_id=ma.actor_id
group by m.movie_id
;

select a.name,group_concat(m.title) as movies ,
count(m.title) as movie_count
from actors a
join movie_actor ma on a.actor_id=ma.actor_id
join movies m on ma.movie_id=m.movie_id
group by a.actor_id
order by movie_count desc;