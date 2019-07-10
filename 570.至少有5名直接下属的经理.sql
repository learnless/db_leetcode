select a.name from employee570 a, employee570 b
where a.id = b.managerId
group by a.id having count(a.id) >= 5


create table Employee570 (
id int,
name varchar(10),
department varchar(2),
managerId int
)

insert into employee570 values 
(101, 'John','A',null),
(102, 'Dan','A',101),
(103, 'James','A',101),
(104, 'Amy','A',101),
(105, 'Anne','A',101),
(106, 'Ron','B',101);