-- 编写一个 SQL 查询，满足条件：无论 person 是否有地址信息，都需要基于上述两表提供 person 的以下信息：
-- FirstName, LastName, City, State

select a.FirstName, a.LastName, b.City, b.State from person a
LEFT JOIN address b
on a.personId = b.personId
