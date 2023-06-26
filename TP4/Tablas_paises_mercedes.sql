CREATE TABLE Empleado
(
  Empleados_id VARCHAR(80) NOT NULL,
  DNI VARCHAR(80) NOT NULL,
  Nombre VARCHAR(80) NOT NULL,
  Teléfono VARCHAR(80) NOT NULL,
  Email VARCHAR(80) NOT NULL,
  Fecha_alta VARCHAR(80) NOT NULL,
  PRIMARY KEY (Empleados_id),
  UNIQUE (Teléfono),
  UNIQUE (Email)
);

CREATE TABLE Localidad
(
  código_localidad VARCHAR(80) NOT NULL,
  nombre VARCHAR(80) NOT NULL,
  código_postal VARCHAR(80) NOT NULL,
  Empleados_id VARCHAR(80) NOT NULL,
  PRIMARY KEY (código_localidad),
  FOREIGN KEY (Empleados_id) REFERENCES Empleado(Empleados_id),
  UNIQUE (código_postal)
);

CREATE TABLE Provincia
(
  Provincia_id VARCHAR(80) NOT NULL,
  Nombre_Pcia VARCHAR(80) NOT NULL,
  código_localidad VARCHAR(80) NOT NULL,
  PRIMARY KEY (Provincia_id),
  FOREIGN KEY (código_localidad) REFERENCES Localidad(código_localidad)
);

CREATE TABLE País
(
  País_id VARCHAR(80) NOT NULL,
  Nombre_país VARCHAR(80) NOT NULL,
  Provincia_id VARCHAR(80) NOT NULL,
  PRIMARY KEY (País_id),
  FOREIGN KEY (Provincia_id) REFERENCES Provincia(Provincia_id),
  UNIQUE (Nombre_país)
);