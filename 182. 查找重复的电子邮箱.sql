select Email from person2
group by Email HAVING count(Email) >= 2