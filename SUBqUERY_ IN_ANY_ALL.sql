select * from actors where actor_id in(select actor_id from movie_actor where 
movie_id in (101,110,121));

select * from actors where actor_id= ANY(select actor_id from movie_actor where 
movie_id in (101,110,121));

select * from movies where imdb_rating>any(
select imdb_rating from movies 
where studio= 'Marvel studios');

select * from movies where imdb_rating in(select imdb_rating from movies
where studio= 'Marvel studios');
