select actor_id, director_id from ActorDirector1050
group by actor_id, director_id
having count(*) >= 3


create table ActorDirector1050 (
	actor_id int,
	director_id int,
	`timestamp` int
);
insert into ActorDirector1050 values 
(1,1,0),
(1,1,1),
(1,1,2),
(1,2,3),
(1,2,4),
(2,1,5),
(2,1,6);