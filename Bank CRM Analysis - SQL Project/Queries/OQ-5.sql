select b.ExitCategory, avg(a.CreditScore) Avg_credit_score
from capstone.bank_churn a 
join capstone.exitcustomer b on a.Exited = b.ExitID
group by 1
