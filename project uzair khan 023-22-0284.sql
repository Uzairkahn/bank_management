DROP DATABASE IF EXISTS bank_management;
CREATE DATABASE bank_management;
USE bank_management;

CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255)
);

CREATE TABLE Account_Types (
    Type_ID INT AUTO_INCREMENT PRIMARY KEY,
    Type_Name VARCHAR(100),
    Interest_Rate DECIMAL(5,2)
);

CREATE TABLE Branches (
    Branch_ID INT AUTO_INCREMENT PRIMARY KEY,
    Branch_Name VARCHAR(100),
    Location VARCHAR(255)
);


CREATE TABLE Accounts (
    Account_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Type_ID INT,
    Balance DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Type_ID) REFERENCES Account_Types(Type_ID)
);

CREATE TABLE Loans (
    Loan_ID INT AUTO_INCREMENT PRIMARY KEY,
    Account_ID INT,
    Amount DECIMAL(10,2),
    Interest_Rate DECIMAL(5,2),
    Loan_Type VARCHAR(100),
    Status VARCHAR(100),
    FOREIGN KEY (Account_ID) REFERENCES Accounts(Account_ID)
);

CREATE TABLE Payments (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Loan_ID INT,
    Amount DECIMAL(10,2),
    Payment_Date DATE,
    FOREIGN KEY (Loan_ID) REFERENCES Loans(Loan_ID)
);



INSERT INTO Customers (Name, Address) VALUES
('Uzair Khan', '123 suk'),
('Sunny Jagwani', '456 suk'),
('Ali Raza', '789 suk'),
('Huzaifa Memon', '101 suk'),
('Syed Mashood', '202 suk'),
('Abdul Qadoos', '303 khp'),
('Fatima Khan', '404 hyd'),
('Ayesha', '505 hyd'),
('Ibtihaj', '606 nawabshah'),
('Meesum Khokhar', '707 khp'),
('Rizwan', '808 isl'),
('Hassan', '909 suk'),
('Shani', '111 salehpat'),
('Mehmood', '222 khp'),
('Anwar', '333 hyd');

INSERT INTO Account_Types (Type_Name, Interest_Rate) VALUES
('Savings', 0.05),
('Current', 0.02),
('Fixed Deposit', 0.08);

INSERT INTO Branches (Branch_Name, Location) VALUES
('Main Branch', '123 shalimar'),
('Downtown Branch', '456 Military rd'),
('Suburb Branch', '789 Ghareebabad');


INSERT INTO Accounts (Customer_ID, Type_ID, Balance) VALUES
(1, 1, 5000.00),
(2, 2, 10000.00),
(3, 1, 7500.00),
(4, 3, 15000.00),
(5, 1, 3000.00),
(6, 2, 20000.00),
(7, 1, 6000.00),
(8, 2, 12000.00),
(9, 1, 8500.00),
(10, 3, 25000.00),
(11, 1, 4000.00),
(12, 2, 18000.00),
(13, 1, 7000.00),
(14, 3, 20000.00),
(15, 1, 5500.00);



INSERT INTO Loans (Account_ID, Amount, Interest_Rate, Loan_Type, Status) VALUES
(1, 20000.00, 0.07, 'Personal Loan', 'Active'),
(3, 50000.00, 0.09, 'Home Loan', 'Active'),
(5, 10000.00, 0.06, 'Car Loan', 'Active');

INSERT INTO Payments (Loan_ID, Amount, Payment_Date) VALUES
(1, 2000.00, '2024-05-01'),
(2, 5000.00, '2024-05-05'),
(3, 1000.00, '2024-05-10');
