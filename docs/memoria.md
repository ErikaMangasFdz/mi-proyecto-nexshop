# Proyecto NexShop Group ###

## Alumna ###
Erika Mangas Fernández

## 1. Introducción ###

El objetivo del proyecto es analizar, diseñar e implementar una base de datos para la empresa NexShop Group S.A., identificando entidades, atributos y relaciones a partir de la información proporcionada por el cliente.

## 2. Entidades identificadas ###

### Cliente ###

La entidad Cliente almacena los datos de los usuarios registrados.

Atributos:
- id_cliente
- nombre
- apellidos
- email
- password
- fecha_nacimiento

### Dirección ###

La entidad Dirección almacena las direcciones asociadas a los clientes.

Atributos:
- id_direccion
- calle
- numero
- piso
- codigo_postal
- ciudad
- pais

### Producto ###

La entidad Producto almacena los artículos comercializados por NexShop.

Atributos:
- id_producto
- nombre
- descripcion

### Categoria

La entidad Categoria permite organizar los productos en grandes grupos.

Atributos:
- id_categoria
- nombre

### Subcategoria

La entidad Subcategoria permite clasificar los productos dentro de una categoria.

Atributos:
- id_subcategoria
- nombre

### Proveedor

La entidad Proveedor almacena las empresas que suministran productos a NexShop.

Atributos:
- id_proveedor
- nombre

### Empleado

La entidad Empleado almacena los trabajadores de la empresa.

Atributos:
- id_empleado
- nombre
- dni
- email_corporativo
- fecha_incorporacion

### Ubicacion

La entidad Ubicacion representa las tiendas fisicas y el almacen central.

Atributos:
- id_ubicacion
- nombre
- tipo

### Pedido

La entidad Pedido almacena las compras realizadas por clientes registrados.

Atributos:
- id_pedido
- fecha
- estado

### TicketVenta

La entidad TicketVenta almacena las ventas realizadas en tiendas fisicas.

Atributos:
- id_ticket
- fecha

### TicketIncidencia

La entidad TicketIncidencia almacena las consultas y reclamaciones de clientes.

Atributos:
- id_ticket_incidencia
- asunto
- descripcion
- fecha_apertura
- fecha_cierre
- estado
- resolucion
