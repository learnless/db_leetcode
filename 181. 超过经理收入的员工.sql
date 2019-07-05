select a.Name as Employee from employee2 a
left join employee2 b
on a.ManagerId = b.Id
where b.Id is not null and a.Salary > b.Salary
