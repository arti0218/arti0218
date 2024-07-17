select b.GenderCategory, round(avg(a.EstimatedSalary),2) Avg_estimated_salary from capstone.customerinfo a 
join capstone.gender b on a.GenderID = b.GenderID
group by 1
