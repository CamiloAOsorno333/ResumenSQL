USE TYA;

IF OBJECT_ID('libros') IS NOT NULL
DROP TABLE libros;

CREATE TABLE libros(
codigo int identity, 
titulo varchar(40) NOT NULL,
autor varchar(20) DEFAULT 'Desconocido',
editorial varchar(20),
precio decimal(6,2),
primary key (codigo),
);

INSERT INTO libros (titulo,autor,editorial,precio)
VALUES
('El aleph','Borges','Emece',25.33);

INSERT INTO libros 
VALUES
('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);

INSERT INTO libros(titulo,autor,editorial,precio)
VALUES
('Alicia en país de las maravillas','Lewis carroll','Emece',19.95);

SELECT titulo,autor,precio, FLOOR(precio) AS abajo, CEILING(precio) AS arriba FROM  libros;

SELECT titulo,autor,precio, FLOOR(precio) AS abajo FROM libros;

SELECT titulo,autor,precio, CEILING(precio) AS abajo FROM libros;