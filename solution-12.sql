
-- Problem:
-- Find the names of products that have at least 100 units ordered
-- in February 2020 and return the total number of units ordered.

-- Table: Products
-- Columns:
-- product_id
-- product_name
-- product_category

-- Table: Orders
-- Columns:
-- product_id
-- order_date
-- unit

-- Solution:
SELECT
    p.product_name,
    SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
    ON p.product_id = o.product_id
WHERE o.order_date >= '2020-02-01'
  AND o.order_date < '2020-03-01'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;

-- Concepts Used:
-- INNER JOIN
-- JOIN conditions
-- WHERE
-- Date Filtering
-- SUM()
-- GROUP BY
-- HAVING