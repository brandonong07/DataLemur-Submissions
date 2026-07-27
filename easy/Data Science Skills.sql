/*
Platform: DataLemur
Difficulty: Easy
Topic: SQL
Pattern: Aggregate Functions

Problem Summary: A company is looking for a Data Scientist and has a table of user_id(s) and their skills.
Find user_id's where they fit all the skill counts

Approach: First, find the amount of skills they satisfy then find user_id where skill count is 3

Key Lesson: Aggregate Functions can be used in "IF"-statements 

*/


# Query:

SELECT candidate_id
FROM candidates
WHERE skill IN('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id 
HAVING COUNT(skill)=3
