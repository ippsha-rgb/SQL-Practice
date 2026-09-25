# Write your MySQL query statement below
-- create database pratice;
-- LeetCode SQL Problem
-- Problem: Count Salary Categories
--
-- Table: Accounts
-- Columns:
-- account_id INT
-- income INT
--
-- Task:
-- Calculate the number of bank accounts in each salary category.
--
-- Low Salary: income < 20000
-- Average Salary: 20000 <= income <= 50000
-- High Salary: income > 50000
--
-- The result must contain all three categories.
-- If a category has no accounts, return 0.
--
-- Solution:



use pratice;
SELECT 'Low Salary' AS category,
       COUNT(CASE WHEN income < 20000 THEN 1 END) AS accounts_count
FROM Accounts
UNION ALL
SELECT 'Average Salary',
       COUNT(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 END)
FROM Accounts
UNION ALL
SELECT 'High Salary',
       COUNT(CASE WHEN income > 50000 THEN 1 END)
FROM Accounts;