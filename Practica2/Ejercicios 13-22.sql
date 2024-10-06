CREATE TABLE productos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    fecha_lanzamiento DATE NOT NULL,
    proveedor_id INT,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id)
);

INSERT INTO productos (nombre, precio, categoria, fecha_lanzamiento, proveedor_id)
VALUES
    ('Laptop', 1200.00, 'Electrónica', '2021-01-01', NULL),
    ('Smartphone', 800.00, 'Electrónica', '2020-05-15', NULL),
    ('Cafetera', 50.00, 'Hogar', '2019-08-20', NULL),
    ('Libro', 20.00, 'Libros', '2022-03-10', NULL),
    ('Tablet', 300.00, 'Electrónica', '2021-06-01', 1),
    ('Aspiradora', 150.00, 'Hogar', '2020-11-20', 2),
    ('Monitor', 250.00, 'Electrónica', '2018-07-15', 3),
    ('Juego de Mesa', 30.00, 'Juegos', '2022-09-05', 4);
    
CREATE TABLE proveedores (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100)
);

INSERT INTO proveedores (nombre, contacto)
VALUES
    ('Proveedor A', 'contactoA@example.com'),
    ('Proveedor B', 'contactoB@example.com'),
    ('Proveedor C', 'contactoC@example.com'),
    ('Proveedor D', 'contactoD@example.com');

/* "Consultas:"
3)
SELECT * FROM Productos
WHERE (precio > 200.00 AND categoria = 'Electrónica') OR (precio < 50.00 AND categoria = 'Hogar');

4)
SELECT categoria, AVG(precio) AS precio_promedio FROM Productos
GROUP BY categoria
HAVING AVG(precio) > 100.00;

5)
SELECT * FROM Productos
ORDER BY precio DESC, nombre ASC;

6)
UPDATE Productos
SET precio = precio * 1.10
WHERE categoria = 'Electrónica' AND fecha_lanzamiento > '2020-01-01';

7)
DELETE FROM Productos
WHERE categoria = 'Libros' AND fecha_lanzamiento < '2020-01-01';

8)
SELECT nombre, precio FROM Productos
WHERE precio > (SELECT AVG(precio) FROM Productos);

9)
SELECT nombre, precio, RANK() OVER (ORDER BY precio DESC) AS ranking_precio FROM Productos;

10)
CREATE VIEW productos_electronica AS SELECT nombre, precio FROM Productos
WHERE categoria = 'Electrónica';

11)
SELECT nombre, precio FROM Productos p1
WHERE precio > (
    SELECT AVG(precio) 
    FROM Productos p2 
    WHERE p1.categoria = p2.categoria
);

12)
CREATE INDEX idx_id ON productos (id);
CREATE INDEX idx_nombre ON productos (nombre);
CREATE INDEX idx_precio ON productos (precio);
CREATE INDEX idx_categoria ON productos (categoria);
CREATE INDEX idx_fecha_lanzamiento ON productos (fecha_lanzamiento);
CREATE INDEX idx_proveedor_id ON productos (proveedor_id);

13)
SELECT nombre, precio FROM productos
WHERE precio > (SELECT AVG(precio) FROM productos);

14)
SELECT nombre, precio FROM productos p1
WHERE precio > (
    SELECT AVG(precio)
    FROM productos p2
    WHERE p1.categoria = p2.categoria
);

15)
SELECT nombre, precio FROM productos p1
WHERE precio > (
    SELECT MIN(precio)
    FROM productos p2
    WHERE p1.categoria = p2.categoria
);

16)
SELECT nombre, precio FROM productos p1
WHERE precio > (
    SELECT MAX(precio)
    FROM productos p2
    WHERE p1.categoria = p2.categoria
);

17)
SELECT nombre, precio FROM productos p1
WHERE precio = (
    SELECT MAX(precio)
    FROM productos p2
    WHERE p1.categoria = p2.categoria
);

18)
SELECT nombre, precio FROM productos p1
WHERE precio = (
    SELECT MIN(precio)
    FROM productos p2
    WHERE p1.categoria = p2.categoria
);

19)
SELECT nombre, precio FROM productos
WHERE precio > (SELECT AVG(precio) FROM productos);

20)
SELECT nombre, precio FROM productos
WHERE categoria = 'Electrónica'
AND precio > (SELECT AVG(precio) 
              FROM productos 
              WHERE categoria = 'Electrónica');

21)
SELECT nombre, precio FROM productos p1
WHERE precio > (
    SELECT AVG(precio)
    FROM productos p2
    WHERE p1.categoria = p2.categoria
)
AND fecha_lanzamiento > '2020-01-01';

22)
SELECT nombre, precio FROM productos p1
WHERE precio > (
    SELECT AVG(precio)
    FROM productos p2
    WHERE p1.categoria = p2.categoria
)
AND proveedor_id IS NOT NULL;

*/