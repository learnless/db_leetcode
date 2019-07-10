-- 分析用户保留率，是否在第二天接着上线
select *, count(*) from activity1097 a1
left join activity1097 a2
on a1.player_id <> a2.player_id and a1.event_date = a2.event_date
group by a1.player_id

select * from activity1097 a1 

select player_id, min(event_date) as 'event_date' from activity1097
group by player_id




create table activity1097 (
	player_id int,
	device_id int,
	event_date date,
	games_played int,
	PRIMARY key (player_id, event_date)
);
insert into activity1097 values 
(1, 2, '2016-03-01', 5),
(1, 2, '2016-03-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-01', 0),
(3, 4, '2016-07-03', 5);