sql
-- Problem:
-- Find employees who are high earners in each department.
-- A high earner is an employee whose salary is in the top three
-- unique salaries for their department.

-- Table: Employee
-- Columns:
-- id
-- name
-- salary
-- departmentId

-- Table: Department
-- Columns:
-- id
-- name

-- Solution:
SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM (
    SELECT
        e.*,
        DENSE_RANK() OVER (
            PARTITION BY departmentId
            ORDER BY salary DESC
        ) AS rnk
    FROM Employee e
) e
JOIN Department d
    ON e.departmentId = d.id
WHERE e.rnk <= 3;

-- Concepts Used:
-- DENSE_RANK()
-- Window Function
-- PARTITION BY
-- ORDER BY
-- Subquery
-- INNER JOIN
-- JOIN conditions
-- WHERE
