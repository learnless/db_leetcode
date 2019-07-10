-- 查询referee_id不为2的记录，考察主要是字段为null的处理，简单
select * from customer584
where referee_id <> 2 or referee_id is null

create table customer584 (
id int,
name varchar(10),
referee_id int
);

insert into customer584 values 
(1,'A',null),
(2,'B',null),
(3,'C',2),
(4,'D',null),
(5,'E',1),
(6,'F',2);