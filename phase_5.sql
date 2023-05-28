CREATE VIEW Supplier_Supplies AS
SELECT *
FROM dbo.Suppliers INNER JOIN dbo.SpareParts
ON dbo.Suppliers.Suppliers_Id = dbo.SpareParts.FK_Suppliers

CREATE VIEW Customer_Orders AS
SELECT dbo.Customers.National_Code,dbo.Customers.Name_Customer,dbo.Customers.Family_Customer,dbo.Customers.Phone,dbo.SpareParts.SpareParts_Name,
dbo.SpareParts.price,dbo.SpareParts.inventory,dbo.kodro.Vin,dbo.kodro.purchase_date
FROM ((dbo.Customers INNER JOIN dbo.SpareParts
ON dbo.Customers.National_Code = dbo.SpareParts.FK_Customer_NationalCode)
INNER JOIN dbo.kodro ON dbo.Customers.National_Code = dbo.kodro.FK_Customer_NationalCode)


CREATE VIEW Car_brand_model AS
SELECT dbo.kodro.Vin,dbo.kodro.purchase_date,dbo.Model.Model_Name,dbo.Brand.Brand_Name
FROM ((dbo.kodro INNER JOIN dbo.Model
ON dbo.kodro.FK_Model_Id = dbo.Model.Model_Name) INNER JOIN
dbo.Brand ON dbo.Brand.Brand_Name = dbo.kodro.FK_Brand_Id)
