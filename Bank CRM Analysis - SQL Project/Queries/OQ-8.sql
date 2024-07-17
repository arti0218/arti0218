select c.GeographyLocation, count(distinct a.CustomerId) customers

from capstone.customerinfo a 
join capstone.bank_churn b on a.CustomerId = b.CustomerId 
join capstone.geography c on a.GeographyID = c.GeographyID
join capstone.activecustomer d on d.ActiveID = b.IsActiveMember
where d.ActiveCategory =  'Active Member' and b.Tenure > 5
group by 1
