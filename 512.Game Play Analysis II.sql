-- 查询玩家第一次登录的设备
select player_id,
(select device_id from activity b where player_id = a.player_id and event_date = min(a.event_date)) as 'device_id'
from activity a
group by player_id
