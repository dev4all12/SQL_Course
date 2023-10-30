#1. Show all the movies with their language names
select m.title,l.name from movies m
join languages l
using(language_id);
#2.Show all Telugu movie names (assuming you don't 
#know the language id for Telugu)
select m.title,l.name from movies m
LEFT join languages l
on m.language_id =l.language_id
where l.name= 'Telugu'; 
# 3. Show the language and number of movies released in that language
select l.name,count(m.movie_id) as Total_Movies from languages l
left join movies m 
using(language_id)
group by language_id
order by Total_Movies desc;


SELECT 
            l.name, 
            COUNT(m.movie_id) as no_movies
	FROM languages l
	LEFT JOIN movies m USING (language_id)        
	GROUP BY language_id
	ORDER BY no_movies DESC;