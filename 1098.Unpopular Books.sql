 -- 编写一个SQL查询，该查询报告去年销售不到10本的图书
-- (不包括从今天起销售不到1个月的图书)。假设今天是2019-06-23。
select * from books1098 b1
left join orders1098 o1
on b1.book_id = o1.book_id
where b1.available_from <= DATE_SUB('2019-06-23',INTERVAL 1 MONTH)
group by b1.book_id
having sum(case when date_format(o1.dispatch_date, '%Y') = '2018' then o1.quantity else 0 end) < 10


create table Orders1098 (
	order_id int,
	book_id int,
	quantity int,
	dispatch_date date,
	primary key (order_id)
);

create table books1098 (
	book_id int,
	name varchar(10),
	available_from date,
	primary key (book_id)
);

insert into books1098 values 
(1,'A','2010-01-01'),
(2,'B','2012-05-12'),
(3,'C','2019-06-10'),
(4,'D','2019-06-01'),
(5,'E','2008-09-21');

truncate table orders1098;
insert into orders1098 values 
(1,1,2,'2018-07-26'),
(2,1,1,'2018-11-05'),
(3,3,8,'2019-06-11'),
(4,4,6,'2019-06-05'),
(5,4,5,'2019-06-20'),
(6,5,9,'2009-02-02'),
(7,5,8,'2010-04-13'),
(8,1,7,'2018-04-13');