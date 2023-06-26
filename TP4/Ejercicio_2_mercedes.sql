CREATE TABLE Empleado
(
  Empleados_id varchar(80) NOT NULL,
  DNI varchar(80) NOT NULL,
  Nombre varchar(80) NOT NULL,
  Teléfono varchar(80) NOT NULL,
  Email varchar(80) NOT NULL,
  Fecha_alta date NOT NULL,
  PRIMARY KEY (Empleados_id),
  UNIQUE (Teléfono),
  UNIQUE (Email)
);

CREATE TABLE Localidad
(
  código_localidad varchar(80) NOT NULL,
  nombre varchar(80) NOT NULL,
  código_postal varchar(80) NOT NULL,
  Empleados_id varchar(80) NOT NULL,
  PRIMARY KEY (código_localidad),
  FOREIGN KEY (Empleados_id) REFERENCES Empleado(Empleados_id),
  UNIQUE (código_postal)
);

CREATE TABLE Provincia
(
  Provincia_id varchar(80) NOT NULL,
  Nombre_Pcia varchar(80) NOT NULL,
  código_localidad varchar(80) NOT NULL,
  PRIMARY KEY (Provincia_id),
  FOREIGN KEY (código_localidad) REFERENCES Localidad(código_localidad)
);

CREATE TABLE País
(
  País_id varchar(80) NOT NULL,
  Nombre_país varchar(80) NOT NULL,
  Provincia_id varchar(80) NOT NULL,
  PRIMARY KEY (País_id),
  FOREIGN KEY (Provincia_id) REFERENCES Provincia(Provincia_id),
  UNIQUE (Nombre_país)
);