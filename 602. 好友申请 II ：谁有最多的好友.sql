-- 好友人数最高,包括别人申请以及自己申请好友总数
select id, sum(cnt) as num from (
	select requester_id as 'id',count(*) as cnt
	from (select distinct requester_id,accepter_id from request_accepted597)b
	group by requester_id
	union all
	select accepter_id as 'id',count(*) as cnt 
	from (select distinct requester_id,accepter_id from request_accepted597)a
	group by accepter_id
)t 
group by id having sum(cnt) = (
	select sum(cnt) from (
		select requester_id as 'id',count(*) as cnt
		from (select distinct requester_id,accepter_id from request_accepted597)b
		group by requester_id
		union all
		select accepter_id as 'id',count(*) as cnt 
		from (select distinct requester_id,accepter_id from request_accepted597)a
		group by accepter_id
	)s group by id order by sum(cnt) desc limit 1
)


select * from request_accepted597