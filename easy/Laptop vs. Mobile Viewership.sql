/*
Platform: DataLemur
Difficulty: Easy
Topic: SQL
Pattern: Use CASE WHEN to create new columns 

Problem Summary: Write a query calculating total viewership for laptop and mobile viewers. 

Approach: Use CASE to first sort, then SUM to calculate the total viewership for each category.

*/


-- Query:
SELECT 
SUM( 
  CASE
    WHEN device_type = 'tablet' THEN 1 
    WHEN device_type = 'phone' THEN 1
    ELSE 0
END) AS mobile_views,
SUM(
  CASE
    WHEN device_type = 'laptop' THEN 1
    ELSE 0
END) AS laptop_views

FROM viewership;
