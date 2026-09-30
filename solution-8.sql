```sql
-- Problem:
-- Find the patient_id, patient_name, and conditions of patients
-- who have Type I Diabetes.
-- Type I Diabetes always starts with the DIAB1 prefix.

-- Table: Patients
-- Columns:
-- patient_id
-- patient_name
-- conditions

-- Solution:
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE '% DIAB1%'
   OR conditions LIKE 'DIAB1%';

-- Concepts Used:
-- SELECT
-- WHERE
-- LIKE
-- Pattern Matching
-- OR
```