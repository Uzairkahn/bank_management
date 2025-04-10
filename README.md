 Bank Management System (Database Project)
By: Uzair Khan

Overview:
The Bank Management System Database Project is designed to efficiently manage core banking functionalities such as customer data, account types, branches, loans, and payments. It features a normalized database schema that ensures data consistency, integrity, and optimized storage.

 Features:

Normalization:

Schema is normalized up to Third Normal Form (3NF) to eliminate redundancy and ensure relational integrity.

Database Tables:

Customers: Stores customer details.

Account_Types: Holds information about account types and interest rates.

Branches: Manages branch names and their locations.

Accounts: Links customers with their respective accounts and balances.

Loans: Tracks loan details such as amount, type, interest rate, and status.

Payments: Logs payment history against loans.

Sample Data:

Includes realistic records for 15 customers, multiple accounts, and transactions for testing and demonstration.

Queries & Functionality:

Enables typical banking operations such as account balance tracking, loan status checks, and payment history retrieval via SQL queries.

 Project Structure:

Database Schema: SQL scripts to create the tables with all primary and foreign key constraints.

Sample Data: Ready-to-run SQL INSERT statements to populate the database.

Queries (optional): Can be extended with example queries for reports like total loans per branch, active customers, or overdue payments.

README.md: Documentation explaining setup, schema, and data usage instructions.

 Usage Instructions:

Database Setup:

Run the script to DROP, CREATE, and set up the bank_management database.

Insert Sample Data:

Populate tables using the provided INSERT INTO statements.

Execute Queries:

Run custom queries to analyze customer balances, loan statuses, interest rates, etc.
