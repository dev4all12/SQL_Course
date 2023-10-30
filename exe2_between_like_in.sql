select * from movies order by release_year desc;
select * from movies where release_year= 2022;
select * from movies where release_year>2020;
select * from movies where release_year>2020 
and imdb_rating>8;
select * from movies where studio 
in ('Marvel Studios','Hombale Films');

select * from movies where title like '%THOR%' 
order by release_year;
select * from movies where studio != '%Marvel studio%';