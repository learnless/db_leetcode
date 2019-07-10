-- 编写一个SQL查询，报告从今天起最多90天内的每个日期，
-- 即第一次登录该日期的用户数量。假设今天是2019-06-30
-- 即查出2019-04-01 到 2019-06-30之间登录人数，去重user_id

select *, count(*) as 'cnt' from (
	select user_id, activity, min(activity_date) as 'activity_date' from traffic1107
	group by user_id
	having activity_date >= DATE_SUB('2019-06-30',INTERVAL 90 DAY) and activity = 'login'
)t group by activity_date order by activity_date asc


where t.activity_date >= DATE_SUB('2019-06-30',INTERVAL 90 DAY)
and t.activity = 'login'


create table traffic1107 (
	user_id int,
	activity enum('login', 'logout', 'jobs', 'groups', 'homepage'),
	activity_date date
);
insert into traffic1107 values 
(1, 'login', '2019-05-01'),
(1, 'homepage', '2019-05-01'),
(1, 'logout', '2019-05-01'),
(2, 'login', '2019-06-21'),
(2, 'logout', '2019-06-21'),
(3, 'login', '2019-01-01'),
(3, 'jobs', '2019-01-01'),
(3, 'logout', '2019-01-01'),
(4, 'login', '2019-06-21'),
(4, 'groups', '2019-06-21'),
(4, 'logout', '2019-06-21'),
(5, 'login', '2019-03-01'),
(5, 'logout', '2019-03-01'),
(5, 'login', '2019-06-21'),
(5, 'logout', '2019-06-21');