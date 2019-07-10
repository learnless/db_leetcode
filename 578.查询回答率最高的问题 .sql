-- 此题难度颇高
-- 回答率最高的问题，action为'answer'，'answer_id'不能为空
-- 其他情况'show','skip'，'answer_id'为null
-- 找出回答率最高的问题'question_id'
-- 其实就是同个问题，'answer' / ('show')的比例
-- 这里有个难点，同个比率时应该同时查出

select * from (
	-- 现在网上实现有缺陷，没有考虑相同比例的情况，都是order by desc limit 1直接返回最高一条记录，不正确
	select question_id,
	(sum((case when action = 'answer' then 1 else 0 end)) / (case when action = 'show' then q_num else 0 end)) as rate
	from survey_log
	group by question_id
)t where t.rate in (select max(s.rate) from (
	select 
	(sum((case when action = 'answer' then 1 else 0 end)) / (case when action = 'show' then q_num else 0 end)) as rate
	from survey_log
	group by question_id
)s)


select * from survey_log


create table survey_log (
uid int,
action enum('show','skip','answer'),
question_id int,
answer_id int,
q_num int,
`timestamp` long
)

insert into survey_log values 
(5,'show',285,null,1,123),
(5,'answer',285,123123,1,124),
(5,'show',369,null,2,125),
(5,'skip',369,null,2,126);
