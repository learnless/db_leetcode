select 
abs(p1.x-p2.x) as 'shortest'
from point613 p1, point613 p2 
where p1.x < p2.x
order by shortest asc
limit 1

create table point613(
	x float
);
insert into point613 values (-1),(-0.5),(0),(2);