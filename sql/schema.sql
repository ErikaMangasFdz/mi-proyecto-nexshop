CREATE DATABASE IF NOT EXISTS nexshop_db;
USE nexshop_db;

-- 1. SEDES
CREATE TABLE sedes (
    id_sede INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL, -- Cambiado a VARCHAR para evitar el error de truncado
    ciudad VARCHAR(100) NOT NULL
);

-- 2. EMPLEADOS
CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(9) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    email_corporativo VARCHAR(100) UNIQUE NOT NULL,
    fecha_incorporacion DATE NOT NULL,
    id_sede INT,
    FOREIGN KEY (id_sede) REFERENCES sedes(id_sede)
);

-- 3. CATEGORÍAS Y SUBCATEGORÍAS
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE subcategorias (
    id_subcategoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- 4. PRODUCTOS
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    referencia VARCHAR(50) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    pvp_actual DECIMAL(10,2) NOT NULL,
    id_subcategoria INT NOT NULL,
    FOREIGN KEY (id_subcategoria) REFERENCES subcategorias(id_subcategoria)
);

-- 5. STOCK POR UBICACIÓN
CREATE TABLE stock (
    id_sede INT,
    id_producto INT,
    cantidad INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id_sede, id_producto),
    FOREIGN KEY (id_sede) REFERENCES sedes(id_sede),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- 6. CLIENTES
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    contrasena VARCHAR(255),
    fecha_nacimiento DATE,
    puntos_fidelizacion INT DEFAULT 0
);

-- 7. VENTAS PRESENCIALES
CREATE TABLE ventas_presenciales (
    id_venta_presencial INT AUTO_INCREMENT PRIMARY KEY,
    id_sede INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_sede) REFERENCES sedes(id_sede),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

-- 8. DETALLE DE VENTAS PRESENCIALES
CREATE TABLE detalle_ventas_presenciales (
    id_venta_presencial INT,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_aplicado DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_venta_presencial, id_producto),
    FOREIGN KEY (id_venta_presencial) REFERENCES ventas_presenciales(id_venta_presencial),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
