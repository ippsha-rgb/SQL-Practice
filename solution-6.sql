-- Problem:
-- Find all numbers that appear at least three times consecutively.

-- Table: Logs
-- Columns:
-- id
-- num

-- Solution:

SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2
    ON l2.id = l1.id + 1
JOIN Logs l3
    ON l3.id = l1.id + 2
WHERE l1.num = l2.num
  AND l2.num = l3.num;

-- Concepts Used:
-- INNER JOIN
-- Self Join
-- JOIN conditions
-- WHERE
-- DISTINCT