select * from país;
insert into país (Nombre_País) values ("Panamá");
insert into país (Nombre_País) values ("Cuba");
insert into país (Nombre_País) values ("Argentina");
select * from provincia;
insert into provincia (Nombre_Provincia,País_ID) values ("Chiriquí",1);
insert into provincia (Nombre_Provincia,País_ID) values ("Marebeque",2);
insert into provincia (Nombre_Provincia,País_ID) values ("Neuquén",3);
select * from localidad;
insert into localidad (Nombre,Codigo_Postal,Provincia_ID,País_ID) values ("Barú",11909,1,1);
insert into localidad (Nombre,Codigo_Postal,Provincia_ID,País_ID) values ("Batabanó",33400,2,2);
insert into localidad (Nombre,Codigo_Postal,Provincia_ID,País_ID) values ("Andacollo",8353,3,3);
select * from empleado;
insert into empleado (DNI,Nombre,Telefono,Email,Fecha_Alta,Codigo_Localidad) values (68461,"Thiago",68468468,"thiago@gmail.com","2002-11-4",2);
insert into empleado (DNI,Nombre,Telefono,Email,Fecha_Alta,Codigo_Localidad) values (68462,"Rudyger",68468469,"rudyger@gmail.com","2012-9-4",3);
insert into empleado (DNI,Nombre,Telefono,Email,Fecha_Alta,Codigo_Localidad) values (68463,"Fernando",68468410,"fernando@gmail.com","1968-11-4",1)
