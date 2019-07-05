-- 删除 Person 表中所有重复的电子邮箱，重复的邮箱里只保留 Id 最小 的那个
delete from person3
where 
id not in (select id from (select min(id) as id from person3 group by email having count(email) >= 2)a)
and 
id not in (select id from (select id from person3 group by email having count(email) = 1) b)
and 
email is not NULL

-- 另种解法，参考select 自连接
delete a from person3 a, person3 b
where a.email = b.email and a.id > b.id



