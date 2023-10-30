select year(curdate());

select *, year(curdate())- birth_year 
as Age from actors;

select *,(revenue-budget) as Profit 
from financials;

select *,if(currency='USD',revenue*77,revenue)
as rev_INR from financials;

select distinct unit from financials;

select *,
case
	when unit= 'billions' then revenue*1000
    when unit = 'inr' then revenue/1000
    -- when unit ='millions' then revenue
    else  revenue
end as revnue_mln
from financials;