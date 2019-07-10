select *,
case when (x+y)>z and (x+z)>y and (y+z)>x then 'Yes'
else 'No' end as 'triangle'
from triangle610

create table triangle610 (
	x int,
	y int,
	z int
);
insert into triangle610 values (13, 15, 30), (10, 20, 15);
