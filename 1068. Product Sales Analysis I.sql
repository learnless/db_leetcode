select p.product_name, s.year, s.price from sales1068 s
left join product1068 p
on s.product_id = p.product_id

create table Sales1068 (
	sale_id int,
	product_id int,
	year int,
	quantity int,
	price int
);

create table Product1068 (
	product_id int,
	product_name varchar(10)
);

insert into sales1068 values 
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 6000),
(7, 200, 2011, 15, 8000);

insert into product1068 values (100, 'A'),(200, 'B'), (300, 'C');