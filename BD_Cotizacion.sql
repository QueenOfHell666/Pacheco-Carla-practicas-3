/* SQL -> Structured Query Language */
CREATE DATABASE IF NOT EXISTS BD_Cotizacion_Servicio_de_Transporte;

USE BD_Cotizacion_Servicio_de_Transporte;

CREATE TABLE client
(
user_name VARCHAR(250) PRIMARY KEY,
email VARCHAR (255),
rfc CHAR (13) NOT NULL,
home_fiscal VARCHAR (300) NOT NULL,
cp CHAR (5),
phone VARCHAR (20) NOT NULL,
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE product
(
product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
peso FLOAT
dimensiones FLOAT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE transport 
(
transport_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE travel
(
travel_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
origin VARCHAR (300),
destination VARCHAR (300),
clien_id ,
product_id,
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

