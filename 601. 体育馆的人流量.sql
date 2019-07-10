-- 至少连续三天人流量不少于100
-- 查询符合记录有id 5,6,7,8
-- 看到题思路想着自连接没错，但where条件对visit_date进行筛选，后续比较难写
-- 其实可以转换思路，对people进行筛选
select a.id,min(a.visit_date) as 'visit_date', min(a.people) as 'people'
from stadium601 a, stadium601 b, stadium601 c
where a.people >= 100 and b.people >= 100 and c.people >= 100
-- and a.id < b.id and b.id < c.id
and (
	-- a b c
	(a.id + 1 = b.id and b.id + 1 = c.id)
	or
	-- a c b
	(a.id + 1 = c.id and c.id + 1 = b.id)
	or
	-- b a c
	(b.id + 1 = a.id and a.id + 1 = c.id)
	or
	-- b c a
	(b.id + 1 = c.id and c.id + 1 = a.id)
	or
	-- c a b
	(c.id + 1 = a.id and a.id + 1 = b.id)
	or
	-- c b a
	(c.id + 1 = b.id and b.id + 1 = a.id)
)
group by a.id


select * from stadium601

Create table If Not Exists stadium601 (id int, visit_date DATE NULL, people int);
Truncate table stadium601;
insert into stadium601 (id, visit_date, people) values ('1', '2017-01-01', '10');
insert into stadium601 (id, visit_date, people) values ('2', '2017-01-02', '109');
insert into stadium601 (id, visit_date, people) values ('3', '2017-01-03', '150');
insert into stadium601 (id, visit_date, people) values ('4', '2017-01-04', '99');
insert into stadium601 (id, visit_date, people) values ('5', '2017-01-05', '145');
insert into stadium601 (id, visit_date, people) values ('6', '2017-01-06',   '1455');
insert into stadium601 (id, visit_date, people) values ('7', '2017-01-07', '199');
insert into stadium601 (id, visit_date, people) values ('8', '2017-01-08', '188');