USE TYA;

IF OBJECT_ID('articulos') IS NOT NULL
DROP TABLE articulos;

CREATE TABLE  articulos (
codigo int identity,
nombre varchar(20),
descripcion varchar(30),
precio smallmoney,
cantidad tinyint default 0,
primary key(codigo)
);

INSERT INTO articulos (nombre,descripcion,precio,cantidad)
VALUES
('impresora','epson stylus c45',400.80,20);

INSERT INTO articulos (nombre,descripcion,precio)
VALUES
('impresora','epson stylus c85',500);

INSERT INTO articulos (nombre,descripcion,precio)
VALUES
('monitor','Sansumg 14',800);

INSERT INTO articulos (nombre,descripcion,precio,cantidad)
VALUES
('teclado','ingles biswall',100,50);

UPDATE articulos SET  precio=precio-(precio* 0.15);

SELECT * FROM articulos;

SELECT codigo+'-'+nombre+'-'+descripcion+'-'+precio+'-'+cantidad FROM articulos;

SELECT nombre+','+descripcion FROM articulos;

UPDATE articulos SET cantidad=cantidad-(cantidad-5);






