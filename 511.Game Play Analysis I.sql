-- 查找第一次登录的玩家
select player_id,min(event_date) as 'first_login' from Activity
group by player_id



create table Activity (
player_id int,
event_date date,
device_id int,
games_played int,
primary key (player_id, event_date)
);

insert into Activity values 
(1,'2016-03-01',2,5),
(1,'2016-05-02',2,6),
(2,'2017-06-25',3,1),
(3,'2016-03-02',1,0),
(3,'2018-07-03',4,5);