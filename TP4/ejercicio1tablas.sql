CREATE TABLE ALUMNO
(
  Cod_Matricula INT NOT NULL auto_increment,
  Nombre varchar(50) NOT NULL,
  DNI INT NOT NULL UNIQUE,
  Fecha_Nac date NOT NULL,
  EMail varchar(80) NOT NULL,
  PRIMARY KEY (Cod_Matricula)
);

CREATE TABLE CURSO
(
  Cod_Curso INT NOT NULL auto_increment,
  Nombre varchar(80) NOT NULL,
  PRIMARY KEY (Cod_Curso)
);

CREATE TABLE PROFESOR
(
  Profesor_Id INT NOT NULL auto_increment,
  Nombre varchar(40) NOT NULL,
  Especialidad varchar(40) NOT NULL unique,
  EMail varchar(50) NOT NULL,
  PRIMARY KEY (Profesor_Id)
);

CREATE TABLE Realiza_Curso
(
  Cod_Matricula INT NOT NULL,
  Cod_Curso INT NOT NULL,
  PRIMARY KEY (Cod_Matricula, Cod_Curso),
  FOREIGN KEY (Cod_Matricula) REFERENCES ALUMNO(Cod_Matricula),
  FOREIGN KEY (Cod_Curso) REFERENCES CURSO(Cod_Curso)
);

CREATE TABLE Dictado_por
(
  Cod_Curso INT NOT NULL,
  Profesor_Id INT NOT NULL,
  PRIMARY KEY (Cod_Curso, Profesor_Id),
  FOREIGN KEY (Cod_Curso) REFERENCES CURSO(Cod_Curso),
  FOREIGN KEY (Profesor_Id) REFERENCES PROFESOR(Profesor_Id)
);
