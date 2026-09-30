```sql
-- Problem:
-- Find the second highest distinct salary from the Employee table.
-- Return NULL if there is no second highest salary.

-- Table: Employee
-- Columns:
-- id
-- salary

-- Solution:
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

-- Concepts Used:
-- SELECT
-- MAX()
-- Subquery
-- WHERE
-- Comparison operator
```