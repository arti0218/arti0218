with a as 
(
	SELECT 
		c.GeographyLocation, 
        count(distinct case when a.Exited = 1 then a.CustomerId end) churn_users, 
        round(avg(a.Balance),2) avg_balance
	FROM capstone.bank_churn as a 
	join capstone.customerinfo b on a.CustomerId = b.CustomerId
	join capstone.geography c on c.GeographyID = b.GeographyID
	group by 1
)

select *, row_number()over(order by churn_users desc, avg_balance desc) ranking
from a 
order by 4 asc
