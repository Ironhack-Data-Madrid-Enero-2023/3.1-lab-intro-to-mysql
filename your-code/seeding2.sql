 insert into cars (ID,VIN,manufacturer,model,year,color)
 value
(0, '3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
(1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
(3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
(4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray')
;

 insert into customers (`customer ID`, name, `phone number`, email, adress, city, `state/province`, country, `zip/postal code`)
 value
(10001,'Pablo Picasso','+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid','Madrid','Spain', 28045),
(20001, 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria',1150),
(30001,'Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington, DC','Washington','United States',20546)
;

 insert into salespersons (`staff ID`,name,store)
 value
(00001,'Petey Cruiser','Madrid'),
(00002,'Anna Sthesia','Barcelona'),
(00003,'Paul Molive','Berlin'),
(00004,'Gail Forcewind','Paris'),
(00005,'Paige Turner','Mimia'),
(00006,'Bob Frapples','Mexico City'),
(00007,'Walter Melon','Amsterdam'),
(00008,'Shonda Leer','São Paulo')
;

 insert into invoices (`invoice number`,date, Cars_ID, Customers_CustomerID)
 value
 (852399038,	22-08-2018, 0, 20001),
 (731166526	,	31-12-2018,	3, 10001),
 (271135104,	22-01-2019,	2, 30001)
 ;

insert into Invoices_has_Salespersons(Invoices_InvoiceNumber, Invoices_Cars_ID, Invoices_Customers_CustomerID, `Salespersons_Staff ID` )
value
(852399038, 0, 20001, 00004),
(731166526, 3, 10001, 00006),
(271135104, 2, 30001, 00008)
;
