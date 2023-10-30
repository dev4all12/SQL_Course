select * from items
cross join variants;

select *,concat(name,'-',variant_name) as Full_name,
(price+variant_price) as Final_price from items
cross join  variants;