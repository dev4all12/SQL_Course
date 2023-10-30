select * from financials;

SELECT 
(revenue-budget) as profit,
round((revenue-budget)*100/budget,2) as profit_per FROM financials;

 
   select 
        *, 
    (revenue-budget) as profit, 
    (revenue-budget)*100/budget as profit_pct 
   from financials;