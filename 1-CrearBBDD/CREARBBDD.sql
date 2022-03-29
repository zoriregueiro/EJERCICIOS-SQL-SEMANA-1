CREATE DATABASE datos_cliente;
-- creo la base de datos 

USE datos_cliente;
-- solicito usar esta base de datos

CREATE TABLE usuarios(
id_usuario INT UNSIGNED AUTO_INCREMENT ,
dni VARCHAR(9) UNIQUE,
telefono INT UNSIGNED,
email VARCHAR(100) UNIQUE,
nombre VARCHAR (50),
apellido VARCHAR (50),
pais VARCHAR(100),
ciudad VARCHAR(100),
cp INT UNSIGNED,
direccion  VARCHAR(100),
PRIMARY KEY (id_usuario)
);
-- creo la primera tabla con todas las columnas necesarias segun datos


