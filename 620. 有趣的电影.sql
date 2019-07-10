-- 所有影片描述为非 boring (不无聊) 的并且 id 为奇数 的影片，结果请按等级 rating 排列
select * from cinema620
where description <> 'boring' and mod(id, 2) = 1
order by rating desc

Create table If Not Exists cinema620 (id int, movie varchar(255), description varchar(255), rating float(2, 1));
Truncate table cinema620;
insert into cinema620 (id, movie, description, rating) values ('1', 'War', 'great 3D', '8.9');
insert into cinema620 (id, movie, description, rating) values ('2', 'Science', 'fiction', '8.5');
insert into cinema620 (id, movie, description, rating) values ('3', 'irish', 'boring', '6.2');
insert into cinema620 (id, movie, description, rating) values ('4', 'Ice song', 'Fantacy', '8.6');
insert into cinema620 (id, movie, description, rating) values ('5', 'House card', 'Interesting', '9.1');