BEGIN TRANSACTION   
INSERT INTO dbo.SpareParts VALUES('mmmon', 4500, 50,null,'1234567810')  
SAVE TRANSACTION InsertStatement  
UPDATE dbo.SpareParts
SET dbo.SpareParts.inventory = (SELECT top(1) dbo.SpareParts.inventory FROM dbo.SpareParts where dbo.SpareParts.FK_Customer_NationalCode='1234567810' )-1
ROLLBACK TRANSACTION InsertStatement  
COMMIT  
