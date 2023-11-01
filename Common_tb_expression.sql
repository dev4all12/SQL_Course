-- Active: 1698732586590@@127.0.0.1@3306@moviesdb

#get all the actor whose age between 70 and 85

with actor_age as(
        SELECT
            name as actor_name,
            YEAR(CURDATE()) - birth_year as age
        FROM actors
    )
SELECT actor_name, age
from actor_age
where age > 70 and age < 85;

with
    actor_age(hero_name, how_old) as (
        SELECT
            name as x,
            YEAR(CURDATE()) - birth_year as y
        FROM actors
    )
SELECT hero_name, how_old
from actor_age
where how_old > 70 and how_old < 85;

#movie that produce 500% of profit

SELECT
    *,
    round( (revenue - budget) * 100 / budget,
        0
    ) as profit
from financials

select *
from movies
WHERE imdb_rating < (
        SELECT
            avg(imdb_rating)
        from movies
    )

#seelct movie avg rating with more than 500% profit

SELECT
    x.movie_id,
    x.profit,
    y.title,
    y.imdb_rating
from (
        SELECT
            *,
            round( (revenue - budget) * 100 / budget,
                0
            ) as profit
        from financials
    ) x
    join (
        select *
        from movies
        WHERE imdb_rating < (
                SELECT
                    avg(imdb_rating)
                from
                    movies
            )
    ) y on x.movie_id = y.movie_id
WHERE (revenue - budget) * 100 / budget >= 500;

#CTE

with x as (
        SELECT
            *,
            round( (revenue - budget) * 100 / budget,
                0
            ) as profit
        from
            financials
    ),
    y as (
        select *
        from movies
        WHERE imdb_rating < (
                SELECT
                    avg(imdb_rating)
                from movies
            )
    )
SELECT
    x.movie_id,
    x.profit,
    y.title,
    y.imdb_rating
from x
    JOIN y ON x.movie_id = y.movie_id
WHERE profit >= 500;