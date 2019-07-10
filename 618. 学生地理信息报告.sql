-- 将行转为列，列转为行

-- 这种有缺陷，列为null还是会输出，达不到要求
select
case when continent = 'America' then name else null end as 'America',
case when continent = 'Asia' then name else null end as 'Asia',
case when continent = 'Europe' then name else null end as 'Europe'
from student618 s1
group by continent

select
    America,
    Asia,
    Europe
from
(select
    @rownumber:=@rownumber+1 as id,
    name as America
from
    student618,(select @rownumber:=0) a
where
    continent = 'America'
order by
    name) america
left join
(select
    @rownumber2:=@rownumber2+1 as id,
    name as Asia
from
    student618,(select @rownumber2:=0) a
where
    continent = 'Asia'
order by
    name) asia
on
    america.id = asia.id
left join
(select
    @rownumber3:=@rownumber3+1 as id,
    name as Europe
from
    student618,(select @rownumber3:=0) a
where
    continent = 'Europe'
order by
    name) europe
on
    america.id = europe.id

select @rownum:=@rownum+1 as rn,t.* from (select @rownum:=0) r, student618 t

select * from student618

create Table student618 (name varchar(25),continent varchar(25)); 
insert into student618 values('Jack','America');
insert into student618 values('Pascal','Europe');
insert into student618 values('Xi','Asia');
insert into student618 values('Jane','America');