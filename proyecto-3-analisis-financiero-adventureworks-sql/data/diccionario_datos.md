# Diccionario de Datos

## ventas_2017
- numero_pedido: Identificador único del pedido
- fecha_pedido: Fecha de realización del pedido
- clave_producto: ID del producto (relaciona con productos)
- clave_territorio: ID del territorio (relaciona con territorios)
- cantidad_pedido: Unidades vendidas

## productos
- clave_producto: ID único del producto
- nombre_producto: Nombre descriptivo
- precio_producto: Precio de venta unitario
- costo_producto: Costo unitario

## territorios
- clave_territorio: ID único del territorio
- pais: Nombre del país
- continente: Continente al que pertenece

## campanas
- clave_territorio: ID del territorio
- costo_campana: Gasto en marketing