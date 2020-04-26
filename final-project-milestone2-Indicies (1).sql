USE Manufacturing;
GO

CREATE INDEX Idx_Zipcode ON Customer(Zipcode);

GO

CREATE INDEX Idx_MfgZipCode ON Manufacturer(MfgZipCode);

GO

CREATE INDEX Idx_Order ON OrderDetails(OrderID);
GO

CREATE INDEX Idx_PartNumber ON OrderDetails(PartNumber);
GO

CREATE INDEX Idx_Customer ON Orders(CustomerID);
GO

CREATE INDEX Idx_MachineNumber ON Part(MachineNumber);
GO

CREATE INDEX Idx_Mfg ON Part(MfgID);
GO