-- 编写一个 SQL 查询，查找所有至少连续出现三次的数字

-- 解法一，简单明了
select DISTINCT a.num as ConsecutiveNums from logs a, logs b, logs c
where a.id = b.id - 1
and b.id = c.id - 1
and a.num = b.num and b.num = c.num

-- 通用，连续N
select DISTINCT a.num from logs a, logs b where a.id + 2 = b.id and not exists (
select * from logs c where (c.id between a.id and b.id)
and (c.num <> a.num or c.num <> b.num)
)

-- 拓展，找出至少出现三次的数字
select * from logs a where exists (
	select * from logs b having sum(case when a.num = b.num then 1 else 0 end) >= 3
)
-- 大多情况,group by 与 exists都可互换
select * from logs group by num having count(num) >= 3

select * from logs