
-- Problem:
-- Find users who have valid email addresses.
-- The email prefix must start with a letter and may contain
-- letters, digits, underscore, period, or dash.
-- The domain must be exactly @leetcode.com in lowercase.

-- Table: Users
-- Columns:
-- user_id
-- name
-- mail

-- Solution:
SELECT
    user_id,
    name,
    mail
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';

-- Concepts Used:
-- SELECT
-- WHERE
-- REGEXP
-- Pattern Matching
-- Regular Expressions
-- Character Classes
-- Anchors (^ and $)
