-- 查找销售员销售的公司没有包含'RED'的全部销售员
-- orders607关联表
-- 解法1，连接，自己一贯的思路，有时可以转换思路，比如exists代替
select * from salesperson607 s
left join orders607 o on s.sales_id = o.sales_id
left join company607 c on o.com_id = c.com_id
group by s.sales_id having count(*) = sum(case when c.name is null or c.name <> 'Red' then 1 else 0 end)

-- 解法2，exists
select * from salesperson607 s where not exists (
	select * from orders607 o, company607 c
	where o.sales_id = s.sales_id and o.com_id = c.com_id
	and c.name = 'Red'
)

create table salesperson607 (sales_id int,name varchar(25),salary int,commission_rate int,hire_date date);
insert into salesperson607 values (1,'John',100000,6,'2006-04-01');
insert into salesperson607 values (2,'Amy',120000,5,'2010-05-01');
insert into salesperson607 values (3,'Mark',65000,6,'2008-12-25');
insert into salesperson607 values (4,'Pam',25000,25,'2005-01-01');
insert into salesperson607 values (5,'Alex',50000,10,'2007-02-03');

create table company607(com_id int, name varchar(20),city varchar(20)); 
insert into company607 values (1,'Red','Boston');
insert into company607 values (2,'ORANGE','New York');
insert into company607 values (3,'YELLO','Boston');
insert into company607 values (4,'GREEN','Austin');

create table orders607 (order_id int,`date` date,com_id int,sales_id int,amount int); 
insert into orders607 values (1,'2014-01-01',3,4,100000);
insert into orders607 values (2,'2014-02-01',4,5,5000);
insert into orders607 values (3,'2014-03-01',1,1,50000);
insert into orders607 values (4,'2014-04-01',1,4,25000);
