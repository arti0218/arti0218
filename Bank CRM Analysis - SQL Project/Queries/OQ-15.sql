with a as
(
select 
c.GeographyLocation, 
b.GenderCategory, 
round(avg(a.EstimatedSalary),2) as avg_salary
from capstone.customerinfo a
join capstone.gender b on a.GenderID = b.GenderID
join capstone.geography c on a.GeographyID = c.GeographyID
group by 1,2
)
select *, rank()over(order by avg_salary desc) as ranking
from a 
