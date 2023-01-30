INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color,`ID Cars`)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue',0),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red',1),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White',2),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver',3),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray',4),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray',5);

INSERT INTO Salespersons (`staff ID`, Name, Store,ID)
VALUES
(00001, 'Petey Cruiser', 'Madrid',0),
(00002, 'Anna Sthesia', 'Barcelona',1),
(00003, 'Paul Molive', 'Berlin',2),
(00004, 'Gail Forcewind', 'Paris',3),
(00005, 'Paige Turner', 'Mimia',4),
(00006, 'Bob Frapples', 'Mexico City',5),
(00007, 'Walter Melon', 'Amsterdam',6),
(00008, 'Shonda Leer', 'São Paulo',7);

INSERT INTO customers (`the customer ID`, `name`, `phone number`, `email`, `address`, `city`, `state/province`, `country`, `zip/postal code`,`ID`)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045,0),
(20001, 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', 1150,1),
(30001, 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', 20546,2);

INSERT INTO Invoices (InvoiceNumber, Date, CarsID, CustomerID, StaffID)
VALUES
(852399038, '2018-08-22', 0, 10001, 00001),
(731166526, '2018-12-24', 3, 20001, 00002),
(271135104, '2019-1-22', 2, 30001, 00003);