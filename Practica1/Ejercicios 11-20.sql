CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    categoria VARCHAR(100),
    precio DECIMAL(10, 2),
    stock INT
);

INSERT INTO Productos (id, nombre, categoria, precio, stock)
VALUES
    (1, 'Teclado', 'Electronica', 54.50, 100),
    (2, 'Monitor', 'Electronica', 115.99, 50),
    (3, 'Mouse', 'Electronica', 34.99, 200),
    (4, 'Camiseta', 'Ropa', 13.87, 300),
    (5, 'Pizza', 'Comida', 8.99, 40);

/* "Consultas:"
13)
SELECT * FROM Productos;

14)
WHERE categoria = 'Electronica';

15)
SELECT * FROM Productos
ORDER BY precio ASC;

16)
SELECT DISTINCT categoria FROM Productos;

17)
SELECT * FROM Productos
WHERE precio > 50 AND categoria = 'Electronica';

18)
SELECT * FROM Productos
WHERE precio BETWEEN 10 AND 100;

19)
SELECT * FROM Productos
WHERE nombre LIKE '%Camiseta%';

20)
SELECT * FROM Productos
WHERE categoria IN ('Electronica', 'Ropa');

*/