-- 查询奖金小于1000所有员工
-- 员工表没有奖金在bonus577表没有记录，但也符合查询条件
select a.name,b.bonus from employee577 a
left join bonus577 b on a.empId = b.empId
where b.empId is null or b.bonus < 1000


create table Employee577 (
empId int,
name varchar(10),
supervisor int,
salary int,
primary key(empId)
);

create table bonus577 (
empId int,
bonus int,
primary key(empId)
);

insert into Employee577 values (1,'John',3,1000),(2,'Dan',3,2000),(3,'Brad',null,3000),(4,'Thomas',3,4000);
insert into bonus577 values (2,500),(4,2000);