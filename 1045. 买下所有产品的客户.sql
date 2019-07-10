-- 客户表Customer1045，用户购买Product1045所有产品
select customer_id from Customer1045
group by customer_id having count(*) = (select count(*) from Product1045)

create table Customer1045(
	customer_id int,
	product_key int
);

create table Product1045(
	product_key int
);

insert into Customer1045 values (1,5),(2,6),(3,5),(3,6),(1,6);
insert into Product1045 values (5),(6);