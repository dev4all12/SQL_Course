-- Active: 1698732586590@@127.0.0.1@3306@moviesdb

# 1. Select all the movies with minimum and maximum release_year. Note that there

#can be more than one movie in min and a max year hence output rows can be more than 2

SELECT *
from movies
WHERE release_year IN( (
            SELECT MIN(release_year)
            FROM movies
        ), (
            SELECT Max(release_year)
            FROM movies
        )
    )

# Select all the rows from the movies table whose imdb_rating is higher than the average rating

SELECT *
from movies
WHERE imdb_rating > (
        SELECT
            AVG(imdb_rating) as avg_rating
        from movies
    );