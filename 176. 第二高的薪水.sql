-- 编写一个 SQL 查询，获取 Employee 表中第二高的薪水（Salary） 
-- 通用解法1，排名n
select * from employee a where a.Salary in
(case when (select count(DISTINCT b.Salary) from employee b where a.Salary < b.Salary) = 1 then a.Salary
else -1 end)

-- 解法二
select max(salary) as SecondHighestSalary from employee where Salary < (select max(salary) from employee)

-- 解法三,主要limit offset 语法用处，
-- 这里语句还有点问题，如100 200 200，要找出第二高应该为100，而实际执行结果为200，错误
select (
SELECT Salary
FROM Employee 
ORDER BY Salary DESC 
LIMIT 1 OFFSET 1) as SecondHighestSalary



