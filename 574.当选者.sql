-- 分组内个数最高的那组
select * from vote a
left join candidate b on a.candidateId = b.id
group by a.candidateId
order by count(*) desc
limit 1

select * from vote


create table candidate(
id int,
name varchar(2)
)

create table Vote (
id int,
candidateId int,
primary key(id)
)

insert into candidate values 
(1,'A'),
(2,'B'),
(3,'C'),
(4,'D'),
(5,'E');

insert into Vote values (1,2),(2,4),(3,3),(4,2),(5,5);