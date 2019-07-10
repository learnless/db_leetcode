-- 产品总销量
select s.product_id, sum(s.quantity) as 'total_quantity', p.product_name from sales1068 s
left join product1068 p
on s.product_id = p.product_id
group by s.product_id
