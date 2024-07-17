SELECT bc.*, (SELECT ec.ExitCategory FROM capstone.exitcustomer ec  WHERE ec.ExitID = bc.Exited) AS ExitCategory

FROM capstone.bank_churn bc
