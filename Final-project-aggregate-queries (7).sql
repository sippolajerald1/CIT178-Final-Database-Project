/*
USE Manufacturing;
SELECT Part.NumberOfParts, COUNT(DISTINCT Part.PartNumber) AS [Number of Defects]
FROM Manufacturer JOIN Part ON  Manufacturer.ManufacturerID = Part.MfgID
GROUP BY Part.NumberOfParts
ORDER BY Part.NumberOfParts ASC;
*/
/*
USE Manufacturing;
SELECT MIN(Part.PartDefects) AS [Minimum Number of Defects],
       MAX(Part.PartDefects) AS [Maximum Amount of Defects],
	   AVG(Part.PartDefects ) AS [Average Amount Defects]
FROM Part;
*/

/* -- Checking to see calculations
USE Manufacturing;
SELECT Part.PartNumber, Part.MfgDate, Part.NumberOfParts, Part.NumberOfParts * Part.UnitCost AS [Money], PartDefects, PartDefects * Part.UnitCost AS [Loss of Money], 
 ((Part.NumberOfParts - part.PartDefects) * Part.UnitCost) AS [Total] 
FROM Part 
*/

/*
USE Manufacturing;
SELECT  sum(Part.NumberOfParts) AS [Number of parts], SUM(Part.PartDefects) AS [NumberOfDefects]
FROM Part;
*/

/*
USE Manufacturing;
SELECT ZipCode.State, COUNT(DISTINCT Manufacturer.ManufacturerID) AS [Manufacturers per State]
FROM Manufacturer Join ZipCode on Manufacturer.MfgZipCode = ZipCode.ZipCode
GROUP BY ZipCode.State
ORDER BY ZipCode.State ASC;

*/






