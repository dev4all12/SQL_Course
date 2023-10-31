select m.title,
case
	when revenue='billions' then (revenue*1000)
    when revenue = 'thoushands' then (revenue /1000)
    else revenue

end as revenue_mil
,f.currency,f.unit from financials f
join movies  m on m.movie_id=f.movie_id
join languages l on l.language_id=m.language_id
where l.name='Hindi'
order by revenue_mil desc;


;