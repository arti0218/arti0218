SELECT round(avg(NumOfProducts),2) avg_number_of_products 
FROM capstone.bank_churn
where HasCrCard = 1
