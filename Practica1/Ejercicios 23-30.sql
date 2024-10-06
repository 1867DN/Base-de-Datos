CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    fecha_registro DATE
);

INSERT INTO Clientes (id, nombre, apellido, email, fecha_registro)
VALUES
    (1, 'Ana', 'García', 'ana.garcia@hotmail.com', '2022-01-10'),
    (2, 'Luis', 'Fernández', 'luis.fernandez@gmail.com', '2022-02-15'),
    (3, 'Sofía', 'Ramírez', 'sofia.ramirez@yahoo.com', '2022-03-20'),
    (4, 'Diego', 'Sánchez', 'diego.sanchez@hotmail.com', '2022-04-25'),
    (5, 'Elena', 'Pérez', 'elena.perez@gmail.com', '2022-05-30');

/* "Consultas:"
23)
SELECT * FROM Clientes;

24)
SELECT * FROM Clientes
WHERE fecha_registro > '2022-01-01';

25)
SELECT * FROM Clientes
ORDER BY fecha_registro DESC;

26)
SELECT DISTINCT SUBSTR(email, INSTR(email, '@') + 1) AS dominio_email FROM Clientes;

27)SELECT * FROM Clientes
WHERE fecha_registro > '2022-01-01' AND apellido = 'García';

28)
SELECT * FROM Clientes
WHERE fecha_registro BETWEEN '2022-01-01' AND '2022-12-31';

29)
SELECT * FROM Clientes
WHERE nombre LIKE 'A%';

30)
SELECT * FROM Clientes
WHERE apellido IN ('García', 'Fernández');

*/