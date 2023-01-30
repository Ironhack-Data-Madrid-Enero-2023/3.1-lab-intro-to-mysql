select * from clientes;
INSERT INTO clientes (idclientes, numero_cliente, nombre, ciudad, telefono)
VALUES ('2', '20001', 'Hedy Lamarr', 'Vienna','688788799');
INSERT INTO clientes (idclientes, numero_cliente, nombre, ciudad, telefono)
VALUES ('3', '30001', 'Katherine', 'Washingtn','698788799');
INSERT INTO coches (idcoches, vin, fabricante, modelo, año, color)
VALUES ('0', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan','2019', 'Blue');
select * from coches;
INSERT INTO coches (idcoches, vin, fabricante, modelo, año, color)
VALUES ('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter','2019', 'Red');
INSERT INTO coches (idcoches, vin, fabricante, modelo, año, color)
VALUES ('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion','2018', 'White');
INSERT INTO coches (idcoches, vin, fabricante, modelo, año, color)
VALUES ('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion','2018', 'White');
INSERT INTO coches (idcoches, vin, fabricante, modelo, año, color)
VALUES ('3	', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4','2018', 'Silver');
INSERT INTO facturas (idFacturas, numero_Factura, fecha, coches_idcoches, clientes_idclientes, clientes_idclientes1, vendedores_idvendedores)
VALUES ('0', '852399038', '2018-08-22', '0','1','1', '1');

# me esta dando error 21:59:57	INSERT INTO facturas (idFacturas, numero_Factura, fecha, coches_idcoches, clientes_idclientes, clientes_idclientes1, vendedores_idvendedores) VALUES ('0', '852399038', '2018-08-22', '0','1','1', '1')	Error Code: 1364. Field 'coches_idcoches1' doesn't have a default value	0.0011 sec
# creo que tiene que ver con que esas columnas son forein key
