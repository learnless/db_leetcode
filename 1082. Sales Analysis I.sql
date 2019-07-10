-- 查询所有最高售出价格的销售员
select * from Sales1082 s
group by s.seller_id
having sum(s.price) = 
(
	select sum(price) from Sales1082 group by seller_id order by sum(price) desc limit 1
)

create table Product1082 (
	product_id int,
	product_name varchar(10),
	unit_price int,
	primary key (product_id)
);

create table Sales1082 (
	seller_id int,
	product_id int,
	buyer_id int,
	sale_date date,
	quantity int,
	price int
);

insert into Product1082 values 
(1, 'S8', 1000),
(2, 'G4', 800),
(3, 'iPhone', 1400);

insert into Sales1082 values 
(1,1,1,'2019-01-21',2,2000),
(1,2,2,'2019-02-17',1,800),
(2,2,3,'2019-06-02',1,800),
(3,3,3,'2019-05-13',2,2800);

