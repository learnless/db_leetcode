-- 查询卖出产品都在第一季度里
select product_id from sales1082 s
group by product_id
having 
	count(*) = sum(case when sale_date >= '2019-01-01' and sale_date <= '2019-03-31' then 1 else 0 end)