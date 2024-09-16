USE TYA;

IF OBJECT_id('cuentas') IS NOT NULL
DROP TABLE cuentas;

CREATE TABLE cuentas(
numero int identity,
documento char(8) NOT NULL,
nombre varchar(30),
saldo money
);

--error al ingresar un consecutivo con campo identity
INSERT INTO cuentas  
VALUES 
(1, '25666777','Juan Perez',2500.50);


--Pasa ya que el campo con identity no se ingresa 
INSERT INTO  cuentas 
VALUES
('25666777','Juan Perez', 2500.50);

INSERT INTO cuentas (documento,saldo)
VALUES
('8160358',15600);

--Ingresar un campo 'error'
INSERT INTO  cuentas (error, numero, documento, nombre, saldo)
VALUES
(5,'28999777','Luis Lopez', 34000);

--Intente ingresar un registro listando 3 campos y colocando 4 valores (error)
INSERT INTO  cuentas (documento, nombre,saldo)
VALUES 
('3333333','Juan Lopez',8600,'cumplido');

 --Intente ingresar un registro sin valor para el campo "documento" (error)
 INSERT INTO cuentas
 VALUES
 ('Pepito Perez',9800);

 SELECT * FROM cuentas;

