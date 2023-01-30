insert into store (store_id, location)
values (1, 'Madrid');

insert into Salespersons (staff_id, name)
values (1, 'Axel'), (2, 'Amin'), (3, 'Jorge');

insert into customers (customers_id, name, phone, email, address, city, state, country, zip)
values (1, 'Paula', 151515, 'paula.com', 'calle1', 'madrid', 'madrid', 'espana', 120), (2, 'Pedro', 161616, 'pedro.com', 'calle2', 'barcelona', 'catalunya', 'espana', 121), (3, 'Oriana', 171717, 'oriana.com', 'calle4', 'sevilla', 'andalusia', 'espana', 122);


insert into manufacturer (manufacturer_id, model)
values (1, 'TT'), (2, 'ModelS');

insert into invoices (invoice_id, invoice_num, date, car, customer, salesperson, Customers_customers_id, Salespersons_staff_id)
values (1, 2, '2012-08-16 22:28:51', 'ModelS', 'Oriana', 'Amin', 1, 1);

insert into Cars (VIN, year, color, manufacturer_manufacturer_id, invoices_invoice_id, invoices_Customers_customers_id, invoices_Salespersons_staff_id, store_store_id)
values (1, 2007, 1, 1, 1, 1, 1, 1);