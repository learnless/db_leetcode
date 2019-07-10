-- 同个项目，工程师平均工作经验
-- 注意format和round区别，round如果为整数，小数点没有输出
select p.project_id, 
format(avg(e.experience_years), 2) as 'average_years' 
from Project1075 p, employee1075 e
where p.employee_id = e.employee_id
group by p.project_id


create table Project1075 (
	project_id int,
	employee_id int
);
create table employee1075 (
	employee_id int,
	name varchar(10),
	experience_years int
);
insert into Project1075 values (1,1),(1,2),(1,3),(2,1),(2,4);
insert into employee1075 values 
(1, 'A', 3),
(2, 'B', 2),
(3, 'C', 1),
(4, 'D', 2);