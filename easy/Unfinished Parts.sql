/*
Platform: DataLemur
Difficulty: Easy
Topic: SQL
Pattern: NULL

Problem Summary: Write a query to find parts where assembly has begun, but are not yet finished


Approach: Find where the finish_date is NULL.

*/


-- Query:
SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
