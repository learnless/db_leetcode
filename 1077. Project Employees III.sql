-- 同个项目中，经验最多的工程师，相同经验也要输出

select *
from project1075 p,employee1075 e 
where 
	e.employee_id = p.employee_id
and 
	-- 当前项目最大经验
	e.experience_years =
	(
		select max(e1.experience_years) from employee1075 e1 
		where e1.employee_id in (select p1.employee_id from project1075 p1 where p1.project_id = p.project_id)
	)
