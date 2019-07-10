-- 工资表salary615和员工表employee615
-- 查找每个月每个部门工资情况，有[higher/lower/same]

select date_format(s1.pay_date,'%Y-%m') as 'pay_month', e1.department_id,
case
	when avg(amount) > (select avg(amount) from salary615 s2 where pay_date = s1.pay_date) then 'higher'
	when avg(amount) < (select avg(amount) from salary615 s2 where pay_date = s1.pay_date) then 'lower'
else 'same' end as 'comparison'
from salary615 s1, employee615 e1
where s1.employee_id = e1.id
group by s1.pay_date,e1.department_id
order by s1.pay_date desc, s1.id asc



Create table salary615(Id int,employee_id int,amount int,pay_date date);
insert into salary615 values(1,1,9000,'2017-03-31');
insert into salary615 values(2,2,6000,'2017-03-31');
insert into salary615 values(3,3,10000,'2017-03-31');
insert into salary615 values(4,1,7000,'2017-02-28');
insert into salary615 values(5,2,6000,'2017-02-28');
insert into salary615 values(6,3,8000,'2017-02-28');

Create table employee615(Id int,department_id int);
insert into employee615 values(1,1);
insert into employee615 values(2,2);
insert into employee615 values(3,2);