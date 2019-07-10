-- 1.2 3.4 5.6 这样交换座位，最后一个为奇数，不用交换
select
s1.id,
case 
	when s2.id is null then s1.student
	when mod(s1.id,2) = 1 then s2.student
else s3.student end as 'student'
from seat626 s1
left join seat626 s2
on s1.id + 1 = s2.id
left join seat626 s3
on s1.id = s3.id + 1


Create table If Not Exists seat626(id int, student varchar(255));
Truncate table seat626;
insert into seat626 (id, student) values ('1', 'Abbot');
insert into seat626 (id, student) values ('2', 'Doris');
insert into seat626 (id, student) values ('3', 'Emerson');
insert into seat626 (id, student) values ('4', 'Green');
insert into seat626 (id, student) values ('5', 'Jeames');