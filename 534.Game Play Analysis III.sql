-- 统计玩家游戏的次数
select player_id,event_date,
(select sum(games_played) from activity b where player_id = a.player_id and event_date <= a.event_date) as 'ames_played_so_far'
from activity a