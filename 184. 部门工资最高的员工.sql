select b.Name as Department,a.Name as Employee,a.Salary from employee184 a
left join department184 b
on a.departmentId = b.id
where exists (
	select * from employee184 c where c.departmentId = a.departmentId
	group by c.departmentId having max(c.salary) = a.salary
)

select * from employee184
select * from department184