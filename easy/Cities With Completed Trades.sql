/*
Platform: DataLemur
Difficulty: Easy
Topic: SQL
Pattern: Join + Aggregate Functions

Problem Summary: Retrieve top three cities with highest number of completed trade orders listed in descending order


Approach: First, join trades and users table, then COUNT(trades.user_id) to get the number of completed trades per city, GROUP BY city, then ORDER BY count DESC and LIMIT 3


*/


-- Query:
SELECT city, COUNT(trades.user_id) as total_orders
FROM trades
JOIN users
  ON trades.user_id = users.user_id
WHERE status = 'Completed'
GROUP BY city 
ORDER BY total_orders DESC
LIMIT 3;