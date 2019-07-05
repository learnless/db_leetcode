select a.name as Customers from customers a
left join orders b on a.Id = b.CustomerId
where b.id is null

-- 或者
select customers.name as 'Customers' from customers where customers.id not in 
( select customerid from orders );


select * from Customers
select * from Orders