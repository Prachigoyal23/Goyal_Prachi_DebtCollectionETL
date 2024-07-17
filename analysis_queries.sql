-- Que1. What is the average loan amount for borrowers who are more than 5 days past due?
SELECT AVG(LoanAmount) AS AverageLoanAmount
FROM Borrowers
WHERE DaysLeftToPayCurrentEMI > 5;

--  Que2. Who are the top 10 borrowers with the highest outstanding balance?
SELECT TOP 10 Name, SUM(LoanAmount) AS OutstandingBalance
FROM Borrowers
GROUP BY Name
ORDER BY OutstandingBalance DESC;

-- Que3. List of all borrowers with good repayment history
SELECT *
FROM Borrowers
WHERE DelayedPayment = 'No';

-- Que4. Brief analysis wrt loan type
/* To perform a brief analysis with respect to loan types using SQL, 
we can write a query that aggregates data based on loan types. 
This analysis could include counting the number of loans of each type, 
calculating the total loan amount for each type, or computing average loan amounts by type. */

-- 1. Count of Loans by Loan Type
SELECT LoanType, COUNT(*) AS NumberOfLoans
FROM Borrowers
GROUP BY LoanType
ORDER BY LoanType;


-- 2. Total Loan Amount by Loan Type
SELECT LoanType, SUM(LoanAmount) AS TotalLoanAmount
FROM Borrowers
GROUP BY LoanType
ORDER BY LoanType;

-- 3. Average Loan Amount by Loan Type
SELECT LoanType, AVG(LoanAmount) AS AverageLoanAmount
FROM Borrowers
GROUP BY LoanType
ORDER BY LoanType;

-- 4. Maximum Loan Amount by Loan Type
SELECT LoanType, MAX(LoanAmount) AS MaximumLoanAmount
FROM Borrowers
GROUP BY LoanType
ORDER BY LoanType;

-- 5.  Minimum Loan Amount by Loan Type
SELECT LoanType, MIN(LoanAmount) AS MinimumLoanAmount
FROM Borrowers
GROUP BY LoanType
ORDER BY LoanType;

-- 6. Loan Type Analysis with Multiple Metrics
SELECT 
    LoanType, 
    COUNT(*) AS NumberOfLoans,
    SUM(LoanAmount) AS TotalLoanAmount,
    AVG(LoanAmount) AS AverageLoanAmount,
    MAX(LoanAmount) AS MaximumLoanAmount,
    MIN(LoanAmount) AS MinimumLoanAmount
FROM Borrowers
GROUP BY LoanType
ORDER BY LoanType;

