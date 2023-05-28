CREATE TABLE Kodro (
    Vin int  IDENTITY(10000000,1) PRIMARY KEY check (Vin between 10000000 and 99999999),
	purchase_date varchar(50),
	FK_Customer_NationalCode varchar(10) Foreign key References Customers(National_Code),
	FK_Brand_Id varchar(10) Foreign key References Brand(Brand_Name),
	FK_Model_Id varchar(10) Foreign key References Model(Model_Name),
	FK_Options_Id int Foreign key References Options(Option_Id)
);


CREATE TABLE  Brand(
	 Brand_Name varchar(10) PRIMARY KEY
);

CREATE TABLE  Model(
	 Model_Name varchar(10) PRIMARY KEY,
	 FK_Brand_Id varchar(10) Foreign key References Brand(Brand_Name)
);

CREATE TABLE  Customers(
	 National_Code varchar(10) PRIMARY KEY,
	 Name_Customer varchar(20),
	 Family_Customer varchar(20),
	 Phone varchar(11),
	 Province varchar(10),
	 City varchar(10),
	 Street varchar(10),
	 
);

CREATE TABLE  Options(
	 Option_Id int PRIMARY KEY,
	 GearBox varchar(20) check(Gearbox = 'automatic' or Gearbox = 'manual' ),
	 FK_Color_Name varchar(15) Foreign key References Color(Color_Name)
 
);
CREATE TABLE  Color(
	 Color_Name varchar(15) PRIMARY KEY
	 
);
CREATE TABLE  Suppliers(
	 Suppliers_Id int IDENTITY(1,1) PRIMARY KEY,
	 Suppliers_Name varchar(20),
	 Manager_Name varchar(20),
	 StartDate varchar(20),
	 EndDate varchar(20),
	 Province varchar(10),
	 City varchar(10),
	 Street varchar(10),
	 
);

CREATE TABLE SpareParts(
	SpareParts_Name varchar(20) PRIMARY KEY,
	price int Not null,
	inventory int not null,
	FK_Suppliers int Foreign key References Suppliers(Suppliers_Id),
	FK_Customer_NationalCode varchar(10) Foreign key References Customers(National_Code),
	
	
);


