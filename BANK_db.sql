USE BANK_DB
SELECT * FROM ACCOUNT_INFO;
SELECT * FROM BANK_INFO;
SELECT * FROM CUSTOMER_PERSONAL_INFO;
SELECT * FROM CUSTOMER_REFERENCE_INFO;


---Query 1: Retrieve the total number of customers in the database
SELECT COUNT(CUSTOMER_ID) AS TOTAL_CUSTOMERS FROM  CUSTOMER_PERSONAL_INFO;
 
---Query 2: Calculate the average initial deposit for 'Checking' accounts.
SELECT AVG(INITAL_DEPOSIT) AS AVERAGE_DEPOSIT FROM ACCOUNT_INFO;

---Query 3: Retrieve customers and their account details who have 'Family' as the relation in the reference information.

SELECT ACC.* ,CR.RELATION,CR.REFERENCE_ACC_NAME FROM
ACCOUNT_INFO AS ACC
LEFT JOIN CUSTOMER_REFERENCE_INFO AS CR
ON ACC.CUSTOMER_ID=CR.CUSTOMER_ID
WHERE CR.RELATION='family'
;
---Query 4: List the unique bank branches along with the 
---count of accounts associated with each branch.
SELECT ACC.*,BNK.BRANCH_NAME FROM ACCOUNT_INFO AS ACC
LEFT JOIN BANK_INFO AS BNK
ON ACC.IFSC_CODE=BNK.IFSC_CODE
WHERE BRANCH_NAME LIKE 'Delhi%';

---Query 6: Calculate the total interest earned across all accounts.
SELECT SUM(INTERSET) FROM ACCOUNT_INFO;
 
---Query 7: Retrieve customers and their account details sorted by the 
---account type in descending order.

SELECT CP.*,AC.* FROM ACCOUNT_INFO AS AC
JOIN CUSTOMER_PERSONAL_INFO AS CP
ON CP.CUSTOMER_ID=AC.CUSTOMER_ID
ORDER BY ACCOUNT_TYPE DESC
;

---Query 8: List the customers who have 'HYDERABAD' in their address.
 SELECT * FROM CUSTOMER_PERSONAL_INFO
 WHERE ADDRESSS LIKE '%Hyderabad%' 
 OR  ADDRESSS LIKE  '%Mumbai%';

---Query 10: Calculate the average age of customers (based on date of birth).
 SELECT AVG(DATEDIFF(YEAR, DATE_OF_BIRTH, GETDATE())) AS AvgAge
 FROM CUSTOMER_PERSONAL_INFO;


 ---Query: Retrieve customer information along with their account details, 
 ---referencing the bank and their reference information, for customers who 
 ---have a 'Savings' account and were born before the year 1990. 
 ---Display the results sorted by customer names.

 SELECT CP.*,ACC.*
 FROM CUSTOMER_PERSONAL_INFO AS CP
 JOIN ACCOUNT_INFO AS ACC
 ON CP.CUSTOMER_ID=ACC.CUSTOMER_ID
 WHERE ACCOUNT_TYPE='Savings'
 AND YEAR(CP.DATE_OF_BIRTH)<1990;



