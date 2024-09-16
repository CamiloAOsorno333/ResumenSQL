USE TYA;

IF OBJECT_ID('alumnos') IS NOT NULL
DROP TABLE  alumnos;

CREATE TABLE alumnos(
apellido varchar(30),
nombre varchar(30),
documento char(8),
domicilio varchar(30),
fechaIngreso datetime,
fechaNacimiento datetime
);

set dateformat 'dmy';

INSERT INTO alumnos (apellido, nombre, documento, domicilio,fechaIngreso, fechaNacimiento)
VALUES (
'Gonzalez','Ana','2222222','Colon 123','10-08-1990','15/02/1972'
);

INSERT INTO alumnos (apellido, nombre, documento,domicilio, fechaIngreso,fechaNacimiento)
VALUES 
('Juarez','Bernardo','2555555','Sucre 456','03-03-1991','15/02/1972');

INSERT INTO alumnos(apellido,nombre,documento, domicilio, fechaIngreso,fechaNacimiento)
VALUES 
('Perez','Laura','266666','Bulnes 345','03-03-91',null);

/*INSERT INTO alumnos(apellido,nombre,documento, documento, fechaIngreso,fechaIngreso)
VALUES 
('Lopez','Carlos','27777','Sarmiento 1254','03-15-90','null');*/

SELECT * FROM alumnos WHERE fechaIngreso < '01-01-91';

SELECT * FROM alumnos WHERE fechaNacimiento is  NULL;

 
/*INSERT INTO alumnos(apellido,nombre,documento, documento, fechaIngreso,fechaIngreso)
VALUES 
('Rosas','Romina','2888888','Avellaneda 487','03151990','null');*/

set dateformat 'mdy';

INSERT INTO alumnos(apellido,nombre,documento, documento, fechaIngreso,fechaIngreso)
VALUES 
('Lopez','Carlos','27777','Sarmiento 1254','03-15-90','null');
