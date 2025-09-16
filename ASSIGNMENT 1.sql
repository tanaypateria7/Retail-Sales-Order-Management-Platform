USE ASSIGNMENT1 
CREATE TABLE Salesman (
    SalesmanId INT,
    Name VARCHAR(255),
    Commission DECIMAL(10, 2),
    City VARCHAR(255),
    Age INT
);
INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age)
VALUES
    (101, 'Joe', 50, 'California', 17),
    (102, 'Simon', 75, 'Texas', 25),
    (103, 'Jessie', 105, 'Florida', 35),
    (104, 'Danny', 100, 'Texas', 22),
    (105, 'Lia', 65, 'New Jersey', 30);
	CREATE TABLE Customer (
    SalesmanId INT,
    CustomerId INT,
    CustomerName VARCHAR(255),
    PurchaseAmount INT,
    );
	INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
    (101, 2345, 'Andrew', 550),
    (103, 1575, 'Lucky', 4500),
    (104, 2345, 'Andrew', 4000),
    (107, 3747, 'Remona', 2700),
    (110, 4004, 'Julia', 4545);

	CREATE TABLE Orders (OrderId int, CustomerId int, SalesmanId int, Orderdate Date, Amount money)
	INSERT INTO Orders Values 
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)

1. Insert a new record in your Orders table.
INSERT INTO ORDERS VALUES
(5005,5678,107,'2022-08-25',2500)
SELECT * FROM ORDERS

2. Add Primary key constraint for SalesmanId column in Salesman table. Add default
constraint for City column in Salesman table. Add Foreign key constraint for SalesmanId
column in Customer table. Add not null constraint in Customer_name column for the
Customer table.

SELECT * FROM SALESMAN
SP_HELP SALESMAN
ALTER TABLE SALESMAN
ALTER COLUMN SALESMANID INT NOT NULL
ALTER TABLE SALESMAN
ADD CONSTRAINT PK_SALESMAN
PRIMARY KEY(SALESMANID)
ALTER TABLE SALESMAN
ALTER COLUMN CITY VARCHAR(255) NOT NULL
ALTER TABLE SALESMAN ALTER COLUMN CITY VARCHAR (225) 
ALTER TABLE SALESMAN ADD CONSTRAINT DF_SALESMAN_CITY
DEFAULT 'INDORE' FOR CITY
SELECT * FROM CUSTOMER
SP_HELP CUSTOMER
ALTER TABLE CUSTOMER
ALTER COLUMN SALESMANID INT NOT NULL
Alter table CUSTOMER with Nocheck
ADD CONSTRAINT Fk_CustomerId  
Foreign Key(SALESMANID) References dbo.SALESMAN(SALESMANID)
ALTER TABLE CUSTOMER
ALTER COLUMN CUSTOMERNAME VARCHAR(255) NOT NULL


3. Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase
amount value greater than 500.

SELECT * FROM CUSTOMER
WHERE CUSTOMERNAME LIKE'%N' AND PURCHASEAMOUNT>500
4. Using SET operators, retrieve the first result with unique SalesmanId values from two
tables, and the other result containing SalesmanId with duplicates from two tables.

SELECT DISTINCT SALESMANID FROM Salesman 
UNION
SELECT SALESMANID FROM Customer 

SELECT SALESMANID FROM Salesman 
INTERSECT 
SELECT SALESMANID FROM Customer 
5. Display the below columns which has the matching data.
Orderdate, Salesman Name, Customer Name, Commission, and City which has the
range of Purchase Amount between 500 to 1500.

SELECT * FROM SALESMAN S
JOIN CUSTOMER C
ON S.SalesmanId= C.SalesmanId 
JOIN Orders O
ON C.CustomerId = O.CustomerId
WHERE PurchaseAmount BETWEEN 500 AND 1500
6. Using right join fetch all the results from Salesman and Orders table.
SELECT * FROM SALESMAN S
RIGHT JOIN Orders O
ON S.SalesmanId = O.SalesmanId 

SELECT * FROM Salesman 
SELECT * FROM CUSTOMER
SELECT * FROM Orders 
