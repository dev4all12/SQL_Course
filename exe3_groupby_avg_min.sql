select count(title) as Total_movies from movies where release_year
between 2015 and 2022;

select max(release_year),min(release_year) 
from movies;

select release_year,count(release_year) from movies
group by release_year
order by release_year desc;

