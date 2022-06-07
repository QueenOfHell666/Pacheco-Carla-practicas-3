## Logica de Negocios 
### Base de datos de cotizacion del servicio del transporte 

>ENTIDADES :

- Cliente
- Producto
- Transporte
- Viaje 

>RELACIONES
1. El cliente tiene un producto (1-M)
2. El cliente elige un transporte (1-M)
3. El transporte realiza un viaje (M-M)

>ATRIBUTOS 

  Cliente:
 - Nombre
 - RFC "UQ"
 - Correo "UQ"
 - Telefono "UQ"
 - Domiciilio fiscal 
 - CP

 Producto:

 - Tipo de mercancia "CAT"
 - Peso
 - Dimensiones 
 
 (CAT)  Tipo de Mercancia:
 1. Cortinas Metalicas
 2. Puertas
 3. Material de construccion 
 4. Muebles 

 Transporte: 
 - Camion "CAT"

 (CAT) Camion:
 1. Tres y Media
 2. Nissan
 3. Torton
 4. Trailer

 Viaje:
 - Origen 
 - Destino 

 ![Image](./Imagen/Untitled%20Diagram.jpg)


 >## Regla de Negocio

 ## Cliente:
 1. Crear ciente
 2. Leer cliente 
 3. Actualizar datos 
 4. eliminar cliente

 > ## Producto 

 1. Crear producto 
 2. Leer todos los productos 
 3. Leer un producto 
 4. Actualizar producto 
 5. Eliminar producto 

 > ## Transporte 
 1. Crear transporte 
 2. Leer todos los transportes 
 3. Leer un transporte 
 4. Actualizar un transporte 

 > ## Vaijes 

 1. Crear viaje 
 2. leer todos los viajes
 3. leer un viaje 
 4. actulizar viaje 
 5. eliminar viaje 
 


