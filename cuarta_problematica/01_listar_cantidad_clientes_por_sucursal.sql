SELECT sucursal.branch_name AS nombre_sucursal, COUNT(cliente.customer_id) AS cantidad_clientes
FROM cliente
JOIN sucursal ON cliente.branch_id = sucursal.branch_id
GROUP BY sucursal.branch_name
ORDER BY cantidad_clientes DESC;
