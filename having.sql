select release_year,count(*) as movies_count from 
movies
group by release_year
#INSTEAD OF WHERE WE CAN USE HAVING CLAUSE.
having movies_count >2
order by release_year desc;


FROM-->WHERE-->GROUP BY--> HAVING--> ORDER BY-->