-- 满足条件
-- 1.TIV_2015必须有多条记录
-- 2.位置独特，只能一条
-- 符合记录统计TIV_2016总数
-- 此题比较难，关键自连接where多个条件过滤时，前面条件不能对后面产生影响
-- 就像满足条件1后，要同时满足条件2，要查找整张表
select round(sum(c.TIV_2016) / 1, 2) as 'TIV_2016' from insurance585 c where PID in (
	select distinct(a.PID) from insurance585 a, insurance585 b
	where a.TIV_2015 = b.TIV_2015 and a.PID <> b.PID
	and not exists (
		select * from insurance585 c where c.PID <> a.PID and (c.LAT = a.LAT and c.LON = a.LON)
	)
	group by a.PID
)

create table insurance585 (PID int,TIV_2015 int,TIV_2016 int,LAT int,LON int);
 
insert into insurance585 values(1,10,5,10,10);
insert into insurance585 values(2,20,20,20,20);
insert into insurance585 values(3,10,30,20,20);
insert into insurance585 values(4,10,40,40,40);