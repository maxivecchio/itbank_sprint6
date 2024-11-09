SELECT cliente.customer_name, cliente.customer_surname,
       (strftime('%Y', 'now') - strftime('%Y', cliente.dob)) - 
       (strftime('%m-%d', 'now') < strftime('%m-%d', cliente.dob)) AS edad,
       sucursal.branch_name AS nombre_sucursal
FROM cliente
JOIN sucursal ON cliente.branch_id = sucursal.branch_id
WHERE cliente.customer_name = 'Brendan'
ORDER BY sucursal.branch_name;