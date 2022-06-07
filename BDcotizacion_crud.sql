/* Reglas de Negocio - Sentencias CRUD */

 INSERT INTO travel ( travel_id, origin , destination) VALUES
(11,'Yucatan', 'Puebla'),
(22,'CDMX', 'Jalisco'),
(33,'Guadalajara', 'Veracruz'),
(44,'Chiapas', 'Toluca'),
(55,'Toluca', 'Monterrey');

SELECT * FROM travel;   

SELECT * FROM travel WHERE origin = "Yucatan";

UPDATE travel SET destination = "CDMX" WHERE travel_id = 22;

DELETE FROM travel WHERE travel_id = 22;



 INSERT INTO type_of_Merchandise (typeofMerchandise_id,TM_name ) VALUES
(1,'Puertas'),
(2,'Cortinas Metalicas Enrollables'),
(3,'Material de Construccion'),
(4,'Muebles');

SELECT * FROM type_of_Merchandise;

UPDATE type_of_Merchandise SET TM_name = "Cortinas" WHERE typeofMerchandise_id = 4;

DELETE FROM type_of_Merchandise WHERE typeofMerchandise_id = 4;


INSERT INTO type_of_Trucks (typeofTrucks_id,TP_name ) VALUES
(1, 'Camion'),
(2, 'Tres y Media'),
(3, 'Nissan'),
(4, 'Torton'),
(5, 'Trailers');

SELECT * FROM type_of_Trucks;

UPDATE type_of_Trucks SET TP_name = "Doble Cabina" WHERE typeofTrucks_id = 2;

DELETE FROM type_of_Trucks WHERE typeofTrucks_id = 4;



INSERT INTO transport (transport_id, typeofTrucksI) VALUES 
(111,1),
(222,2),
(333,3),
(444,4),
(555,5);


SELECT * FROM transport;

UPDATE transport SET transport_id = 113 WHERE typeofTrucksI= 2 ;

DELETE FROM transport WHERE transport_id = 555;



INSERT INTO product (product_id , peso , dimensiones , typeofMerchandiseI) VALUES
(11111 ,'2 t', '3.0 x 8.3 ft',2 ),
(22222 ,'10 Kg/m2', '110 mm x 115 mm',2 ),
(33333 ,'240 L', '1.40 y 1.80 metros',4 ),
(44444 ,'10.8 Kg/m²', '7.000mm * 5.000mm',1 ),
(55555 ,' 1400kg/m3', 'Cemento',3 );

SELECT * FROM product;

UPDATE product SET dimensiones = '4.0 x 9.3 ft' WHERE product_id= 11111 ;

DELETE FROM product WHERE product_id = 11111;

INSERT INTO client (client_id , user_name , email , rfc, home_fiscal, cp,phone, productI,transportI,travelI) VALUES
(1, 'cortinasmex', 'cortinasmex@gmail.com','MELM8305281HO','C. Sabino 385,Atlampa,Cuauhtémoc,Ciudad de México, CDMX','06450','5555476549',11111,111,11 ),
(2, 'merik', 'merik@gmail.com','PADM8607221HO','C.2 118, Granjas San Antonio,Iztapalapa,Ciudad de México, CDMX',' 09070 ','5553339900',22222,222,22 ),
(3, 'liverpool', 'liverpool@gmail.com','CAHE6304121HO','Av. Cuauhtémoc 462,Narvarte Poniente,Benito Juárez,Ciudad de México','03020','5556361100',33333,333,33 ),
(4, 'sears', 'sears@gmail.com','DELP9902211HO','Montecito 38-2do.Piso,Nápoles,Benito Juárez,Ciudad de México','03810','5553406700',55555,444,44 ),
(5, 'merik', 'merik@gmail.com','PADM8607221HO','C.2 118, Granjas San Antonio,Iztapalapa,Ciudad de México, CDMX','09070','5553339900',44444,555,55);

SELECT * FROM client;

UPDATE client SET cp = '56783' WHERE client_id= 1 ;

DELETE FROM client WHERE client_id = 1;

