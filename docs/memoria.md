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
