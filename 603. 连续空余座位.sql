-- free字段为1表示空余，查询连续空余的座位
select 
distinct c1.seat_id 
from cinema603 c1, cinema603 c2 
where 
-- (c1.seat_id+1=c2.seat_id or c1.seat_id-1=c2.seat_id)
-- 绝对值，简化运算
abs(c1.seat_id-c2.seat_id)=1
and (c1.free=1 and c2.free=1)
order by c1.seat_id


create table cinema603 (seat_id int,free int);
truncate table cinema603;
insert into cinema603 values(1,1);
insert into cinema603 values(2,0);
insert into cinema603 values(3,1);
insert into cinema603 values(4,1);
insert into cinema603 values(5,1);
insert into cinema603 values(6,0);
insert into cinema603 values(7,1);
insert into cinema603 values(8,1);
insert into cinema603 values(9,1);
insert into cinema603 values(10,1);