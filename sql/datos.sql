USE nexshop_db;

-- Desactivamos temporalmente la revisión de claves foráneas
SET FOREIGN_KEY_CHECKS = 0;

-- 1. Insertar Sedes (Aseguramos que coincida con el ENUM exacto)
INSERT INTO sedes (id_sede, nombre, tipo, ciudad) VALUES 
(1, 'Sede Central Valencia', 'ALMACEN', 'Valencia'),
(2, 'Tienda Valencia', 'TIENDA', 'Valencia'),
(3, 'Tienda Madrid', 'TIENDA', 'Madrid');

-- 2. Insertar Categorías y Subcategorías
INSERT INTO categorias (id_categoria, nombre) VALUES (1, 'Informática');
INSERT INTO subcategorias (id_subcategoria, nombre, id_categoria) VALUES (1, 'Portátiles', 1);

-- 3. Insertar Productos
INSERT INTO productos (id_producto, referencia, nombre, pvp_actual, id_subcategoria) VALUES
(1, 'REF-PORT-001', 'Portátil Gaming Nex', 899.99, 1),
(2, 'REF-PORT-002', 'Portátil Oficina Slim', 499.99, 1);

-- 4. Insertar Empleados
INSERT INTO empleados (id_empleado, dni, nombre, email_corporativo, fecha_incorporacion, id_sede) VALUES
(1, '12345678A', 'Ana Ferrer', 'a.ferrer@nexshop.es', '2015-01-15', 1),
(2, '87654321B', 'Sergio Blanco', 's.blanco@nexshop.es', '2018-03-10', 1),
(3, '11111111C', 'Vendedor Uno', 'vendedor1@nexshop.es', '2020-05-01', 2);

-- 5. Insertar Clientes
INSERT INTO clientes (id_cliente, nombre, apellidos, email, contrasena, fecha_nacimiento) VALUES
(1, 'Carlos', 'Sánchez', 'carlos.sanz@gmail.com', 'scrypt_password_123', '1990-05-12'),
(2, 'Ana', 'Gómez', 'ana.gomez@hotmail.com', 'scrypt_password_456', '1988-11-23');

-- 6. Insertar Ventas Presenciales de prueba
INSERT INTO ventas_presenciales (id_venta_presencial, id_sede, id_empleado) VALUES (1, 2, 3);
INSERT INTO detalle_ventas_presenciales (id_venta_presencial, id_producto, cantidad, precio_aplicado) VALUES (1, 1, 1, 899.99);

-- Volvemos a activar la seguridad de claves foráneas
SET FOREIGN_KEY_CHECKS = 1;
