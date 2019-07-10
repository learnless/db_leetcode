-- 两点最近距离
select * 
sqrt(pow(p1.x-p1.x,2) + pow(p1.y-p2.y,2)) as 'shortest'
from point_2d612 p1, point_2d612 p2
where 
-- 过滤同个点情况
(
	(p1.x = p2.x and p1.y < p2.y)
	or
	(p1.x < p2.x and p1.y = p2.y)
	or
	(p1.x < p2.x and p1.y < p2.y)
)
order by shortest asc
limit 1

select sqrt(4)


CREATE TABLE point_2d612 (x int, y int); 
insert into point_2d612 values(-1,-1);
insert into point_2d612 values(0,0);
insert into point_2d612 values(-1,-2);