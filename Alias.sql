USE TYA;

IF OBJECT_ID('libros') IS NOT NULL
DROP TABLE libros;

CREATE TABLE libros (
codigo int identity,
titulo varchar(40) NOT NULL, 
autor varchar(40) NOT NULL, 
editorial varchar(20),
precio decimal(6,2),
cantidad tinyint default 0,
primary key (codigo)
);

INSERT INTO  libros (titulo, autor, editorial, precio, cantidad)
VALUES 
('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);

INSERT INTO  libros (titulo, autor, editorial, precio)
VALUES 
('El aleph','Borges','Emece',25);

INSERT INTO libros (titulo,autor, editorial,precio,cantidad)
VALUES
('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

SELECT precio * cantidad  AS MONTO_TOTAL FROM libros;

SELECT titulo, autor, precio, precio*0.1 AS DESCUENTO, precio-(precio*0.1) AS 'precio final' FROM libros WHERE editorial= 'Emece';

SELECT titulo+'-'+autor  AS "Titulo y Autor" FROM libros;