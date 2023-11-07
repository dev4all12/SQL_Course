-- Active: 1698732586590@@127.0.0.1@3306@moviesdb

select * from movies 

#insert into all columns;

INSERT INTO movies
VALUES (
        145,
        'KGF3',
        'Bollywood',
        2029,
        9.0,
        'Ark the Warka',
        2
    );

INSERT into
    movies(title, industry, release_year)
VALUES ('Tere naam', 'Bollywood', 1983);

#isnert with DEFAULT or NULL VALUES;

INSERT INTO movies
VALUES (
        NULL,
        'KGF5',
        'Bollywood',
        2030,
        NULL,
        DEFAULT,
        2
    )

#insert multiple VALUES

INSERT into
    movies (title, industry, release_year)
VALUES (
        'Inception2',
        'Hollywood',
        2030
    ), (
        'Inception3',
        'Hollywood',
        2030
    ), (
        'Inception4',
        'Hollywood',
        2030
    );