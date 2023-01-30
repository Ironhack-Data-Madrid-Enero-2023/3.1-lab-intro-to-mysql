delete from Invoices_has_Salespersons where Invoices_Invoice_Number = 271135104;

delete from Invoices where Cars_VIN = 'DAM41UDN3CHU2WVF5';

delete from Cars where VIN = 'DAM41UDN3CHU2WVF5';

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (271135104, 00007);

insert into Invoices_has_Salespersons (invoices_Invoice_Number, Salespersons_Staff_ID)
values (271135104, 00008);