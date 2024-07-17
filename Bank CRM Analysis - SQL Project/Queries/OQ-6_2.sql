select 
b.GenderCategory, 
d.ActiveCategory, 
count(distinct a.CustomerId) customers
from capstone.customerinfo a 
join capstone.gender b on a.GenderID = b.GenderID
join capstone.bank_churn c on a.CustomerId = c.CustomerId
join capstone.activecustomer d on c.IsActiveMember = d.ActiveID
group by 1,2 
