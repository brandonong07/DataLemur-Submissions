/*
Platform: DataLemur
Difficulty: Easy
Topic: JOINs, ORDER BY, NULL

Problem Summary: Join two tables, find find Facebook pages where there are 0 likes.


Approach: First join the tables using FULL INNER JOIN, then find the pages where the user_id is NULL, which means there are no likes for that page.

Key Lesson: Syntax and order of operations

*/


-- Query:
SELECT pages.page_id

FROM pages
FULL OUTER JOIN page_likes
  ON pages.page_id = page_likes.page_id
    
WHERE page_likes.user_id IS NULL
ORDER BY page_id ASC;