select a.CustomerId, a.Surname, c.ActiveCategory
from capstone.customerinfo a
join capstone.bank_churn b on a.CustomerId = b.CustomerId
join capstone.activecustomer c on b.IsActiveMember = c.ActiveID
where a.Surname like '%on%