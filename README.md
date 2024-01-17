# Bank_Database_System

**Database Creation:**
- Established the `BANK_DB` database with structured tables: `ACCOUNT_INFO`, `BANK_INFO`, `CUSTOMER_PERSONAL_INFO`, and `CUSTOMER_REFERENCE_INFO`.

**Table Details:**

1. **ACCOUNT_INFO Table:**
   - Fields: Account ID, customer ID, IFSC code, account type, initial deposit, and interest.
   - Foreign keys link to `CUSTOMER_PERSONAL_INFO` and `BANK_INFO`.

2. **BANK_INFO Table:**
   - Fields: IFSC code, branch name, and location.

3. **CUSTOMER_PERSONAL_INFO Table:**
   - Fields: Customer ID, first name, last name, date of birth, address, and contact number.

4. **CUSTOMER_REFERENCE_INFO Table:**
   - Fields: Customer ID, relation, and reference account name.

**Queries Executed:**

1. **Total Customers:**
   - Retrieved the count of customers in the database: `SELECT COUNT(CUSTOMER_ID) AS TOTAL_CUSTOMERS FROM CUSTOMER_PERSONAL_INFO;`

2. **Average Initial Deposit:**
   - Calculated the average initial deposit for 'Checking' accounts: `SELECT AVG(INITIAL_DEPOSIT) AS AVERAGE_DEPOSIT FROM ACCOUNT_INFO;`

3. **Family References:**
   - Retrieved customers and their account details with 'Family' as the relation in reference information.

4. **Unique Bank Branches:**
   - Listed unique bank branches and the count of accounts associated with each branch.

5. **Total Interest Earned:**
   - Calculated the total interest earned across all accounts: `SELECT SUM(INTEREST) FROM ACCOUNT_INFO;`

6. **Sorted Account Details:**
   - Retrieved customers and their account details, sorted by account type in descending order.

7. **Customers in Hyderabad:**
   - Listed customers with 'HYDERABAD' in their address.

8. **Average Age Calculation:**
   - Calculated the average age of customers based on date of birth.

9. **Savings Account Details:**
   - Retrieved customer information with their account details for 'Savings' accounts, born before 1990, sorted by customer names.
