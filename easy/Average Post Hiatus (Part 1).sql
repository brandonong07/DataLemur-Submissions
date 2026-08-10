/*
Platform: DataLemur
Difficulty: Easy
Topic: SQL
Pattern: DateTime

Problem Summary: For each user who posted at least once in 2021, write query to find number of days between each user's first and last post of the year in 2021. OUtput user, number of days between each user's first and last post

Key Lesson: Use ::DATE to convert string to date 
*/


-- Query:
SELECT
  user_id,
  MAX(post_date::DATE) - MIN(post_date::DATE) AS day_difference
FROM posts
WHERE post_date < '2022-01-01' AND post_date >= '2021-01-01' 
GROUP BY user_id
HAVING COUNT(user_id) > 1
