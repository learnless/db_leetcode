-- 排除最近一月，统计员工薪水，比如
-- id month salary
-- 1  4     60
-- 1  3     40
-- 1  2     30
-- 1  1     20
-- 查询的结果应为(排除最新一个月)
-- 1 3 (20+30+40)
-- 1 2 (20+30)
-- 1 1 20
-- 此题比较难，关键自连接以及where过滤只返回最高月份与其低月份连接思路
-- 思路有了，其实此题很简单

select b.id, b.month,
(select sum(d.salary) from employees579 d where d.id = b.id and d.month <= b.month) as 'salary'
from employees579 a, employees579 b
where a.id = b.id 
and a.month = (select max(c.month) from employees579 c where c.id = a.id) 
and a.month > b.month
order by a.id asc, b.month desc


select * from employees579
order by id asc,`month` desc


Create table employees579(Id int,`Month` int,salary int);

insert into employees579 values(1,1,20);
insert into employees579 values(2,1,20);
insert into employees579 values(1,2,30);
insert into employees579 values(2,2,30);
insert into employees579 values(3,2,40);
insert into employees579 values(1,3,40);
insert into employees579 values(3,3,60);
insert into employees579 values(1,4,60);
insert into employees579 values(3,4,70);