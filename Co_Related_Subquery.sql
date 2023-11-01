-- Active: 1698732586590@@127.0.0.1@3306@moviesdb

SELECT a.actor_id,a.name from actors 

#select actor id,total movie done by him and id.

SELECT
    a.actor_id,
    a.name,
    count(*) as movie_count
from movie_actor ma
    join actors a ON a.actor_id = ma.actor_id
GROUP BY a.actor_id
ORDER BY movie_count DESC;

#with sub QUERY

EXPLAIN ANALYZE
SELECT actor_id, name, (
        SELECT COUNT(*)
        from movie_actor
        WHERE
            actor_id = actors.actor_id
    ) as movie_count
from actors
ORDER BY movie_count DESC;