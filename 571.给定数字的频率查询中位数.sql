select
sum(number)/count(distinct number) as median
from(
	select
    IF(sum_number%2=0,
       case when (sum_number/2>=@lastcount and sum_number/2<=countn) or (sum_number/2+1>=@lastcount and sum_number/2+1<=countn) then number else null end,
       case when ceil(sum_number/2)>=@lastcount and ceil(sum_number/2)<=countn then number else null end) as number, 
		-- 分奇偶，奇数返回一个就好，偶数考虑散步到两个数字的情况，关键是sum_number/2在该数累计频数和上个数累计频数的区间里
    @lastcount:=countn+1 as lastcount -- 算上个累计频数结束后，从哪里开始
	from(
		select
				number,
				frequency,
				@countn:= case when @countn=0 then frequency else @countn+frequency end as countn, -- 记录累计频数
				sum_number -- 总共多少数
		from
				numbers,(select @countn:=0) b,(select sum(frequency) as sum_number from numbers) s
		order by
				number) t, (select @lastcount:=0) t1) t2

create table numbers (
number int,
frequency int
)

insert into numbers values 
(0,7),(1,1),(2,3),(3,1);