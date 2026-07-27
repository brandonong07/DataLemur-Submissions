/*
Platform: DataLemur
Difficulty: Easy
Topic: SQL 
Pattern: Arithmetic, Aggregate Functions

Problem Summary: Find the difference in the number of issued cards between highest issuance cards and lowest issuance. Arrange based on largest disparity (DESC)

Approach: First, find the difference using MAX() and MIN(), GROUP by card name, then order it descending

Key Lesson: Need to remember to always use GROUP BY and ORDER BY after aggregate functions

*/


-- Query:
SELECT card_name, MAX(issued_amount)-MIN(issued_amount) AS month_diff
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY month_diff DESC;
