-- Problem:
-- Swap the seat ID of every two consecutive students.
-- If the number of students is odd, the last student is not swapped.

-- Table: Seat
-- Columns:
-- id
-- student

-- Solution:

SELECT
    CASE
        WHEN id % 2 = 1 AND id < (SELECT MAX(id) FROM Seat)
            THEN id + 1
        WHEN id % 2 = 0
            THEN id - 1
        ELSE id
    END AS id,
    student
FROM Seat
ORDER BY id;

-- Concepts Used:
-- CASE WHEN
-- Modulo (%)
-- Subquery
-- MAX
-- ORDER BY