```sql
-- Problem:
-- Delete all duplicate emails while keeping only the record
-- with the smallest id for each unique email.

-- Table: Person
-- Columns:
-- id
-- email

-- Solution:
DELETE p1
FROM Person p1
JOIN Person p2
    ON p1.email = p2.email
   AND p1.id > p2.id;

-- Concepts Used:
-- DELETE
-- INNER JOIN
-- Self Join
-- JOIN conditions
-- Comparison operators
```