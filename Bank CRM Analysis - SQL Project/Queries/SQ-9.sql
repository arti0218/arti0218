select case when a.Age between 10 and 19 then '10-20'
	when a.Age between 20 and 29 then '20-30'
when a.Age between 30 and 39 then '30-40'
when a.Age between 40 and 49 then '40-50'
when a.Age between 50 and 59 then '50-60'
when a.Age between 60 and 69 then '60-70'
when a.Age between 70 and 79 then '70-80'
when a.Age between 80 and 89 then '80-90' else 'Other' end Age_bucket,
round(avg(Balance),2) avg_balance

from capstone.customerinfo a
join capstone.bank_churn b on a.CustomerId = b.CustomerId
group by 1 
order by 1
