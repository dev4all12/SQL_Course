-- Active: 1698732586590@@127.0.0.1@3306@moviesdb

#select Hindi movie with highest profit

SELECT
    m.title,
    l.name, (
        max(revenue - budget) * 100 / budget
    ) as highest_profit
from financials f
    JOIN movies m on m.movie_id = f.movie_id
    join languages l on m.language_id = l.language_id
WHERE l.name = 'Hindi';

#select Actor who done max of movie and no. of movie.

SELECT a.name, count(*) as maxm
FROM movie_actor ma
    join actors a on a.actor_id = ma.actor_id
GROUP BY a.actor_id
ORDER BY maxm desc
LIMIT 1;

#co-related QUERY

select name, (
        select COUNT(*)
        from movie_actor
        WHERE
            actor_id = actors.actor_id
    ) as movie_count
from actors
ORDER BY movie_count desc
LIMIT 1;

#movie with high rating but low profit

#highest no. of movie in LANGUAGE

SELECT
    l.name,
    COUNT(*) as movies_count
from movies m
    join languages l on m.language_id = l.language_id
GROUP BY l.language_id;

#

SELECT
    p.product_id,
    ifnull(
        round(
            sum(p.price * u.units) / sum(u.units)
        ),
        2,
        0
    ) as average_price
from Prices p
    left join UnitsSold u on p.product_id = u.product_id and u.purchase_date between start_date and end_date;

#Select all the movies with minimum and maximum release_year. Note that there

#can be more than one movie in min and a max year hence output rows can be more than 2

select *
from movies
where release_year in( (
            SELECT
                MIN(release_year)
            FROM movies
        ), (
            SELECT
                MAX(release_year)
            FROM movies
        )
    );

#Select all the rows from the movies table whose imdb_rating is higher than the average rating

SELECT *
from movies
WHERE imdb_rating > (
        SELECT
            AVG(imdb_rating)
        from movies
    );

#Select all Hollywood movies released after the year 2000 that made more than 500 million $

# profit or more profit. Note that all Hollywood movies have millions as a unit hence you

#don't need to do the unit conversion. Also, you can write this query without CTE as well #

#but you should try to write this using CTE only

WITH cte as(
        SELECT
            m.title,
            m.release_year, (f.revenue - f.budget) as profit
        from movies m
            JOIN financials f ON f.movie_id = m.movie_id
        WHERE
            m.industry = 'Hollywood'
            and release_year > 2000
    )
SELECT *
from cte
WHERE profit > 500;