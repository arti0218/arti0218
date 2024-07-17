select 
date_format(`Bank DOJ`,'%Y-%m-01') as bank_DOJ, 
count(distinct a.CustomerId) customers
from capstone.customerinfo as a
group by 1
order by 1
