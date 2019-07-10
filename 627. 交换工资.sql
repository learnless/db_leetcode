-- 交换所有的 f 和 m 值
-- 要求只使用一个更新（Update）语句，并且没有中间的临时表
update salary627 s1, salary627 s2 set s1.sex = s2.sex
where s1.sex <> s2.sex

select * from salary627

create table if not exists salary627(id int, name varchar(100), sex char(1), salary int);
Truncate table salary627;
insert into salary627 (id, name, sex, salary) values ('1', 'A', 'm', '2500');
insert into salary627 (id, name, sex, salary) values ('2', 'B', 'f', '1500');
insert into salary627 (id, name, sex, salary) values ('3', 'C', 'm', '5500');
insert into salary627 (id, name, sex, salary) values ('4', 'D', 'f', '500');