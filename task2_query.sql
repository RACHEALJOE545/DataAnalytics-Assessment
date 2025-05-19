-- Query: Total deposit amount per user with user details
-- Total deposits per user with basic details
SELECT 
    u.id AS user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS full_name,
    u.email,
    SUM(s.amount) AS total_deposits,
    COUNT(s.id) AS number_of_deposits
FROM 
    users_customuser u
JOIN 
    savings_savingsaccount s ON u.id = s.user_id
WHERE 
    u.is_account_deleted = 0
GROUP BY 
    u.id, u.first_name, u.last_name, u.email
ORDER BY 
    total_deposits DESC;