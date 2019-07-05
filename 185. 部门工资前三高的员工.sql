select * from (
select b.name as Department,a.name as 'Employee',a.Salary,a.DepartmentId,
(select count(c.salary) from employee184 c where c.DepartmentId = a.DepartmentId and c.salary > a.salary)+1 as rank
from employee184 a
left join department184 b
on a.DepartmentId = b.Id
)t 
where t.rank <= 3
order by t.Department asc, t.salary desc

select * from employee184 order by DepartmentId asc, salary desc