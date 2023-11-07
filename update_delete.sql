-- Active: 1698732586590@@127.0.0.1@3306@moviesdb

SELECT * from movies;

UPDATE movies
set
    studio = 'Warner Brother',
    language_id = 5
WHERE movie_id = 150;

select * from movies WHERE title LIKE '%Inception%' 

UPDATE movies
set
    studio = 'Warner Brother',
    language_id = 5
WHERE title LIKE '%Inception%';

select movie_id from movies WHERE title LIKE '%Inception%';

UPDATE movies
set
    studio = 'Warner Brother',
    language_id = 5
WHERE
    movie_id in(112, 149, 150, 151, 152);

#DELETE

select * FROM movies 

DELETE from movies WHERE movie_id=150;

DELETE from movies WHERE movie_id in (154,153,152,151,149);