INSERT INTO dbo.Customers VALUES('1234567810','sherlock','holmes','44796268462',' London','London','BakerStre')

INSERT INTO dbo.Kodro(purchase_date,FK_Customer_NationalCode,FK_Brand_Id,FK_Model_Id,FK_Options_Id) 
VALUES('2022/5/9','1234567810','206','tip3',1)

UPDATE dbo.Customers
SET Phone = '44734278008'
WHERE Customers.Name_Customer='sherlock'

DELETE FROM Kodro WHERE FK_Customer_NationalCode IS null;