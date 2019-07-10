select * from number619
group by num having count(*) = 1
order by num desc 
limit 1

create table number619 (num int);
 
insert into number619 values(8);
insert into number619 values(8);
insert into number619 values(3);
insert into number619 values(3);
insert into number619 values(1);
insert into number619 values(4);
insert into number619 values(5);
insert into number619 values(6);