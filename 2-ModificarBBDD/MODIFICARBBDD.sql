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

ALTER TABLE usuarios DROP COLUMN pais, DROP COLUMN ciudad, DROP COLUMN cp, DROP COLUMN direccion;
-- elimino las columnas relacionadas con la direccion

CREATE TABLE direcciones(
id_direccion INT UNSIGNED AUTO_INCREMENT,
pais VARCHAR(100),
ciudad VARCHAR(100),
cp INT UNSIGNED,
direccion  VARCHAR(100),
id_usuario INT UNSIGNED,
FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
PRIMARY KEY (id_direccion)
);
-- creo una tabla con las columnas para guardar los datos de las direcciones, y la enlazo con la primera tabla a por el id- de usuario


