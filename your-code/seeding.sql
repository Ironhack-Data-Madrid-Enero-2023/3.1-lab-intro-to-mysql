insert into cars (`CAR ID` ,vin,Manufacturer,Model,Year,Colour) 
values ( '0' , '3K096I98581DHSNUP' , 'Volkswagen', 'Tiguan', '2019' , 'Blue');

insert into cars (`CAR ID` ,vin,Manufacturer,Model,Year,Colour) 
values ( '1' , 'ZM8G7BEUQZ97IH46V' , 'Peugeot', 'Rifter', '2019' , 'Red');

insert into cars (`CAR ID` ,vin,Manufacturer,Model,Year,Colour) 
values ( '2' , 'RKXVNNIHLVVZOUB4M' , 'Ford', 'Fusion', '2018' , 'White');

insert into cars (`CAR ID` ,vin,Manufacturer,Model,Year,Colour) 
values ( '3' , 'HKNDGS7CU31E9Z7JW' , 'Toyota', 'RAV4', '2018' , 'Silver');

insert into cars (`CAR ID` ,vin,Manufacturer,Model,Year,Colour) 
values ( '4' , 'DAM41UDN3CHU2WVF6' , 'Volvo', 'V60', '2019' , 'Gray');

insert into cars (`CAR ID` ,vin,Manufacturer,Model,Year,Colour) 
values ( '5' , 'DAM41UDN3CHU2WVF6' , 'Volvo', 'V60 Cross Country', '2019' , 'Gray');


insert into customers (`CUST ID`, `customer ID`, Name, `Phone number`, Email, address, city, state, country, `zip code`)
values('0' , '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');

insert into customers (`CUST ID`, `customer ID`, Name, `Phone number`, Email, address, city, state, country, `zip code`)
values('1' , '20001', 'Hedy Lamarr', '+43 1 514442250', '-', 'Weiglgasse 10', 'Viena', 'Vienna', 'Spain', '1150');

insert into customers (`CUST ID`, `customer ID`, Name, `Phone number`, Email, address, city, state, country, `zip code`)
values('2' , '30001', '	Katherine Johnson', '+1 202 358 0000', '-', '300 E St SW', 'Washington, DC', 'Washington', 'United States', '20546');


insert into salespersons (`SP ID`, `Staff ID`, Name, Store)
values('0', '00001', 'Petey Cruiser', 'Madrid');

insert into salespersons (`SP ID`, `Staff ID`, Name, Store)
values('1', '00002', 'Anna Sthesia', 'Barcelona');

insert into salespersons (`SP ID`, `Staff ID`, Name, Store)
values('2', '00003', 'Paul Molive', 'Berlin');

insert into salespersons (`SP ID`, `Staff ID`, Name, Store)
values('3', '00004', 'Gail Forcewind', 'Paris');

insert into salespersons (`SP ID`, `Staff ID`, Name, Store)
values('4', '00005', 'Paige Turner', 'Mimia');

insert into salespersons (`SP ID`, `Staff ID`, Name, Store)
values('5', '00006', 'Bob Frapple', 'Mexico City');

insert into salespersons (`SP ID`, `Staff ID`, Name, Store)
values('6', '00007', 'Walter Melon', 'Amsterdam');

insert into salespersons (`SP ID`, `Staff ID`, Name, Store)
values('7', '00008', 'Shonda Leer', 'São Paulo');


insert into invoices (`INV ID`, `Invoice ID`, `Invoice number`, date, `customers_cust ID`, `cars_CAR ID`)
values('0.1','0', '852399038', '2018-08-22', '1', '0');

insert into invoices (`INV ID`, `Invoice ID`, `Invoice number`, date, `customers_cust ID`, `cars_CAR ID`)
values('1.1','1', '731166526', '2018-12-31', '0', '3');

insert into invoices (`INV ID`, `Invoice ID`, `Invoice number`, date, `customers_cust ID`, `cars_CAR ID`)
values('2.1', '2', '271135104', '2019-01-22', '2', '2');
