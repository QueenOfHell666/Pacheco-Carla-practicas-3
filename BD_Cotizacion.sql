/* SQL -> Structured Query Language */
CREATE DATABASE IF NOT EXISTS BD_Cotizacion_Servicio_de_Transporte;

USE BD_Cotizacion_Servicio_de_Transporte;

CREATE TABLE client
(
client_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
user_name VARCHAR(250),
email VARCHAR (255),
rfc CHAR (13) NOT NULL,
home_fiscal VARCHAR (300) NOT NULL,
cp CHAR (5),
phone VARCHAR (20) NOT NULL,
productI INTEGER UNSIGNED,
FOREIGN KEY(productI)
    REFERENCES product(product_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
transportI INTEGER UNSIGNED,
FOREIGN KEY(transportI)
    REFERENCES transport(transport_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
travelI INTEGER UNSIGNED,
FOREIGN KEY(travelI)
    REFERENCES travel(travel_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE product
(
product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
peso FLOAT,
dimensiones FLOAT,
typeofMerchandiseI INTEGER UNSIGNED,
FOREIGN KEY(typeofMerchandiseI)
    REFERENCES type_of_Merchandise(typeofMerchandise_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE transport 
(
transport_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
typeofTrucksI INTEGER UNSIGNED,
FOREIGN KEY(typeofTrucksI)
    REFERENCES type_of_Trucks(typeofTrucks_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE travel
(
travel_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
origin VARCHAR (300),
destination VARCHAR (300)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE type_of_Merchandise
(
  typeofMerchandise_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  TM_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO type_of_Merchandise (typeofMerchandise_id,TM_name ) VALUES
(1, 'Puertas'),
(2, 'Cortinas Metalicas Enrollables'),
(3, 'Material de Construccion'),
(4, 'Muebles');

CREATE TABLE type_of_Trucks(
  typeofTrucks_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  TP_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO type_of_Trucks (typeofTrucks_id,TP_name ) VALUES
(1, 'Camion'),
(2, 'Tres y Media'),
(3, 'Nissan'),
(4, 'Torton'),
(5, 'Trailers');

