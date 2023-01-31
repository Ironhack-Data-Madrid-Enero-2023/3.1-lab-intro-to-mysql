CREATE TABLE Cars (
CarsID VARCHAR(20) PRIMARY KEY,
VIN VARCHAR(17) NOT NULL,
Manufacturer VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
Year INT NOT NULL,
Color VARCHAR(20) NOT NULL
);

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
Phone VARCHAR(20) NOT NULL,
Email VARCHAR(50) NOT NULL,
Address VARCHAR(100) NOT NULL,
City VARCHAR(50) NOT NULL,
StateProvince VARCHAR(50) NOT NULL,
Country VARCHAR(50) NOT NULL,
ZipPostalCode VARCHAR(10) NOT NULL
);

CREATE TABLE Salespersons (
StaffID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
Store VARCHAR(50) NOT NULL
);

CREATE TABLE Invoices (
InvoiceID INT PRIMARY KEY AUTO_INCREMENT,
InvoiceNumber INT NOT NULL,
Date DATE NOT NULL,
CarsID VARCHAR(20) NOT NULL,
CustomerID INT NOT NULL,
StaffID INT NOT NULL,
FOREIGN KEY (CarsID) REFERENCES Cars(CarsID),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (StaffID) REFERENCES Salespersons(StaffID)
);


INSERT INTO Cars (VIN, CarsID, Manufacturer, Model, Year, Color)
VALUES 
('3K096I98581DHSNUP', '0' , 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', '1', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', '2', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', '3', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', '4', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', '5', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO Customers (CustomerID, Name, Phone, Email, Address, City, StateProvince, Country, ZipPostalCode)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', 1150),
(30001, 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', 20546);

INSERT INTO Salespersons (StaffID, Name, Store)
VALUES 
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

INSERT INTO Invoices (InvoiceNumber, Date, CarsID, CustomerID, StaffID)
VALUES
(852399038, '2018-08-22', 0, 10001, 00001),
(731166526, '2018-12-24', 3, 20001, 00002),
(271135104, '2019-1-22', 2, 30001, 00003);

Show Tables;