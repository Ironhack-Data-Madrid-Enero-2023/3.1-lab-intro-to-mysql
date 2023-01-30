insert into cars (`increment ID`, VIN, manufacturer, model, year, color)
values (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');

insert into cars (`increment ID`, VIN, manufacturer, model, year, color)
values (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');

insert into cars (`increment ID`, VIN, manufacturer, model, year, color)
values (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');

insert into cars (`increment ID`, VIN, manufacturer, model, year, color)
values (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');

insert into cars (`increment ID`, VIN, manufacturer, model, year, color)
values (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

insert into cars (`increment ID`, VIN, manufacturer, model, year, color)
values (5, 'DAM41UDN3CHU2WVF6', 'Volvo', '	V60 Cross', 2019, 'Gray');




insert into customers (`incremented ID`, `Customer ID`, name, phone, email, adress, city, state, country, postal)
values (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045);

insert into customers (`incremented ID`, `Customer ID`, name, phone, email, adress, city, state, country, postal)
values (1, 20001, 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', 1150);

insert into customers (`incremented ID`, `Customer ID`, name, phone, email, adress, city, state, country, postal)
values (2, 30001, 'Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', 20546);



insert into Salespersons (idSalespersons, `staff ID`, name, store)
values (0, 00001, 'Petey Cruiser', 'Madrid');

insert into Salespersons (idSalespersons, `staff ID`, name, store)
values (1, 00002, 'Anna Sthesia', 'Barcelona');

insert into Salespersons (idSalespersons, `staff ID`, name, store)
values (2, 00003, 'Paul Molive', 'Berlin');

insert into Salespersons (idSalespersons, `staff ID`, name, store)
values (3, 00004, 'Gail Forcewind', 'Paris');

insert into Salespersons (idSalespersons, `staff ID`, name, store)
values (4, 00005, 'Paige Turner', 'Mimia');

insert into Salespersons (idSalespersons, `staff ID`, name, store)
values (5, 00006, 'Bob Frapples', 'Mexico City');

insert into Salespersons (idSalespersons, `staff ID`, name, store)
values (6, 00007, 'Walter Melon', 'Amsterdam');

insert into Salespersons (idSalespersons, `staff ID`, name, store)
values (7, 00008, 'Shonda Leer', '	São Paulo');


insert into invoices (idInvoices, `Invoice number`, date, `Customers_incremented ID`, `Salespersons_idSalespersons`, `Cars_increment ID`)
values 
(0, 852399038, 2018-08-22, 1, 3, 0),
(1, 731166526, 2018-12-31, 0, 5, 3),
(2, 271135104, 2019-10-22, 2, 7, 2);
