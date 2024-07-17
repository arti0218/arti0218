select 
case when a.Age between 18 and 30 then '18-30' 
        when a.Age between 31 and 50 then '30-50' else '50+' end age_bracket, round(avg(b.Tenure),2) avg_tenure
from capstone.customerinfo a
join capstone.bank_churn b on a.CustomerId = b.CustomerId
where b.Exited = 1
group by 1
order by 1
