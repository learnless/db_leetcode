-- friend_request597表sender_id，send_to_id记录是否在request_accepted597存在
select round (
	(select count(*) from (
		select distinct a.sender_id, a.send_to_id from friend_request597 a, request_accepted597 b
		where a.sender_id = b.requester_id and a.send_to_id = b.accepter_id
	)t)
	/
	(select count(*) from friend_request597)
,2) as 'accept_rate'

select * from friend_request597

create table friend_request597(sender_id int,send_to_id int,request_date date);
 
insert into friend_request597 values (1,2,'2016-06-01');
insert into friend_request597 values (1,3,'2016-06-01');
insert into friend_request597 values (1,4,'2016-06-01');
insert into friend_request597 values (2,3,'2016-06-02');
insert into friend_request597 values (3,4,'2016-06-09');

create table request_accepted597 (requester_id int,accepter_id int,accept_date date);
 
insert into request_accepted597 values(1,2,'2016-06-03');
insert into request_accepted597 values(1,3,'2016-06-08');
insert into request_accepted597 values(2,3,'2016-06-08');
insert into request_accepted597 values(3,4,'2016-06-09');
insert into request_accepted597 values(3,4,'2016-06-10');