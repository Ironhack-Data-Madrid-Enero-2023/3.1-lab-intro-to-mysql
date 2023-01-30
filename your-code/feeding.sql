insert into cars (cars_id, VIN, Manufacturer,Model,Year,Color)
values ('0' ,'3K096I98581DHSNUP','Volkswagen','Tiguan','2019','Blue');

insert into cars (cars_id, VIN, Manufacturer,Model,Year,Color)
values ('1' ,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red');

insert into cars (cars_id, VIN, Manufacturer,Model,Year,Color)
values ('2' ,'RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White');

insert into cars (cars_id, VIN, Manufacturer,Model,Year,Color)
values ('3' ,'HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver');

insert into cars (cars_id, VIN, Manufacturer,Model,Year,Color)
values ('4' ,'DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');

insert into cars (cars_id, VIN, Manufacturer,Model,Year,Color)
values ('5' ,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');

insert into customer (id,customer_id,name,phone,email,address,city,`State/Province`,country,postal)
values ('0' ,'10001','Pablo Picasso','654654','','Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045);

insert into customer (id,customer_id,name,phone,email,address,city,`State/Province`,country,postal)
values ('1' ,'20001','Hedy Lamarr','654654','','Weiglgasse 10','Viena','Vienna','Austria',1150);

insert into customer (id,customer_id,name,phone,email,address,city,`State/Province`,country,postal)
values ('2' ,'30001','Katherine Johnson','654654','','300 E St SW','Washington','DC Washington','United States',28045);

insert into salesperson (idSalesperson,staff_id,Name,Store)
values (0,00001,'Petey Cruiser','Madrid');

insert into salesperson (idSalesperson,staff_id,Name,Store)
values (1,00002,'Anna Sthesia','Barcelona');

insert into salesperson (idSalesperson,staff_id,Name,Store)
values (2,00003,'Paul Molive','Berlin');

insert into salesperson (idSalesperson,staff_id,Name,Store)
values (3,00004,'Gail Forcewind','Paris');

insert into salesperson (idSalesperson,staff_id,Name,Store)
values (4,00005,'Paige Turner','Mimia');

insert into salesperson (idSalesperson,staff_id,Name,Store)
values (5,00006,'Bob Frapples' ,'Mexico City');

insert into salesperson (idSalesperson,staff_id,Name,Store)
values (6,00007,'Walter Melon','Amsterdam');

insert into salesperson (idSalesperson,staff_id,Name,Store)
values (7,00008,'Shonda Leer','São Paulo');

insert into invoices (id_invoice,Invoice_number,Date,Customer_id,Cars_cars_id)
values (0,852399038,'2018-08-22',1,0);

insert into invoices (id_invoice,Invoice_number,Date,Customer_id,Cars_cars_id)
values (1,731166526,'2018-12-31',0,3);

insert into invoices (id_invoice,Invoice_number,Date,Customer_id,Cars_cars_id)
values (2,271135104,'2019-01-22',2,2);

insert into invoices_has_salesperson (Invoices_id_invoice,Salesperson_idSalesperson)
values ( 852399038,0);

insert into invoices_has_salesperson (Invoices_id_invoice,Salesperson_idSalesperson)
values ( 852399038,1);

insert into invoices_has_salesperson (Invoices_id_invoice,Salesperson_idSalesperson)
values ( 852399038,2);

insert into invoices_has_salesperson (Invoices_id_invoice,Salesperson_idSalesperson)
values ( 731166526,3);

insert into invoices_has_salesperson (Invoices_id_invoice,Salesperson_idSalesperson)
values ( 731166526,4);

insert into invoices_has_salesperson (Invoices_id_invoice,Salesperson_idSalesperson)
values ( 731166526,5);

insert into invoices_has_salesperson (Invoices_id_invoice,Salesperson_idSalesperson)
values ( 271135104,6);

insert into invoices_has_salesperson (Invoices_id_invoice,Salesperson_idSalesperson)
values ( 271135104,7);

select * 
from CARS;

select * 
from customer;

select * 
from INVOICES;

select * 
from invoices_has_salesperson;

select * 
from salesperson;









