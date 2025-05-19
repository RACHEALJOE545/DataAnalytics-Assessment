-- Query: Most popular savings plans and average target amount
-- Most popular plans and average target amount
SELECT 
    plan_name,
    COUNT(*) AS number_of_users,
    ROUND(AVG(target_amount), 2) AS average_target_amount
FROM 
    plans_plan
GROUP BY 
    plan_name
ORDER BY 
    number_of_users DESC;