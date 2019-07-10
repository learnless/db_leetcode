-- 统计玩家连续登录的分数,比如
-- player_id event_date
--     1     2016-01-02
--     1     2016-01-03
--     1     2016-01-04
--     1     2016-02-02
--     2     2016-01-02
--     3     2016-01-02
--     3     2016-01-03
-- 总共有3个player_id玩家登录，其中1和3都有连续两天登录，故分数为 1/3 = 0.33

select round (
	-- 过滤 -1 的数据集
	(select count(*) from (
		-- 对结果进行分组，便于统计连续日期
		select
			-- 找出具有连续登录的player_id，找不到返回-1
			case when a.event_date = DATE_SUB(b.event_date,INTERVAL 1 day) then a.player_id
			else -1 end as 'id'
		from activity a, activity b
		where a.player_id = b.player_id and a.event_date < b.event_date
		group by 
			id
	)t where t.id <> -1)
/ (select count(distinct player_id) from activity), 2) as 'fraction'

select round (
5
/3,2)

select * from activity