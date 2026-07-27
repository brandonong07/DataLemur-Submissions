/*
Platform: DataLemur
Difficulty: Easy
Topic: SQL
Pattern: LIMIT + ORDER BY

Problem Summary: Calculate profit using COGS (Cost of Goods) and Total Sales, find the top 3


Approach: First, calculate the profit as (total_sales-cogs) then just sort it using ORDER BY

*/

-- Query:
SELECT drug, total_sales-cogs AS profit
FROM pharmacy_sales
ORDER BY profit DESC
LIMIT 3;
