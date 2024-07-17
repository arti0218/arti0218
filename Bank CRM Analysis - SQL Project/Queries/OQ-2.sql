select a.CustomerId, a.EstimatedSalary
from capstone.customerinfo a
where extract(month from a.`Bank DOJ`) between 10 and 12
order by 2 desc
Limit 5