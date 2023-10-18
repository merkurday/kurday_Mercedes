CREATE TABLE País
(
  País_ID INT NOT NULL auto_increment,
  Nombre_País varchar(50) NOT NULL,
  PRIMARY KEY (País_ID)
);

CREATE TABLE Provincia
(
  Provincia_ID INT NOT NULL auto_increment,
  Nombre_Provincia varchar(50) NOT NULL,
  País_ID INT NOT NULL,
  PRIMARY KEY (Provincia_ID),
  FOREIGN KEY (País_ID) REFERENCES País(País_ID)
);

CREATE TABLE Localidad
(
  Codigo_localidad INT NOT NULL auto_increment,
  Nombre varchar(50) NOT NULL,
  Codigo_Postal INT NOT NULL unique,
  Provincia_ID INT NOT NULL,
  País_ID INT NOT NULL,
  PRIMARY KEY (Codigo_localidad),
  FOREIGN KEY (Provincia_ID) REFERENCES Provincia(Provincia_ID),
  FOREIGN KEY (País_ID) REFERENCES País(País_ID)
);

CREATE TABLE Empleado
(
  Empleado_ID INT NOT NULL auto_increment,
  DNI INT NOT NULL unique,
  Nombre varchar(80) NOT NULL,
  Telefono INT NOT NULL,
  Email varchar(80) NOT NULL,
  Fecha_alta datetime NOT NULL,
  Codigo_localidad INT NOT NULL,
  PRIMARY KEY (Empleado_ID),
  FOREIGN KEY (Codigo_localidad) REFERENCES Localidad(Codigo_localidad)
);
