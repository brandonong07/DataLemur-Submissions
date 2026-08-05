/*
USE JOIN to output all information from trades joined to the users table
*/

SELECT * 
FROM trades
JOIN users
  ON trades.user_id = users.user_id;