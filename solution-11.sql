-- Problem:
-- Find for each date the number of different products sold
-- and their names.
-- Product names should be sorted lexicographically.
-- Return the result ordered by sell_date.

-- Table: Activities
-- Columns:
-- sell_date
-- product

-- Solution:
SELECT
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(
        DISTINCT product
        ORDER BY product
        SEPARATOR ','
    ) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;

-- Concepts Used:
-- SELECT
-- COUNT()
-- DISTINCT
-- GROUP_CONCAT()
-- ORDER BY
-- GROUP BY
