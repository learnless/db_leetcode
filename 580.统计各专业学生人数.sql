-- 这里有个小技巧，1:n时，1左连接n的那方，然后group by 返回记录仍然为1原先记录数
select a.dept_name,count(b.dept_id) as 'student_number' from department580 a
LEFT JOIN student580 b
on a.dept_id = b.dept_id
group by a.dept_id


create table student580
(
student_id int,
student_name varchar(10),
gender varchar(2),
dept_id int
);
 
insert into student580 values(1,'Jack','M',1);
insert into student580 values(2,'Jane','F',1);
insert into student580 values(3,'Mark','M',2);
 
create table department580
(
dept_id int,
dept_name varchar(25)
);
 
insert into department580 values(1,'Engineering');
insert into department580 values(2,'Science');
insert into department580 values(3,'Law');
 
