select t.customer_number from (
	select a.order_number,a.customer_number,count(a.customer_number) as 'count'
	from orders586 a,orders586 b
	where 
	a.order_number <= b.order_number and a.customer_number = b.customer_number
	group by a.order_number
)t where t.count = (
	select count(*)
	from orders586 a,orders586 b
	where 
	a.order_number <= b.order_number and a.customer_number = b.customer_number
	group by a.order_number
	order by count(a.customer_number) desc
	limit 1
)

-- 令种简单实现
select customer_number
from orders586
group by customer_number
having count(*) = 
(
	select max(cnt) from (
		select count(*) cnt
		from orders586
		group by customer_number
	)t
)

select * from orders586

create table orders586 (
order_number int,
customer_number int,
order_date date,
requeired_date date,
shipped_date date,
status char(15),
comment char(200),
primary key(order_number)
);

insert into orders586 values 
(1,1,'2017-04-09','2017-04-13','2017-04-12','Closed',null),
(2,2,'2017-04-15','2017-04-20','2017-04-18','Closed',null),
(3,3,'2017-04-16','2017-04-25','2017-04-20','Closed',null),
(4,3,'2017-04-18','2017-04-28','2017-04-25','Closed',null);