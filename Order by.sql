USE TYA;

IF OBJECT_ID('visitas') IS NOT NULL
DROP TABLE  visitas;

CREATE TABLE visitas(
numero int identity,
nombre varchar(30) DEFAULT 'Anonimo',
mail varchar(50),
pais varchar(20),
fecha datetime, 
primary key(numero)
);

INSERT INTO visitas(nombre,mail,pais,fecha)
VALUES
('Ana Maria','Anamaria@hotmail.com','Argentina','2006-10-10 10:10'),
('Gustavo Gonzalez','gustavogonzalez@hotmail.com','Chile','2006-10-10 21:30'),
('Junacito','juanjoseperez@hotmail.com','Argentina', '2006-10-11 15:45'),
('Fabio Martinez','fabiomartinez@hotmail.com','Mexico','2006-10-10 10:10'),
('Fabiola Martinez','martinezfabiola@hotmail.com','Mexico','2006-09-12 20:45'),
('Juancito','Juncitoperez@hotmail.com','Argentina','2006-09-12 20:45'),
('Juancito','juanjoseperez@hotmail.com','Argentina','2006-09-12 16:20');

SELECT * FROM  visitas  ORDER BY fecha DESC;

/*5- Muestre el nombre del usuario, pais y el nombre del mes, ordenado por pais (ascendente) y nombre 
del mes (descendente)*/
SELECT nombre, pais, datename(month,fecha) FROM visitas ORDER BY  pais, datename(month,fecha) DESC;

/*6- Muestre el pais,mail, el mes, el día y la hora y ordene las visitas por nombre del mes, del día y la 
hora.*/
SELECT pais,mail,datename(month,fecha)mes, datename(day,fecha)dia,datename(hour,fecha)hora FROM visitas ORDER BY 3,4,5;

/*7- Muestre los mail, país, ordenado por país, de todos los que visitaron la página en octubre (4 
registros)*/

SELECT mail, pais FROM visitas WHERE datename(month,fecha)='October' order by 2;

