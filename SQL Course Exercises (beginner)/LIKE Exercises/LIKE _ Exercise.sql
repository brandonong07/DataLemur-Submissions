/*
Find all customers where the 2nd and 3rd letter in their name is "e".
*/

SELECT * 
FROM customers 
WHERE customer_name LIKE '_ee%'
LIMIT 20;
