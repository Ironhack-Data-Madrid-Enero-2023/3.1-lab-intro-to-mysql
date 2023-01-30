insert into manufacturer(model_ID,brand,model,year)
values ('VW1','Volkswagen', 'Tiguan', '2015'), ('VW2','Volkswagen', 'Tiguan', '2016'),('VW3','Volkswagen', 'Tiguan', '2017'),
('VW4','Volkswagen', 'Polo', '2015'),('VW5','Volkswagen', 'Polo', '2015'),
('AU1','Audi', 'TT', '2015'),('AU2','Audi', 'A8', '2015'),
('PE1','Peugeot', '207', '2015'),('PE2','Peugeot', '207', '2016'),
('FO1','Ford', 'Fusion', '2015'),('FO2','Ford', 'Fiesta', '2015');

insert into color(Color_ID,Color)
values ('IDred','red'), ('IDblack','black'),('IDwhite','white'),('IDblue','blue');

insert into Store(Store_ID,Location)
values (1,'Madrid'),(2,'Barcelona'),(3,'Munich'),(4,'Beijing')

insert into Customers(Customer_ID,Name,Phone_Number,Email,Address,City,Province,Country,Postal_code)
values (1,'Jorge',634635206, '' , '' , 'Madrid','Madrid','Spain',28033);

insert into salespersons(Staff_ID,Name,store_store_ID)
values (1,'Cris',1), (2,'Axel',3), (3,'Ronald',4), (4,'Santiago',2);

insert into cars(VIN,store_store_ID,manufacturer_model_ID,Color_color_ID,invoices_Invoice_ID)
values  (2,3,'VW3','IDblack', '2'), (3,2,'AU1','IDred', '3'), (5,3,'VW3','IDblack', '4'), (4,1,'VW3','IDyellow', '5');

insert into invoices(invoice_ID,invoice_number,Date,customers_customer_ID,salespersons_staff_id)
values  (1,1,'01/01/2018',1, 2), (2,2,'01/02/2018',1, 1), (3,3,'02/01/2018',2, 3);