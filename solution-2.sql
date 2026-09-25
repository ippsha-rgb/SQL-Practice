-- Problem:
-- Find employees whose salary is strictly less than 30000
-- and whose manager has left the company.

-- Table: Employees
-- Columns:
-- employee_id
-- name
-- manager_id
-- salary

-- Solution:

SELECT employee_id
FROM Employees
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND manager_id NOT IN (
      SELECT employee_id
      FROM Employees
  )
ORDER BY employee_id;

-- Concepts Used:
-- WHERE
-- IS NOT NULL
-- NOT IN
-- Subquery
-- ORDER BY