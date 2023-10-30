select count(*) as 'Bollywood Movies' from movies where 
industry= 'bollywood';

select max(imdb_rating) from movies where 
industry='bollywood';
select round(avg(imdb_rating),2) as rating from movies where 
studio='Marvel studios';

select industry,count(*) from movies 
group by industry
order by industry desc;

select studio,count(industry) as 
count,round(avg(imdb_rating),2) from movies 
group by studio 
order by imdb_rating desc;