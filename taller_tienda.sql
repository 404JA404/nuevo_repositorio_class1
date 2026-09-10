
-- TALLER: CONSULTAS BASICAS EN MYSQL


-- PARTE A: PREPARACION

CREATE DATABASE tienda;

USE tienda;

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    precio DECIMAL(10,2),
    stock INT
);

-- INSERTAR 6 PRODUCTOS

INSERT INTO productos (nombre, categoria, precio, stock)
VALUES
('Laptop', 'Tecnologia', 2500000, 5),
('Mouse', 'Tecnologia', 80000, 15),
('Teclado', 'Tecnologia', 120000, 8),
('Silla Gamer', 'Muebles', 650000, 4),
('Audifonos', 'Audio', 180000, 10),
('Monitor', 'Tecnologia', 750000, 6);

-- PARTE B: SELECT

-- 1. Mostrar todos los productos
SELECT * FROM productos;

-- 2. Mostrar solamente nombre y precio
SELECT nombre, precio
FROM productos;

-- 3. Mostrar productos con precio mayor a 50000
SELECT *
FROM productos
WHERE precio > 50000;

-- 4. Mostrar productos con stock menor o igual a 10
SELECT *
FROM productos
WHERE stock <= 10;

-- 5. Mostrar productos ordenados de mayor a menor precio
SELECT *
FROM productos
ORDER BY precio DESC;

-- PARTE C: INSERT

-- Agregar 2 productos nuevos
INSERT INTO productos (nombre, categoria, precio, stock)
VALUES
('Celular', 'Tecnologia', 1800000, 7),
('Escritorio', 'Muebles', 450000, 12);

-- Comprobar que fueron registrados
SELECT *
FROM productos;

-- PARTE D: UPDATE

-- 1. Cambiar el precio de un producto
UPDATE productos
SET precio = 2700000
WHERE id = 1;

-- 2. Actualizar el stock de otro producto
UPDATE productos
SET stock = 20
WHERE id = 2;

-- 3. Verificar los cambios
SELECT * FROM productos WHERE id = 1;
SELECT * FROM productos WHERE id = 2;

-- PARTE E: DELETE

-- Comprobar primero el producto que se va a eliminar
SELECT *
FROM productos
WHERE id = 3;

-- Eliminar el producto
DELETE FROM productos
WHERE id = 3;

-- Comprobar que fue eliminado
SELECT *
FROM productos;

-- RETO ADICIONAL

-- 1. Encontrar el producto más caro
SELECT *
FROM productos
ORDER BY precio DESC
LIMIT 1;

-- 2. Mostrar los 3 productos con menor stock
SELECT *
FROM productos
ORDER BY stock ASC
LIMIT 3;

-- 3. Mostrar productos de una categoría específica
SELECT *
FROM productos
WHERE categoria = 'Tecnologia'
ORDER BY precio ASC;

-- 4. Cambiar simultáneamente precio y stock
UPDATE productos
SET precio = 90000,
    stock = 25
WHERE id = 2;

-- 5. Insertar tres productos utilizando una sola sentencia INSERT
INSERT INTO productos (nombre, categoria, precio, stock)
VALUES
('Tablet', 'Tecnologia', 900000, 9),
('Impresora', 'Tecnologia', 600000, 5),
('Lampara', 'Hogar', 70000, 15);

-- finalmetne se veran todos los productos
SELECT * FROM productos;
