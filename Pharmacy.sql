CREATE DATABASE Pharmacy

USE Pharmacy 

CREATE TABLE Department(
Id int identity primary key,
Name nvarchar(255),
DrugTypeCount nvarchar default('0')
)

ALTER TABLE Department
ALTER COLUMN DrugTypeCount nvarchar(255)

CREATE TABLE Drug(
Id int identity primary key,
Name nvarchar(255),
Price float check(Price>0) default('0'),
Type nvarchar(255)default('NULL'),
CreatedDate Datetime default ('1111-11-11'),
IssueDate Datetime default ('1111-11-11')
)


DROP TABLE Drug
ALTER COLUMN Price float

CREATE TABLE Employee(
Id int identity primary key,
Name nvarchar(255),
Surname nvarchar(255) default ('XXX'),
DepartmentName nvarchar(255) default('XXX'),
Birthday datetime default('0000-00-00'),
WeeklyGross int default('0')
)

CREATE TABLE Customer(
Id int identity primary key,
Name nvarchar(255) default ('NULL'),
Surname nvarchar(255) default ('XXX'),
Birthday datetime default('0000-00-00'),
Budget int check(Budget>0) default('0'),
Receipt nvarchar(255) default ('NULL')
)

CREATE TABLE Receipt(
Id int identity primary key,
DrugCount int check(DrugCount>0) default('0'),
Payment float check(Payment>0) default ('0'))

INSERT INTO Department
VALUES('Buta Aptek',100),
      ('Zeytun Aptek',48)

INSERT INTO Drug
VALUES('Vitamin C',9.50,'Vitamin','2020-10-11','2025-10-11'),
      ('АЦЦ',6.48,'Oskurek','2019-11-01','2022-11-16'),
	  ('Keklikotu',0.4,'Ot','2020-11-16','2021-05-28'),
	  ('Griphot',0.75,'Paket','2020-09-15','2022-12-31'),
	  ('Angilor',5,'Sprey','2018-06-21','2025-01-16'),
	  ('Zinkorot',8.42,'Vitamin','2020-12-26','2024-07-26'),
	  ('Nimesil',0.23,'Agri kesici','2018-02-23','2021-12-31'),
	  ('Vitamin D',4.55,'Vitamin','2019-03-12','2022-05-24')
UPDATE Drug SET Name='ACC' WHERE  Id=2 

INSERT INTO Employee
VALUES('Orkhan','Ganbarov','Buta','2002-08-04',255.36),
      ('Tural','Memmedzade','Zeytun','2002-04-29',260.32)

INSERT INTO Customer
VALUES ('Elvin','Ganbarov','2006-08-27',50,'Angilor,Griphot,Zinkorot'),
       ('Ilkin', 'Ibrahimov','2002-04-23',120,'Nimesil,Vitamin D')

 DROP TABLE Customer

INSERT INTO Receipt
VALUES(3,14.17),
      (2,4.78)
DELETE receipt where Id=1

SELECT * FROM Department
SELECT * FROM Drug
SELECT * FROM Employee
SELECT * FROM Customer
SELECT * FROM Receipt