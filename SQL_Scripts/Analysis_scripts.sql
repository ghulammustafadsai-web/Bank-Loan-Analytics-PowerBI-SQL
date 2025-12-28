--==============================================
-- GOOD LOAN ISSUED
--==============================================

SELECT * FROM Bank_loan_data

-- Good Loan Percentage
SELECT 
   (COUNT(CASE WHEN loan_status = 'Fully Paid'  OR Loan_status = 'Current' THEN ID END)*100)
   / COUNT(id) AS Good_loan_percentage
FROM Bank_loan_data

-- Good Loan Applications
SELECT 
   COUNT(id) Good_loan
FROM Bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Good loan Funded Amount
SELECT 
   SUM(loan_amount) AS Good_loan_Funded_Amount
FROM Bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Good loan Recieved Amount
SELECT 
   SUM(total_payment) AS Good_loan_Recieved_Amount
FROM Bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


--=====================================================
-- BAD LOANS : Those loans of which payment is not paid
--=====================================================

-- Bade Loan Percentage
SELECT 
   (COUNT(CASE WHEN loan_status = 'Charged Off'  THEN ID END)*100)
   / COUNT(id) AS Good_loan_percentage
FROM Bank_loan_data

-- Bade Loan Applications
SELECT 
   COUNT(id) Good_loan
FROM Bank_loan_data
WHERE loan_status = 'Charged Off'

-- Bade loan Funded Amount
SELECT 
   SUM(loan_amount) AS Good_loan_Funded_Amount
FROM Bank_loan_data
WHERE loan_status = 'Charged Off'

-- Bade loan Recieved Amount
SELECT 
   SUM(total_payment) AS Good_loan_Recieved_Amount
FROM Bank_loan_data
WHERE loan_status = 'Charged Off'

--==================================================
--LOAN STATUS
--==================================================
SELECT
    loan_status,
     COUNT(id) AS Loan_Count,
     SUM(total_payment) AS Total_Amount_Received,
     SUM(loan_amount) AS Total_Funded_Amount,
     AVG(int_rate * 100) AS Interest_Rate,
     AVG(dti * 100) AS DTI
FROM Bank_loan_data
GROUP BY loan_status

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status
--=============================================
-- Bank Loan Report 
--=============================================

--Month wise
SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

-- State wise
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state

--Term
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term

-- Employee Length
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length

-- Purpose 
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose

--HOME OWNERSHIP
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership

SELECT
    purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose





