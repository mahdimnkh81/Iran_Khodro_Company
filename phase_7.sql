CREATE TRIGGER Check_inventory
       ON dbo.SpareParts
INSTEAD OF UPDATE
AS
BEGIN
       SET NOCOUNT ON;
 
       DECLARE @C INT
 
       SELECT @C = INSERTED.inventory      
       FROM INSERTED
 
       IF (@C=0)
       BEGIN
			Print'this is wrong'
       END
       ELSE
       BEGIN
			UPDATE dbo.SpareParts
			SET dbo.SpareParts.inventory = 100
			WHERE SpareParts_Name = 'lose'
       END
END
UPDATE dbo.SpareParts SET dbo.SpareParts.inventory = 0 WHERE SpareParts_Name = 'lose'
UPDATE dbo.SpareParts SET dbo.SpareParts.inventory = 100 WHERE SpareParts_Name = 'lose'


CREATE TRIGGER Check_SameCar ON dbo.kodro
AFTER INSERT
AS

if exists ( select * from dbo.kodro AS A 
    inner join inserted i on i.Vin=A.Vin )
begin
    
    Print 'can not insert'
end

INSERT INTO dbo.Kodro(purchase_date,FK_Customer_NationalCode,FK_Brand_Id,FK_Model_Id,FK_Options_Id) 
VALUES('2020/5/9','1234567895','206','tip2',1)