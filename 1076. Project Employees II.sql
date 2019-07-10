-- 查询在员工最多的项目中
select p.project_id from Project1075 p 
group by p.project_id
order by count(distinct p.employee_id) desc
limit 1