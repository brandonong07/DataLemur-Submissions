/*
Platform: DataLemur
Difficulty: Hard
Topic: SQL
Pattern: COALESCE -> Handle Null Values, JOIN with CASEs

Problem Summary: Two tables, join them together, and update their advertisement status based on various conditions.
1. New: Advertisers who are newly registered and have made their first payment.
2. Existing: Advertisers who have made payments in the past and have recently made a current payment.
3. Churn: Advertisers who have made payments in the past but have not made any recent payment.
4. Resurrect: Advertisers who have not made a recent payment but may have made a previous payment and have made a payment again recently.


Approach: First, join tables together. Use COALESCE to handle NULL values and CASE statements to determine the advertisement status based on the conditions provided.

Key Lesson: COALESCE is very useful and we can use CASE with joins. The reason why we use FULL OUTER JOIN is because we want to include all advertisers, even those who may not have made any payments yet. This allows us to accurately categorize them into the appropriate status.

*/

-- Query:
SELECT COALESCE(daily_pay.user_id, advertiser.user_id) AS user_id,
  CASE 
    WHEN paid ISNULL THEN 'CHURN'
    WHEN status in ('NEW', 'EXISTING', 'RESURRECT') AND paid IS NOT NULL THEN 'EXISTING'
    WHEN status = 'CHURN' and paid IS NOT NULL THEN 'RESURRECT'
    WHEN paid IS NOT NULL AND status IS NULL THEN 'NEW'
  END AS new_status
FROM advertiser 
  FULL OUTER JOIN daily_pay 
    ON daily_pay.user_id = advertiser.user_id
  
ORDER BY user_id;