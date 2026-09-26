-- Problem:
-- Find the person_name of the last person who can fit on the bus
-- without the total weight exceeding 1000 kg.
-- Only one person can board the bus at each turn.

-- Table: Queue
-- Columns:
-- person_id
-- person_name
-- weight
-- turn

-- Solution:

SELECT person_name
FROM (
    SELECT
        person_name,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
) q
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;

-- Concepts Used:
-- SUM()
-- Window Function
-- OVER()
-- ORDER BY
-- Subquery
-- LIMIT