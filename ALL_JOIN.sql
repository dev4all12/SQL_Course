select * from financials;

select
    movies.movie_id,
    title,
    budget,
    revenue
from movies
    join financials #join is default inner join in mysql
    on movies.movie_id = financials.movie_id;

select
    m.movie_id,
    title,
    budget,
    revenue
from
    movies m # Here 'from movies' will be left table.as
    left join financials f on m.movie_id = f.movie_id;

#RIGHT JOIN

select
    f.movie_id,
    title,
    budget,
    revenue
from
    movies m # Here 'from movies' will be right table.as
    right join financials f on m.movie_id = f.movie_id
UNION
# FULL JOIN
#FULL JOIN
Select
    m.movie_id,
    title,
    budget,
    revenue
from movies m
    left join financials f #on m.movie_id = f.movie_id;#(IF both column are same use USING(column_name))
    using(movie_id);