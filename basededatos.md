## Base de datos de cotizacion del servicio del transporte 

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


