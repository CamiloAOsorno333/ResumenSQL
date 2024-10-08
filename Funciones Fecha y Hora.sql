USE TYA;

IF OBJECT_ID('empleados') IS NOT NULL
DROP TABLE empleados;

CREATE TABLE empleados(
nombre varchar(30)not null,
apellido varchar(20) NOT NULL,
documento char(8),
fechanacimiento datetime,
fechaingreso datetime,
sueldo decimal(6,2),
primary key(documento)
);

INSERT  INTO empleados 
VALUES ('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);

INSERT INTO empleados
VALUES ('Carlos','Caseres','2555555','1978/02/06','1998/05/05',309);

INSERT INTO empleados
VALUES ('Francisco','Garcia','266666','1978/10/15','1998/10/02',250.68);

INSERT INTO empleados
VALUES('Gabriela','Garcia','27777','1978/10/25','2000/12/22',300.25);

INSERT INTO empleados 
VALUES('Luis','Lopez','311111','1987/02/10','2000/08/01',350.98);


/*4- Muestre nombre y apellido concatenados, con el apellido en letras mayúsculas, el documento 
precedido por "DNI Nº " y el sueldo precedido por "$ ".*/

 select nombre+space(1)+upper(apellido) as nombre,
  stuff(documento,1,0,'DNI Nº ') as documento,
  stuff(sueldo,1,0,'$ ') as sueldo from empleados;

/*5- Muestre el documento y el sueldo redondeado hacia arriba y precedido por "$ ".*/

select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

/*6- Muestre los nombres y apellidos de los empleados que cumplen años en el mes "october" (3 
registros)*/

SELECT nombre,apellido FROM  empleados WHERE DATENAME(MONTH,fechaingreso)= 'october';

/*7- Muestre los nombres y apellidos de los empleados que ingresaron en un determinado año (2 
registros).*/

SELECT nombre,apellido FROM empleados WHERE DATEPART(year,fechaingreso)=2000;