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

