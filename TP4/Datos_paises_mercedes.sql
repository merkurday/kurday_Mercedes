insert into empleado (Empleados_id, DNI, Nombre, Teléfono, Email, Fecha_alta) values ("0001", "123123121", "papa_emp","9991", "papa_emp@gmail.com", "2000-01-01");
insert into empleado (Empleados_id, DNI, Nombre, Teléfono, Email, Fecha_alta) values ("0002", "123123122", "pepe_emp","9992", "pepe_emp@gmail.com", "2000-01-02");
insert into empleado (Empleados_id, DNI, Nombre, Teléfono, Email, Fecha_alta) values ("0003", "123123123", "pipi_emp","9993", "pipi_emp@gmail.com", "2000-01-03");

insert into localidad (código_localidad, nombre, código_postal, Empleados_id) values ("1001", "papa_loc", "9001","0001");
insert into localidad (código_localidad, nombre, código_postal, Empleados_id) values ("1002", "pepe_loc", "9002","0002");
insert into localidad (código_localidad, nombre, código_postal, Empleados_id) values ("1003", "pipi_loc", "9003","0003");

insert into provincia (Provincia_id, Nombre_Pcia, código_localidad) values ("2001", "papa_pro", "1001");
insert into provincia (Provincia_id, Nombre_Pcia, código_localidad) values ("2002", "pepe_pro", "1002");
insert into provincia (Provincia_id, Nombre_Pcia, código_localidad) values ("2003", "pipi_pro", "1003");

insert into país (País_id, Nombre_país, Provincia_id) values ("3001", "papa_pro", "2001");
insert into país (País_id, Nombre_país, Provincia_id) values ("3002", "pepe_pro", "2002");
insert into país (País_id, Nombre_país, Provincia_id) values ("3003", "pipi_pro", "2003");