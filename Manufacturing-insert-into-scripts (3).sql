USE Manufacturing;/*
GO
INSERT INTO ZipCode VALUES ('48040', 'Lansing', 'MI')
INSERT INTO ZipCode VALUES ('21130', 'Columbus', 'OH')
INSERT INTO ZipCode VALUES ('45098', 'South Bend', 'IN')
INSERT INTO ZipCode VALUES ('33202', 'Tampa Bay', 'FL')
INSERT INTO ZipCode VALUES ('22300', 'Ann Arbor', 'MI')
INSERT INTO ZipCode VALUES ('49735', 'Gaylord', 'MI')
INSERT INTO ZipCode VALUES ('44400', 'Cincinatti', 'OH')
INSERT INTO ZipCode VALUES ('32090', 'Chicago', 'IL')
INSERT INTO ZipCode VALUES ('10019', 'New York', 'NY')
INSERT INTO ZipCode VALUES ('32098', 'Pittsburg', 'PA')

INSERT INTO Machines VALUES (1, 'DR', '250', 'Van Dorn')
INSERT INTO Machines VALUES (2, 'FD', '500', 'Cincinatti Milicron')
INSERT INTO Machines VALUES (3, 'ST', '500', 'Engel')
INSERT INTO Machines VALUES (4, 'WS', '250', 'Arburg')
INSERT INTO Machines VALUES (5, 'LN', '300', 'Nissei')




INSERT INTO Customer VALUES ('A', 'A Company', '123 Pine Street', '48040', 'acompany@gmail.com')
INSERT INTO Customer VALUES ('B', 'B Company', '345 Oak Street', '21130', 'bcompany@gmail.com')
INSERT INTO Customer VALUES ('C', 'C Company', '456 Cedar Street', '45098', 'ccompany@gmail.com')
INSERT INTO Customer VALUES ('D', 'D Company', '789 Fourth Street', '33202', 'dcompany@gmail.com')
INSERT INTO Customer VALUES ('E', 'E Company', '1000 Second Street','22300', 'ecompany@gmail.com')

SELECT * FROM Customer;

INSERT INTO Manufacturer VALUES (1, 'Company1', '987 First Street', '49735', 'company1@gmai.com')
INSERT INTO Manufacturer VALUES (2, 'Company2', '765 Second Street', '44400', 'company2@gmai.com')
INSERT INTO Manufacturer VALUES (3, 'Company3', '543 Third Street', '32090', 'company3@gmai.com')
INSERT INTO Manufacturer VALUES (4, 'Company4', '321 Tenth Street', '10019', 'company4@gmai.com')
INSERT INTO Manufacturer VALUES (5, 'Company5', '111 Eleventh Street', '32098', 'company5@gmai.com')

SELECT * FROM Manufacturer;

INSERT INTO Orders VALUES (1, '2/11/2020', 'A', 500, 0.05, 475)
INSERT INTO Orders VALUES (2, '2/11/2020', 'B', 1000, 0.2, 800)
INSERT INTO Orders VALUES (3, '2/11/2020', 'C', 750, 0.05, 712.5)
INSERT INTO Orders VALUES (4, '2/11/2020', 'D', 250, 0.05, 237.5)
INSERT INTO Orders VALUES (5, '2/11/2020', 'E', 500, 0.05, 95)



INSERT INTO Part VALUES (1, '2/11/2020', 1, 500, 45, 10.00, 450.00, 'Door Handle', 2)
INSERT INTO Part VALUES (2, '2/12/2020', 2, 1000, 125, 45.00, 5625.00, 'Bumper', 3)
INSERT INTO Part VALUES (3, '2/12/2020', 2, 750, 100, 40.00, 4000.00, 'Door', 5)
INSERT INTO Part VALUES (4, '2/12/2020', 4, 250, 25, 7.00, 175.00, 'Console', 4)
INSERT INTO Part VALUES (5, '2/12/2020', 4, 100, 20, 18.00, 360.00, 'Mirror', 1)

SELECT * FROM Part;

INSERT INTO OrderDetails VALUES (1, 1, 1, 50)
INSERT INTO OrderDetails VALUES (2, 1, 2, 100)
INSERT INTO OrderDetails VALUES (3, 2, 3, 250)
INSERT INTO OrderDetails VALUES (4, 3, 4, 25)
INSERT INTO OrderDetails VALUES (5, 3, 5, 20)
INSERT INTO OrderDetails VALUES (6, 4, 4, 50)
INSERT INTO OrderDetails VALUES (7, 5, 1, 100)
INSERT INTO OrderDetails VALUES (8, 4, 2, 250)
INSERT INTO OrderDetails VALUES (9, 5, 3, 25)
INSERT INTO OrderDetails VALUES (10, 3, 4, 20)*/

