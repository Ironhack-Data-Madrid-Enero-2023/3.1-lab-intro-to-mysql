INSERT INTO cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');

INSERT INTO cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

INSERT INTO cars (VIN, Manufacturer, Model, Year, Color)
VALUES ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');


INSERT INTO customers (`Customer ID`, Name, Phone, Address, City, `State/Province`, Country, Postal)
VALUES ('10001', 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');

INSERT INTO customers (`Customer ID`, Name, Phone, Address, City, `State/Province`, Country, Postal)
VALUES ('20001', 'Hedy Lamarr', '+43 1 514442250', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', '1150');

INSERT INTO customers (`Customer ID`, Name, Phone, Address, City, `State/Province`, Country, Postal)
VALUES ('30001', 'Katherine Johnson', '+1 202 358 0000', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');

INSERT INTO salespersons (`Staff ID`, Name, Store)
VALUES ('00001', 'Petey Cruiser', 'Madrid'),
		('00002', 'Anna Sthesia', 'Barcelona'),
		('00003', 'Paul Molive', 'Berlin'),
		('00004', 'Gail Forcewind', 'Paris'),
        ('00005', 'Paige Turner', 'Mimia');

INSERT INTO invoices (`Invoice Number`, Date, Car, Customers_ID, `Sales Person`)
VALUES ('852399038', '2018-08-22', '1', '1', '1'),
('731166526', '2018-12-31', '2', '2', '2'),
('271135104', '2019-01-22', '3', '3', '3');

