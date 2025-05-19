-- Query: Total withdrawals per user and current balance
--Assuming balance = total deposits - total withdrawals
-- Total withdrawals and balance per user
SELECT 
    u.id AS user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS full_name,
    COALESCE(SUM(s.amount), 0) AS total_deposits,
    COALESCE(SUM(w.amount), 0) AS total_withdrawals,
    COALESCE(SUM(s.amount), 0) - COALESCE(SUM(w.amount), 0) AS current_balance
FROM 
    users_customuser u
LEFT JOIN 
    savings_savingsaccount s ON u.id = s.user_id
LEFT JOIN 
    withdrawals_withdrawal w ON u.id = w.user_id
GROUP BY 
    u.id, u.first_name, u.last_name
ORDER BY 
    current_balance DESC;