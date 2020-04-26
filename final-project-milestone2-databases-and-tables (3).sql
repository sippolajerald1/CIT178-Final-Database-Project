CREATE DATABASE Manufacturing;

GO
USE Manufacturing;
CREATE TABLE Machines(
   MachineNumber int NOT NULL,
   Line varchar(50),
   Tonnage varchar(50),
   Brand varchar(75),
   PRIMARY KEY (MachineNumber)
   );

   GO

  

   CREATE TABLE ZipCode(
   ZipCode varchar(50) NOT NULL,
   City varchar(10),
   State varchar(5),
   PRIMARY KEY (ZipCode)
   );

   GO
   /*
   CREATE TABLE Customer(
   CustomerID int NOT NULL,
   Name varchar(50),
   Address varchar (75),
   ZipCode varchar(50) NOT NULL,
   WebSite varchar(100),
   PRIMARY KEY (CustomerID)
   ); */

   --DROP TABLE Customer;

   CREATE TABLE Customer(
   CustomerID varchar(10) NOT NULL,
   Name varchar(50),
   Address varchar(75),
   ZipCode varchar(50) NOT NULL,
   WebSite varchar(100),
   PRIMARY KEY (CustomerID)
   );

   GO
   CREATE TABLE Manufacturer(
   ManufacturerID int NOT NULL,
   CompanyName varchar(200),
   Address varchar(75),
   MfgZipCode varchar(50) NOT NULL, 
   WebSite varchar(100),
   PRIMARY KEY (ManufacturerID)
   );

   GO
   CREATE TABLE Orders(
   ID int NOT NULL,
   Date datetime,
   CustomerID varchar(10) NOT NULL,
   TotalPartsshipped int,
   Discount decimal,
   TotalAmount decimal,
   PRIMARY KEY (ID)
   );

   GO
   CREATE TABLE Part(
   PartNumber int NOT NULL,
   MfgDate datetime,
   MfgID int NOT NULL,	
   NumberOfParts int,
   PartDefects int,
   UnitCost money,
   DefectCost money,
   PartDescription varchar(100),
   MachineNumber int NOT NULL,
   PRIMARY KEY (PartNumber)
   );

   GO
   CREATE TABLE OrderDetails(
   ID int NOT NULL,
   OrderID int NOT NULL,
   PartNumber int NOT NULL,
   Quantity int,
   PRIMARY KEY (ID)
   );


   GO






