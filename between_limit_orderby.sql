select * from movies where imdb_rating>=9;
select * from movies where imdb_rating 
between 6 and 8;

select * from movies where release_year 
in(2022,2019,2017);

select * from movies where imdb_rating is null;
select * from movies where industry='bollywood'
order by imdb_rating desc limit  5 offset 1;


