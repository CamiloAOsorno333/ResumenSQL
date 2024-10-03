USE TYA;

IF OBJECT_ID ('libros') IS NOT NULL
DROP TABLE libros;

CREATE TABLE libros (
codigo int identity,
titulo varchar(40) not null,
autor varchar (20) default 'Desconocido',
editorial varchar(20),
precio decimal (6,2),
cantidad tinyint default 0,
primary key (codigo)
);

INSERT INTO libros(titulo,autor,editorial,precio)
VALUES
('El aleph', 'Borges', 'Emec', 25);

INSERT INTO libros
VALUES
('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);

INSERT INTO  libros(titulo,autor,editorial,precio,cantidad)
VALUES
('Alicia en el País de las maravillas','Lewis Carroll','Emec',15,50);

--Mostramos sólo los 12 primeros caracteres de los títulos de los libros y sus autores, empleando la función "substring()":

SELECT SUBSTRING(titulo,1,12) AS titulo FROM libros;

--Mostramos sólo los 12 primeros caracteres de los títulos de los libros y sus autores, ahora empleando la función "left()":

SELECT LEFT(titulo,12) AS titulo FROM  libros;

/*Mostramos los títulos de los libros y sus precios convirtiendo este último a cadena de caracteres con un solo decimal, 
empleando la función "str":*/

SELECT titulo,str(precio,6,1) FROM libros;

/*--Mostramos los títulos de los libros y sus precios convirtiendo este último a cadena de caracteres especificando 
un solo argumento:*/

SELECT titulo, str(precio) AS PRECIO FROM libros;

/*Mostramos los títulos, autores y editoriales de todos libros, al último campo lo queremos en mayúsculas:*/

SELECT titulo, autor, UPPER(editorial) AS EDITORIAL FROM libros;
