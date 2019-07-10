-- 产品第一年收入情况
select 
s1.product_id, s1.year as 'first_year', s1.quantity, s1.price
from sales1068 s1
group by s1.product_id 
having first_year = (select year from sales1068 where product_id = s1.product_id and year = min(s1.year))

