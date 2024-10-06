CREATE TABLE empleados (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    fecha_contratacion DATE NOT NULL,
    jefe_id INT,
    FOREIGN KEY (jefe_id) REFERENCES empleados(id)
);

INSERT INTO empleados (nombre, salario, departamento, fecha_contratacion, jefe_id)
VALUES
    ('Juan Pérez', 55000, 'Ventas', '2021-01-01', NULL),
    ('María López', 45000, 'Marketing', '2020-05-15', NULL),
    ('Carlos Gómez', 60000, 'Ingeniería', '2019-08-20', NULL),
    ('Ana Rodríguez', 35000, 'Recursos Humanos', '2022-03-10', NULL),
    ('Luis Martínez', 50000, 'Ventas', '2021-06-01', 1),
    ('Laura García', 40000, 'Marketing', '2020-11-20', 2),
    ('Pedro Sánchez', 65000, 'Ingeniería', '2018-07-15', 3),
    ('Sofía Fernández', 30000, 'Recursos Humanos', '2022-09-05', 4);

/* "Consultas:"
SELECT * FROM empleados
WHERE salario > 50000 AND departamento = 'Ventas' OR (salario < 30000 AND departamento = 'Marketing');

SELECT *FROM empleados
ORDER BY salario DESC, nombre ASC;

UPDATE empleados SET salario = salario * 1.10
WHERE departamento = 'Ventas' AND salario < 50000;

DELETE FROM empleados
WHERE fecha_contratacion < '2020-01-01' AND departamento = 'Recursos Humanos';

SELECT e1.nombre, e1.salario FROM empleados e1
WHERE e1.salario > (SELECT AVG(salario) FROM empleados);

SELECT nombre, salario, RANK() OVER (ORDER BY salario DESC) AS ranking FROM empleados;

CREATE VIEW empleados_ventas AS SELECT nombre, salario FROM empleados
WHERE departamento = 'Ventas';

SELECT nombre, salario FROM empleados e1
WHERE salario > (SELECT AVG(salario) FROM empleados e2 WHERE e1.departamento = e2.departamento);

CREATE INDEX idx_departamento ON empleados (departamento);

*/