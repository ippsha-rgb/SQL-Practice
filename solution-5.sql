-- Problem:
-- Find the price of all products on 2019-08-16.
-- Initially, all products have a price of 10.

-- Table: Products
-- Columns:
-- product_id
-- new_price
-- change_date

-- Solution:

SELECT product_id, new_price AS price
FROM Products
WHERE (product_id, change_date) IN (
    SELECT product_id, MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)

UNION

SELECT product_id, 10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16';

-- Concepts Used:
-- Subquery
-- MAX()
-- MIN()
-- GROUP BY
-- WHERE
-- UNION
-- HAVING
-- Date filtering