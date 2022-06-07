/* Reglas de Negocio - Sentencias CRUD */



 /*## Cliente:
 1. Crear User del cliente 
 2. Leer cliente 
 3. Actualizar datos 
 4. eliminar user*/

 /*> ## Producto 

 1. Crear producto 
 2. Leer todos los productos 
 3. Leer un producto 
 4. Actualizar producto 
 5. Eliminar producto */




 INSERT INTO travel ( travel_id, origin , destination) VALUES
(1,'Yucatan', 'Puebla'),
(2,'CDMX', 'Jalisco');
SELECT * FROM travel;   

SELECT * FROM travel WHERE origin = "Yucatan";

UPDATE travel SET destination = "CDMX" WHERE travel_id = 2;

DELETE FROM travel WHERE travel_id = 2;



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
(112,1),
(123,2),
(134,3),
(145,4),
(156,5);


SELECT * FROM transport;

UPDATE transport SET transport_id = 113 WHERE typeofTrucksI= 2 ;

DELETE FROM transport WHERE transport_id = 156;



INSERT INTO product (product_id , peso , dimensiones , typeofMerchandiseI) VALUES
(1 ,'2 t', '3.0 x 8.3 ft',2 );

SELECT * FROM product;

UPDATE product SET dimensiones = '4.0 x 9.3 ft' WHERE product_id= 1 ;

DELETE FROM product WHERE product_id = 1;

INSERT INTO client (client_id , user_name , email , rfc, home_fiscal, cp,phone, productI,transportI,travelI) VALUES
(1, 'Empresa', 'cortinasmex@gmail.com','MELM8305281HO','C. Sabino 385,Atlampa,Cuauhtémoc,Ciudad de México, CDMX','06450','5555476549',1,112,1 );

SELECT * FROM client;

UPDATE client SET cp = '56783' WHERE client_id= 1 ;

DELETE FROM client WHERE client_id = 1;

