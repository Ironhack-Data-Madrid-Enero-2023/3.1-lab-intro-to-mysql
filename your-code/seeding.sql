insert into vendedores (idvendedores, nombre, sucursal)
values (1, 'pepe', 1),
(2, 'juan', 2),
(3, 'carlos', 3),
(4, 'maria', 4),
(5, 'laura', 5),
(6, 'eva', 6),
(7, 'rosa', 7);



insert into clientes (`id clientes`, nombre, tel, mail, dirección, ciudad, provincia, pais, `c.p`)
values (10001, 'Pablo Picasso', '+34 636 17 63 82', ' ' , 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', 28045),
(20001, 'hedy lamarr', 	'+43 1 514442250', ' ', 'Weiglgasse 10', 'Viena', 'Viena', 'Austria', 1150),
(30001, 'katherine johnson', '+1 202 358 0000', ' ', '300 E St SW',	'Washington DC', 'Washington', 'Estados Unidos', 20546);



insert into automovil (idAutomovil, VIN , fabricante, modelo, año, color)
values (0, '3K096I98581DHSNUP', 'volkswagen', 'tiguan', '2019', 'Azul'),
(1, 'ZM8G7BEUQZ97IH46V', 'peugeot', 'Rifter', '2019', 'Rojo'),
(2, 'RKXVNNIHLVVZOUB4M', 'Vado', 'Fusión', '2018', 'Blanco'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Plata'),
(4, 'DAM41UDN3CHU2WV6', 'volvo', 'V60', '2019', 'Gris'),
(5, 'DAM41UDN3CHU2WVF6', 'volvo', 'V60 a campo traviesa', '2019', 'Gris');



insert into facturas (idfactura, numero, fecha, importe, `clientes_id clientes`, `Automovil_idAutomovil`)
values ( 0, 852399038, '2019-08-06', 3000, 10001, 0),
(1, 862246625, '2019-06-05', 5500, 20001, 1),
(2, 895642895, '2022-02-20', 10000, 30001, 2),
(3, 899956847, '2018-12-11', 10000, 40001, 3);
