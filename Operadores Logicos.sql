/*Trabaje con la tabla llamada "medicamentos" de una farmacia.
1- Elimine la tabla, si existe:
 if object_id('medicamentos') is not null
  drop table medicamentos;*/

  IF OBJECT_ID('medicamentos') IS NOT NULL 
  DROP TABLE  medicamentos;

/*
2- Cree la tabla con la siguiente estructura:
 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );*/

 CREATE TABLE medicamentos(
 codigo int identity,
 nombre varchar(20),
 laboratorio varchar(20),
 precio decimal(5,2),
 cantidad tinyint,
 primary key(codigo)
 );

 /*
3- Ingrese algunos registros:
 insert into medicamentos
  values('Sertal','Roche',5.2,100);
 insert into medicamentos
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos
  values('Amoxidal jarabe','Bayer',5.10,250); */

  INSERT INTO medicamentos (nombre,laboratorio,precio,cantidad) 
  VALUES
  ('Sertal','Roche',5.2,100),
  ('Buscapina','Roche',4.10,200 ),
  ('Amoxidal 500','Bayer',15.60,100 ),
  ('Paracetamol 500','Bago',1.90,200),
  ('Bayaspirina','Bayer',2.10,150),
  ('Amoxidal','Bayer',12.6,250);


  /*
4- Recupere los códigos y nombres de los medicamentos cuyo laboratorio sea 'Roche' y cuyo precio sea 
menor a 5 (1 registro cumple con ambas condiciones)*/

SELECT * FROM medicamentos WHERE (laboratorio='Roche' AND precio<5)


/*
5- Recupere los medicamentos cuyo laboratorio sea 'Roche' o cuyo precio sea menor a 5 (4 registros):
Note que el resultado es diferente al del punto 4, hemos cambiado el operador de la sentencia 
anterior.*/
 
 select * from medicamentos  where laboratorio='Roche' or  precio<5;

/*
6- Muestre todos los medicamentos cuyo laboratorio NO sea "Bayer" y cuya cantidad sea=100 (1 
registro)*/

SELECT * FROM medicamentos WHERE NOT (laboratorio='Bayer' AND cantidad=100);


/*
7- Muestre todos los medicamentos cuyo laboratorio sea "Bayer" y cuya cantidad NO sea=100 (2 registros):
Analice estas 2 últimas sentencias. El operador "not" afecta a la condición a la cual antecede, no a 
las siguientes. Los resultados de los puntos 6 y 7 son diferentes.*/
 
 select * from medicamentos where laboratorio='Bayer' and  not cantidad=100;

/*
8- Elimine todos los registros cuyo laboratorio sea igual a "Bayer" y su precio sea mayor a 10 (1 
registro eliminado)*/

DELETE FROM medicamentos WHERE laboratorio='Bayer' AND precio>10;

/*
9- Cambie la cantidad por 200, a todos los medicamentos de "Roche" cuyo precio sea mayor a 5 (1 
registro afectado)*/

UPDATE medicamentos SET precio=200 WHERE precio>5;

/*
10- Borre los medicamentos cuyo laboratorio sea "Bayer" o cuyo precio sea menor a 3 (3 registros 
borrados)*/

DELETE FROM medicamentos WHERE laboratorio='Bayer' OR precio<3;

SELECT * FROM medicamentos;