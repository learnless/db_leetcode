-- 买主buyer_id 只购买'S8'而没有购买'iPhone'
select * from sales1082 s
left join product1082 p
on s.product_id = p.product_id
group by s.buyer_id
having 
	sum(case when p.product_name = 'S8' then 1 else 0 end) >= 1
	and 
	sum(case when p.product_name = 'iPhone' then 1 else 0 end) = 0