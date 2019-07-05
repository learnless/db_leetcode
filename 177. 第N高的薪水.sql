create FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      select a.salary as getNthHighestSalary from employee a where a.salary in 
			(
				case when (select count(b.salary) from employee b where a.salary < b.salary) = (N-1) then a.salary
				else -1 end 
			)
  );
END

select getNthHighestSalary(0)