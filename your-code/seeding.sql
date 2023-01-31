INSERT INTO Cars (vin, manufacter, model, year, color)
VALUES ('3K096I98581DHSNUP', 'Volkswagen','Tiguan','2019','Blue'), 
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019','Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Grey');

INSERT INTO Custumer (`custumer ID`, name, `phone number`, email, address, city, `state/province`, country, `zip/postal code`)
VALUES (10001, 'Pablo Picasso','+34636 17 63 82',' ','Paseo de la Chopera, 14','Madrid', 'Madrid', 'Spain', '28045' ), 
(20001, 'Hedy Lamarr', '+43 1 514442250', ' ','Weiglgasse','Viena', 'Vienna', 'Austria', '1150'),
(30001, 'Katherine Johnson', '+ 1 202 358 0000', ' ', '300 E St SW', 'Washington DC', 'Washington', 'United States','20546');

INSERT INTO Salespersons (SalespersonsID, name, StoreID)
VALUES ('00001', 'Peter Cruiser','Madrid'), 
('00002', 'Anna Sthesia','Barcelona'),
('00003', 'Paul Molive','Berlin'),
('00004', 'Gail Focewind','Paris'),
('00005', 'Paige Turner','Miami'),
('00006', 'Bob Frapples','Mexico City'),
('00007', 'Walter Melon','Amsterdam'),
('00008', 'Shonda Leer','São Paulo');

INSERT INTO Invoice (InvoiceID, `Invoice number`, date, car, customer, Salesperson)
VALUES (0, '852399038','22-08-2018', '0', '1','3'), 
(1, '731166526','31-12-2018','3','0','5'),
(2, '271135104','22-01-2019','2','7');