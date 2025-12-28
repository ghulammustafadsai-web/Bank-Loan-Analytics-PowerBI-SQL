SELECT * FROM Bank_loan_data

--Total Loan Applications
SELECT
   DISTINCT COUNT(id) Total_Loan_Applications
FROM Bank_loan_data

--Month to date total applications 
SELECT
  COUNT(id) MTD_loan_applications 
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12

-- Previous Month to Date Applications
SELECT
  COUNT(id) MTD_loan_applications 
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11

--Month to Date Total Funded amount
SELECT 
   SUM(loan_amount) MTD_Total_Funded_Amount
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12

-- Previous Month to date Funded amount
SELECT 
   SUM(loan_amount) MTD_Total_Funded_Amount
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11

-- Total Amount Recieved
SELECT 
   SUM(total_payment)  AS Total_Amount_received 
FROM Bank_loan_data
-- Current Month Total Amount Recieved
SELECT 
   SUM(total_payment)  AS MTD_Total_Amount_received 
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12

-- Previous Month Total Amount Recieved
SELECT 
   SUM(total_payment)  AS PMTD_Total_Amount_received 
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11

-- Average Interest Rate
select 
   ROUND(AVG(int_rate)*100,2)  as Avg_intreset_rate
FROM Bank_loan_data
-- MTD Average Interest Rate
select 
   ROUND(AVG(int_rate)*100,2)  as MTD_Avg_intreset_rate
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12

-- PMTD Average Interest Rate
SELECT 
   ROUND(AVG(int_rate)*100,2)  as PMTD_Avg_intreset_rate
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 

-- Average dti
SELECT 
  ROUND(AVG(dti)*100,2) Avg_dti
FROM Bank_loan_data

-- MTD Average dti
SELECT 
  ROUND(AVG(dti)*100,2) MTD_Avg_dti
FROM Bank_loan_data
WHERE MONTH(issue_date) = 12

-- PMTD Average dti
SELECT 
  ROUND(AVG(dti)*100,2) PMTD_Avg_dti
FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 





from Bank_loan_data




