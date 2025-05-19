#  DataAnalytics-Assessment

This project contains SQL queries for the given data analytics assessment.

##  Files in queries/` Folder

- `task1_query.sql`:

 ## Query 1: Active Users with Contact Info
This query retrieves all active users who haven't deleted their account, including full name, email, phone number, and address.

## Query 2: User Count by Gender
Shows how many users are associated with each gender ID.

## Query 3: Top 5 Cities with Most Users 
Returns the top 5 most populated cities by user count from the `address_city` field.  
Helps identify geographical clusters of users.

## Query 4: Total Deposits per User 
Joins `users_customuser` with `savings_savingsaccount` to:
- Calculate total deposit amount
- Count number of deposits per user

Useful for analyzing user engagement and savings behavior.

## Query 5: Most Popular Plans and Average Targets 
Aggregates the `plans_plan` table to determine:
- The most commonly created plan names
- The average target amount per plan

Good for product insights and marketing analysis.

## Query 6: User Balance = Deposits - Withdrawals 
Combines savings and withdrawals to calculate:
- Total deposits
- Total withdrawals
- Net balance per user

Helps assess financial standing and plan effectiveness for each customer.


- `task2_query.sql`: Query to analyze deposit activity

- `task3_query.sql`: Query to analyze customers plans.

- `task4_query.sql`: Query to analyze withdrawal insights  
