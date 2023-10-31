# return highest rating
select * from movies
where imdb_rating=(select max(imdb_rating) from movies);

#retun a list of value
select * from movies
where imdb_rating in (
(select min(imdb_rating)from movies),
(select max(imdb_rating) from movies));

#return a table/row
#select all actor age greater than 70 and less than 85;

select * from (
select name, year(curdate())-birth_year
 as age from actors) as actor_age
 where age >70 and age <84;
 