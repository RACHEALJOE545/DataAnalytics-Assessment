-- Query 1: List all active users with their full name and contact information
   -- Active users with full name and contact info
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    email,
    phone_number,
    address_city,
    address_state,
    address_country
FROM 
    users_customuser
WHERE 
    is_active = 1
    AND is_account_deleted = 0;

-- Query 2: Count of users by gender
   -- Count users by gender ID (join with gender table if available)
SELECT 
    gender_id,
    COUNT(*) AS user_count
FROM 
    users_customuser
WHERE 
    is_account_deleted = 0
GROUP BY 
    gender_id
ORDER BY 
    user_count DESC;

 -- Query 3: Get the top 5 cities with the highest number of users
    -- Top 5 cities with the highest user counts
SELECT 
    address_city,
    COUNT(*) AS user_count
FROM 
    users_customuser
WHERE 
    address_city IS NOT NULL
GROUP BY 
    address_city
ORDER BY 
    user_count DESC
LIMIT 5;

-- Query 4: Find users earning more than ₦1,000,000 monthly
   -- Users with monthly salary over ₦1,000,000
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    email,
    monthly_salary
FROM 
    users_customuser
WHERE 
    monthly_salary > 1000000
ORDER BY 
    monthly_salary DESC;


-- Query 5: Average monthly salary and expense grouped by country
   -- Average salary and expense grouped by country
SELECT 
    address_country,
    ROUND(AVG(monthly_salary), 2) AS avg_salary,
    ROUND(AVG(monthly_expense), 2) AS avg_expense
FROM 
    users_customuser
WHERE 
    address_country IS NOT NULL
GROUP BY 
    address_country
ORDER BY 
    avg_salary DESC;


-- Query 6: Number of users by account source (e.g., COWRYWISE, Google, etc.)
   -- Users grouped by source of account creation
SELECT 
    account_source,
    COUNT(*) AS user_count
FROM 
    users_customuser
GROUP BY 
    account_source
ORDER BY 
    user_count DESC;