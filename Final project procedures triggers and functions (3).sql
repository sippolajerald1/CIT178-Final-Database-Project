/* Final Project Procedures */
/* Task #1
USE Manufacturing;
GO
CREATE PROC spManufacturers
AS
SELECT * FROM Manufacturer
ORDER BY ManufacturerID;
GO

EXEC spManufacturers;
*/
/*  Task #2 
USE Manufacturing;
GO
CREATE PROC spGetManufacturer
			@ManufacturerID int
AS
BEGIN
		SELECT * FROM Manufacturer
		WHERE ManufacturerID = @ManufacturerID;
END
GO
EXEC spGetManufacturer 1
*/

/*Task #3 */

/*

USE Manufacturing;
GO
ALTER PROC spManufacturerContact
			@ManufacturerID int,
			@CompanyName varChar(200) OUTPUT,
			@Address varchar(75) OUTPUT,
			@WebSite varchar(100) OUTPUT
AS
SELECT @CompanyName = CompanyName, @Address = Address, @Website = WebSite
FROM Manufacturer
WHERE ManufacturerID = @ManufacturerID;
GO
-- Run the procedure

DECLARE @CompanyName varchar(200);
DECLARE @Address varchar(75);
DECLARE @WebSite varchar(100);
EXEC spManufacturerContact 2, @CompanyName OUTPUT, @Address OUTPUT, @WebSite Output;
SELECT @CompanyName AS 'Company Name', @Address AS 'Address', @WebSite AS 'WebSite';
*/
/*
USE Manufacturing;
GO
CREATE PROC spManufacturerCount
AS
DECLARE @ManufacturerCount int;
SELECT @ManufacturerCount = COUNT(*)
FROM Manufacturer
RETURN @ManufacturerCount;
GO

DECLARE @ManufacturerCount int;
EXEC @ManufacturerCount = spManufacturerCount;
Print 'There are ' + CONVERT(varchar, @ManufacturerCount) + ' maufacturers in your databease';
GO
*/
/*Final Project User Defined Functions */
/*
USE Manufacturing;
GO
CREATE FUNCTION fnGetItem
   (@PartDescription varchar(100) = '%')
   RETURNS VARCHAR
BEGIN
    RETURN (SELECT PartNumber FROM Part WHERE PartDescription LIKE @PartDescription);
END;

-- uses the function

GO
SELECT PartNumber, PartDescription, UnitCost
FROM Part
WHERE PartDescription = dbo.fnGetItem('D%');

-- Couldn't get to work with int

-- Retried
USE Manufacturing
GO
ALTER PROC spFindPart
	@PartDescription varchar(100) = '%'
AS 
BEGIN
SELECT PartNumber, UnitCost, MfgID, MfgDate, PartDescription, MachineNumber
	FROM Part
	WHERE PartDescription Like @PartDescription;
END

GO
EXEC spFindPart 'M%'

/* Task #4 */

USE Manufacturing;
GO

CREATE FUNCTION fnParts
	(@PartDescription varchar(100) = '%')
	RETURNS table
RETURN 
    (SELECT * FROM Part WHERE PartDescription LIKE @PartDescription);
GO
SELECT * FROM dbo.fnParts('%');

*/




/* Final Project Triggers */


	
-- Create archive table by copying customer table without any rows
 USE Manufacturing;
GO



SELECT * INTO PartArchive
FROM Part 
WHERE 1=0;
-- update customerArchive table and add activity column for status
ALTER TABLE PartArchive
ADD Activity varchar(50);
GO
-- ceate insert trigger
CREATE TRIGGER PartArchive_Insert ON Part
	After Insert
AS
BEGIN 
	SET NOCOUNT ON;
   DECLARE @PartNumber int
   DECLARE @NumberOfParts int
   DECLARE @PartDescription varchar(100)
   DECLARE @MachineNumber int
   DECLARE @MfgID int

SELECT @MfgID = inserted.MfgID, @PartNumber = inserted.PartNumber, @NumberOfParts = inserted.NumberOfParts, @PartDescription = inserted.PartDescription, @MachineNumber=inserted.MachineNumber
FROM inserted

INSERT INTO PartArchive(PartNumber,MfgID, NumberOfParts, PartDescription, MachineNumber, Activity) VALUES(@PartNumber, @MfgID, @NumberOfParts, @PartDescription, @MachineNumber, 'inserted')
END
GO
-- Add row into customer to test insert trigger
INSERT INTO Part(PartNumber, MfgID, NumberOfParts, PartDescription, MachineNumber) VALUES(6, 1, 800, 'Console', 5)
GO 
-- create delete trigger
   CREATE TRIGGER PartArchive_DELETE ON Part
     AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
	DECLARE @PartNumber int
		DECLARE @NumberOfParts int
		DECLARE @PartDescription varchar(100)
		DECLARE @MachineNumber int
		DECLARE @MfgID int

    SELECT @MfgID = Deleted.MfgID, @PartNumber = DELETED.PartNumber, @NumberOfParts = deleted.NumberOfParts, @PartDescription = deleted.PartDescription, @MachineNumber = deleted.MachineNumber 
	FROM deleted

  INSERT INTO PartArchive (PartNumber, MfgID, NumberOfParts, PartDescription, MachineNumber, Activity) VALUES (@PartNumber, @MfgID, @NumberOfParts, @PartDescription, @MachineNumber, 'deleted')
END 
GO
-- delete row from customer to test delete trigger
DELETE FROM Part WHERE PartNumber = 3;
GO
-- view data in customer archive
SELECT * FROM PartArchive;

GO 
*/
  -- create update trigger

  CREATE TRIGGER PartArchive_UPDATE on Part
     AFTER UPDATE
AS
BEGIN  
    SET NOCOUNT ON;
	DECLARE @PartNumber int
	   DECLARE @NumberOfParts int
	   DECLARE @PartDescription varchar(100)
	   DECLARE @MachineNumber int
	   DECLARE @MfgID int

SELECT @MfgID = inserted.MfgID, @PartNumber = inserted.PartNumber, @NumberOfParts = inserted.NumberOfParts, @PartDescription = inserted.PartDescription, @MachineNumber = inserted.MachineNumber
FROM inserted

INSERT INTO PartArchive(PartNumber, MfgID, NumberOfParts,PartDescription, MachineNumber, Activity) VALUES (@PartNumber, @MfgID, @NumberOfParts, @PartDescription, @MachineNumber, 'updated') 
END
GO

UPDATE Part
SET PartDescription = 'Mirror'
WHERE MfgID = 4;
GO
-- view data in customer archive
-- coudn't get mfgID to equal 5
SELECT * FROM PartArchive;


