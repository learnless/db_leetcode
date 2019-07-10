select class from courses596
group by class having count(*) >= 5

Create table If Not Exists courses596 (student varchar(255), class varchar(255));
Truncate table courses596;
insert into courses596 (student, class) values ('A', 'Math');
insert into courses596 (student, class) values ('B', 'English');
insert into courses596 (student, class) values ('C', 'Math');
insert into courses596 (student, class) values ('D', 'Biology');
insert into courses596 (student, class) values ('E', 'Math');
insert into courses596 (student, class) values ('F', 'Computer');
insert into courses596 (student, class) values ('G', 'Math');
insert into courses596 (student, class) values ('H', 'Math');
insert into courses596 (student, class) values ('I', 'Math');
