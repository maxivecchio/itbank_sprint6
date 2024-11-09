-- Vista
CREATE VIEW cliente_info AS
SELECT 
    customer_id,
    branch_id,
    customer_name,
    customer_surname,
    customer_DNI,
    (strftime('%Y', 'now') - strftime('%Y', dob)) - 
    (strftime('%m-%d', 'now') < strftime('%m-%d', dob)) AS edad
FROM cliente;

-- Mostrar las columnas de los clientes,
-- ordenadas por el DNI de menor a
-- mayor y cuya edad sea superior a 40
-- años
SELECT customer_id, branch_id, customer_name, customer_surname, customer_DNI, edad
FROM cliente_info
WHERE edad > 40
ORDER BY customer_DNI ASC;

-- Mostrar todos los clientes que se
-- llaman “Anne” o “Tyler” ordenados por
-- edad de menor a mayor
SELECT customer_id, branch_id, customer_name, customer_surname, customer_DNI, edad
FROM cliente_info
WHERE customer_name IN ('Anne', 'Tyler')
ORDER BY edad ASC;

-- . Insertar 5 nuevos clientes en la base de datos dado el JSON
INSERT INTO cliente (customer_name, customer_surname, customer_DNI, branch_id, dob) VALUES
('Lois', 'Stout', 47730534, 80, '1984-07-07'),
('Hall', 'Mcconnell', 52055464, 45, '1968-04-30'),
('Hilel', 'Mclean', 43625213, 77, '1993-03-28'),
('Jin', 'Cooley', 21207908, 96, '1959-08-24'),
('Gabriel', 'Harmon', 57063950, 27, '1976-04-01');

-- Verificar que la inserción se realizó con éxito
SELECT * FROM cliente
WHERE customer_DNI IN (47730534, 52055464, 43625213, 21207908, 57063950);

-- Actualizar 5 clientes recientemente
-- agregados en la base de datos dado que
-- hubo un error en el JSON que traía la
-- información, la sucursal de todos es la 10
UPDATE cliente
SET branch_id = 10
WHERE customer_DNI IN (47730534, 52055464, 43625213, 21207908, 57063950);

-- Eliminar el registro del cliente llamado Noel David por nombre y apellido
DELETE FROM cliente
WHERE customer_name = 'Noel' AND customer_surname = 'David';

-- Consultar el tipo de préstamo con el mayor importe
SELECT loan_type, MAX(loan_total) AS max_importe
FROM prestamo
GROUP BY loan_type
ORDER BY loan_total DESC
LIMIT 1;