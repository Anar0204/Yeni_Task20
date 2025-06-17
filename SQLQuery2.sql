CREATE DATABASE Example

USE Example





CREATE DATABASE Market

USE Market

CREATE TABLE Products (
Id INT,
[Name] NVARCHAR(30),
Price DECIMAL
);

ALTER TABLE Products ADD Brand NVARCHAR(30)

DROP TABLE Products

INSERT INTO Products
VALUES(1,'Carolla',23.06,'Toyota')

INSERT INTO Products
VALUES(2,'M5',5000,'BMW'),
(3,'M4',4000,'BMW'),
(4,'M3',4000,'BMW'),
(5,'M4',4000,'BMW'),
(6,'Cruse',4000,'Chevrolete')

INSERT INTO Products
VALUES(7,'Suc ve ceza',5000,'Kitap'),
(8,'Iphone 14',4000,'Apple'),
(9,'Note 7',4000,'Redmi'),
(10,'Iphone 15',4000,'Apple'),
(11,'Note 10',4000,'Samsung'),
(12,'Fc 25',4000,'Ea'),
(13,'FX205',4000,'ASUS'),
(14,'Rtx 3050',4000,'Nvidia'),
(15,'I7 ',4000,'Intel')


UPDATE Products SET Price = 200 Where Id =7;

DELETE FROM Products  WHERE Id=15

DELETE FROM Products  WHERE Id=14

UPDATE Products SET [Name] = '' Where Id =13;

SELECT * FROM Products WHERE Price <(SELECT AVG(Price) FROM Products)

SELECT * FROM Products WHERE Price >10

SELECT CONCAT([Name],Brand) AS ProductInfo FROM Products Where LEN(Brand)>5 



CREATE TABLE Employee (
    Id INT IDENTITY(1,1) PRIMARY KEY,      
    Fullname NVARCHAR(255) NOT NULL,        
    Age INT NOT NULL CHECK (Age >= 0),      
    Email NVARCHAR(255) NOT NULL UNIQUE,    
    Salary DECIMAL(10, 2) NOT NULL CHECK (Salary BETWEEN 300 AND 2000) 
);

INSERT INTO Employee (Fullname, Age, Email, Salary) VALUES
('Anar Ismayilzada', 30, 'anar@gmail.com', 1000.00),
('EKber Quliyev', 25, 'ekber@gmail.com', 750.50),
('Leyla Aliyeva', 27, 'leyla@gmail.com', 500.00),
('ASif Hasanov', 35, 'asif@gmail.com', 1500.00),
('Kamran Malikov', 40, 'kamran@gmail.com', 2000.00);


UPDATE Employee
SET Salary = 1600.00
WHERE Id = 4;

DELETE FROM Employee
WHERE Id = 5;

INSERT INTO Employee (Fullname, Age, Email, Salary) VALUES
('Anar Ismayilzade', 29, 'anar@gmail.com', 900.00);

SELECT * FROM Employee;



