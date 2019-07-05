select a.id, a.score,
(select count(distinct b.score) from scores b where a.score < b.score) + 1 as Rank
from scores a
order by a.score desc, a.id asc