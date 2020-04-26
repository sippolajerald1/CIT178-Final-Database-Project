/*
-- updateble view --
USE Manufacturing;
GO 

CREATE VIEW Numbers
AS
SELECT PartNumber, MfgID, UnitCost
FROM Part;
GO

--original data--
SELECT * FROM Numbers;

--updating price --

GO
UPDATE Numbers
SET UnitCost = 25.00
WHERE MfgID = 2;
GO
*/
/*
 --View #2 
 USE Manufacturing;
 GO
-- creating view --


CREATE VIEW CustomerInfo
AS
SELECT Customer.CustomerID, Name, Address, ZipCode.City
FROM Customer JOIN ZipCode ON ZipCode.ZipCode = Customer.ZipCode;
GO

-- using the view to display the data --
SELECT * FROM CustomerInfo;

*/
-- View #3 

-- creating view --
/*
USE Manufacturing;
GO
CREATE VIEW OrderView
AS
SELECT ID, Date, TotalAmount FROM Orders
WHERE GETDATE()>Date AND TotalAmount > 200;
GO

-- using the view to display the data --
SELECT * FROM OrderView;


*/
/* Task #4 */

-- creating view--

USE Manufacturing;
GO
CREATE VIEW Machines1
AS
SELECT MachineNumber, Line, Tonnage, Brand FROM Machines;
GO

-- using the view to display the data --

SELECT * FROM Machines;
