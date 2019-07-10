-- 树表，查找节点的类型
-- 根节点 叶子节点 子节点（具有根节点和叶子的特性），比如实例2就属于
select id,
case when p_id is null then 'Root'
when (select count(*) from tree608 t2 where t1.id = p_id) > 0 then 'Inner'
else 'Leaf' end as 'Type'
from tree608 t1


create table tree608(id int,p_id int); 
insert into tree608 values (1,null);
insert into tree608 values (2,1);
insert into tree608 values (3,1);
insert into tree608 values (4,2);
insert into tree608 values (5,2);