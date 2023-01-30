CREATE DATABASE lab_mysql;
 USE lab_mysql;

 insert into cars (VIN,manufacturer,model,year,color)
 value 
('3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray')

;
 insert into customers (`customer ID`, name, `phone number`, email, adress, city, `state/province`, country, `zip/postal code`)
 value 
('10001','Pablo Picasso','+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid','Madrid','Spain', '28045'),
('20001', 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria','1150'),
('30001','Katherine Johnson','+1 202 358 0000','-','300 E St SW','Washington, DC','Washington','United States','20546')

;

 USE lab_mysql;
 insert into salespersons (`staff ID`,name,store)
 value 
('1','Petey Cruiser','Madrid'),
('2','Anna Sthesia','Barcelona'),
('3','Paul Molive','Berlin'),
('4','Gail Forcewind','Paris'),
('5','Paige Turner','Mimia'),
('6','Bob Frapples','Mexico City'),
('7','Walter Melon','Amsterdam'),
('8','Shonda Leer','São Paulo')
;

 USE lab_mysql;
 insert into invoices (`invoice ID`,`invoice number`,date,`Salespersons_staff ID`,`Customers_customer ID`,Cars_VIN)
 value 
 ('0',	'852399038',	'22-08-2018',	'3',	'1',	'0'),
 ('1',	'731166526'	,	'31-12-2018',	'5',	'0',	'3'),
 ('2',	'271135104',	'22-01-2019',	'7',	'2',	'2')
 ;
 
 