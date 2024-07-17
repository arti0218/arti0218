select 
	case when a.CreditScore between 300 and 579 then 'Poor'
	         when a.CreditScore between 580 and 669 then 'Fair'
        	 when a.CreditScore between 670 and 739 then 'Good'
             when a.CreditScore between 740 and 799 then 'Very_Good'
             when a.CreditScore between 800 and 850 then 'Excellent' else 'Others' end credit_score_bucket,
	b.ExitCategory,
    count(distinct a.CustomerId) customers

from capstone.bank_churn a 
join capstone.exitcustomer b on a.Exited = b.ExitID
group by 1,2
order by 1,2