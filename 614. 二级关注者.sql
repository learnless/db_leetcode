-- followee 被关注者，所谓的大咖
-- follower 关注者，粉丝
-- 查找所有大咖关注人数，过滤大咖没有关注其他大咖的数据
-- 比如A
select followee, count(*) as 'num' from follow614 f1 where exists (
	select * from follow614 f2 where f1.followee = f2.follower
)
group by followee 

create table follow614 (
	followee varchar(10),
	follower varchar(10)
);
insert into follow values ('A','B'),('B','C'),('B','D'),('D','E');