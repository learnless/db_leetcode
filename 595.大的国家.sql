-- 查询面积超过300万平方公里，或者人口超过2500万，那么这个国家就是大国家
select * from World595
where area >= 3000000 or population >= 25000000

Create table If Not Exists World595 (name varchar(255), continent varchar(255), area int, population int, gdp int);
Truncate table World595;
insert into World595 (name, continent, area, population, gdp) values ('Afghanistan', 'Asia', '652230', '25500100', '20343000000');
insert into World595 (name, continent, area, population, gdp) values ('Albania', 'Europe', '28748', '2831741', '12960000000');
insert into World595 (name, continent, area, population, gdp) values ('Algeria', 'Africa', '2381741', '37100000', '188681000000');
insert into World595 (name, continent, area, population, gdp) values ('Andorra', 'Europe', '468', '78115', '3712000000');
insert into World595 (name, continent, area, population, gdp) values ('Angola', 'Africa', '1246700', '20609294', '100990000000');