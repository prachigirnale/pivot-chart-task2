Create the primary table for customers
	
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    CustomerAddress VARCHAR(100),
    CustomerPhoneNumber VARCHAR(15)
	);
select * from customers
	
-- Insert data into Customers table
INSERT INTO Customers VALUES (CustomerID, CustomerName, CustomerAddress, CustomerPhoneNumber)
insert into customers values(1, 'Rashmi singh', '49 ram bhawan east', '555-123-4567')
insert into customers values(2, 'Raj varma', '76 krishna palace ', '555-987-6543')
insert into customers values(3,'Pushpa gupta','21 gupta niwas,ramnagar','333-666-999')
insert into customers values(4,'Waman varma','67,watan nagar','888-567-987')
insert into customers values(5,'Poonam Prithvi','89,golden palace,krishnanagar','222-123-456')
insert into customers values(6,'Raviraj Rao','55,new nagar','666-223-567');
select * from customers
	

-- Create the first child table for accounts
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountType VARCHAR(20),
    Balance DECIMAL(15, 2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
select * from accounts
	
-- Insert data into Accounts table
INSERT INTO Accounts VALUES (AccountID,  AccountType, Balance,customerId)
INSERT INTO Accounts values(101,'savings', 5000.00,1)
INSERT INTO Accounts VALUES(102,'current', 2500.00,1)
INSERT INTO Accounts VALUES(103,'Savings', 7500.002,2)
INSERT INTO Accounts VALUES(223,'current',34000.00,4)
INSERT INTO Accounts VALUES(112,'saving',6700.00,6)
INSERT INTO Accounts VALUES(456,'current',9800.00,5);	
	
	

-- Create the second child table for transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    TransactionDate DATE,
    Amount DECIMAL(15, 2),
    TransactionType VARCHAR(20),
    AccountID INT,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);
select * from transactions
	
-- Insert data into Transactions table
INSERT INTO Transactions VALUES (TransactionID, TransactionDate, Amount, TransactionType,AccountId)
INSERT INTO Transactions VALUES(1001,'2024-06-04', 1000.00, 'Deposit',101)
INSERT INTO Transactions VALUES(1002, '02-06-2024', -500.00, 'Withdrawal',102)
INSERT INTO Transactions VALUES(1003, '03-06-2024', -200.00, 'Withdrawal',101)
INSERT INTO Transactions VALUES(1004, '04-06-2024', 1500.00, 'Deposit',103)
INSERT INTO Transactions VALUES(1006,'06-06-2024',3000.00,'withdrawal',223)
INSERT INTO Transactions VALUES(1005,'03-06-2024',1200.00,'deposit',456);
