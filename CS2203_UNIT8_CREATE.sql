CREATE TABLE tblCustomers(
	CustomerID nvarchar(5) NULL,
	CompanyName nvarchar(40) NOT NULL,
	ContactName nvarchar(30) NULL,
	ContactTitle nvarchar(30) NULL,
	Address nvarchar(60) NULL,
	City nvarchar(15) NULL,
	Region nvarchar(15) NULL,
	PostalCode nvarchar(10) NULL,
	Country nvarchar(15) NULL,
	Phone nvarchar(24) NULL,
	Fax nvarchar(24) NULL
);

CREATE TABLE tblOrderDetails(
	OrderID int NULL,
	ProductID int NULL,
	UnitPrice double NOT NULL,
	Quantity smallint NOT NULL,
	Discount real NOT NULL
);

CREATE TABLE tblOrders(
	OrderID int NULL,
	CustomerID nvarchar(5) NOT NULL,
	EmployeeID int NULL,
	ShipName nvarchar(40) NULL,
	ShipAddress nvarchar(60) NULL,
	ShipCity nvarchar(15) NULL,
	ShipRegion nvarchar(15) NULL,
	ShipPostalCode nvarchar(10) NULL,
	ShipCountry nvarchar(15) NULL,
	ShipVia int NULL,
	OrderDate datetime NULL,
	RequiredDate datetime NULL,
	ShippedDate datetime NULL,
	Freight double NULL
);

CREATE TABLE tblProducts(
	ProductID int NOT NULL,
	SupplierID int NULL,
	CategoryID int NULL,
	ProductName nvarchar(40) NOT NULL,
	EnglishName nvarchar(40) NULL,
	QuantityPerUnit nvarchar(20) NULL,
	UnitPrice double NULL,
	UnitsInStock smallint NULL,
	UnitsOnOrder smallint NULL,
	ReorderLevel smallint NULL,
	Discontinued bit NOT NULL
);

CREATE TABLE tblShippers(
	ShipperID int NOT NULL,
	CompanyName nvarchar(40) NOT NULL
);

CREATE TABLE tblSupplier(
	SupplierID int NOT NULL,
	Name nvarchar(50) NULL,
	Address nvarchar(50) NULL,
	City nvarchar(50) NULL,
	Province nvarchar(50) NULL
);
