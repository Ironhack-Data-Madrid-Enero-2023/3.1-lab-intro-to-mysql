insert into Cars (VIN, Manufacturer, Model, Year, Color)
values('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');

insert into Cars (VIN, Manufacturer, Model, Year, Color)
values('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red');

insert into Cars (VIN, Manufacturer, Model, Year, Color)
values('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White');

insert into Cars (VIN, Manufacturer, Model, Year, Color)
values('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');

insert into Cars (VIN, Manufacturer, Model, Year, Color)
values('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');

insert into Cars (VIN, Manufacturer, Model, Year, Color)
values('DAM41UDN3CHU2WVF5', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

insert into Customers (Customer_ID, Name, Phone, Email, Address, City, State_Province, Country, Postal)
values(10001, 'Pablo Picasso', '+34 636 17 63 82', 'pablo.picasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');

insert into Customers (Customer_ID, Name, Phone, Email, Address, City, State_Province, Country, Postal)
values(20001, 'Hedy Lamarr', '+43 1 514442250', 'hedy.lamarr@gmail.com', 'Weiglgasse 10', 'Viena', 'Vienna', 'Austria', '1150');

insert into Customers (Customer_ID, Name, Phone, Email, Address, City, State_Province, Country, Postal)
values(30001, 'Katherine Johnson', '+1 202 358 0000', 'katherine.johnson@gmail.com', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');

insert into Invoices (Invoice_Number, Date, Cars_VIN, Customers_Customer_ID)
values(852399038, '2018-08-22', '3K096I98581DHSNUP', 10001);

insert into Invoices (Invoice_Number, Date, Cars_VIN, Customers_Customer_ID)
values(852399038, '2018-08-22', 'ZM8G7BEUQZ97IH46V', 10001);

insert into Invoices (Invoice_Number, Date, Cars_VIN, Customers_Customer_ID)
values(852399038, '2018-08-22', 'RKXVNNIHLVVZOUB4M', 10001);

insert into Invoices (Invoice_Number, Date, Cars_VIN, Customers_Customer_ID)
values(271135104, '2019-01-22', 'DAM41UDN3CHU2WVF6', 20001);

insert into Invoices (Invoice_Number, Date, Cars_VIN, Customers_Customer_ID)
values(271135104, '2019-01-22', 'DAM41UDN3CHU2WVF5', 20001);

insert into Invoices (Invoice_Number, Date, Cars_VIN, Customers_Customer_ID)
values(731166526, '2018-12-31', 'HKNDGS7CU31E9Z7JW', 30001);

insert into Salespersons (Staff_ID, Name, Store)
values(00001, 'Petey Cruiser', 'Madrid');

insert into Salespersons (Staff_ID, Name, Store)
values(00002, 'Anna Sthesia', 'Barcelona');

insert into Salespersons (Staff_ID, Name, Store)
values(00003, 'Paul Molive', 'Berlin');

insert into Salespersons (Staff_ID, Name, Store)
values(00004, 'Gail Forcewind', 'Paris');

insert into Salespersons (Staff_ID, Name, Store)
values(00005, 'Paige Turner', 'Mimia');

insert into Salespersons (Staff_ID, Name, Store)
values(00006, 'Bob Frapples', 'Mexico City');

insert into Salespersons (Staff_ID, Name, Store)
values(00007, 'Walter Melon', 'Amsterdam');

insert into Salespersons (Staff_ID, Name, Store)
values(00008, 'Shonda Leer', 'São Paulo');

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (852399038, 00001);

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (852399038, 00002);

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (852399038, 00003);

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (731166526, 00004);

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (731166526, 00005);

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (731166526, 00006);

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (271135104, 00007);

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (271135104, 00008);






