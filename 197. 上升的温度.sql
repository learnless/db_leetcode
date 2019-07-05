-- 查找与之前（昨天的）日期相比温度更高的所有日期的 Id
select * from weather a, weather b 
where a.RecordDate = date_sub(b.RecordDate,interval -1 day) 
and a.Temperature > b.Temperature



select * from Weather

Create table If Not Exists Weather (Id int, RecordDate date, Temperature int);
Truncate table Weather;
insert into Weather (Id, RecordDate, Temperature) values ('1', '2015-01-01', '10');
insert into Weather (Id, RecordDate, Temperature) values ('2', '2015-01-02', '25');
insert into Weather (Id, RecordDate, Temperature) values ('3', '2015-01-03', '20');
insert into Weather (Id, RecordDate, Temperature) values ('4', '2015-01-04', '30');