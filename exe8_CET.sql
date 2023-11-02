-- Active: 1698732586590@@127.0.0.1@3306@moviesdb

with cte as(
        select
            title,
            release_year, (revenue - budget) as profit
        from movies m
            join financials f on m.movie_id = f.movie_id
        WHERE
            release_year > 2000
            and industry = 'Hollywood'
    )
SELECT *
FROM cte
WHERE profit > 500;

with cte as (
        select
            title,
            release_year, (revenue - budget) as profit
        from movies m
            join financials f on m.movie_id = f.movie_id
        where
            release_year > 2000
            and industry = "hollywood"
    )
select *
from cte
where profit > 500