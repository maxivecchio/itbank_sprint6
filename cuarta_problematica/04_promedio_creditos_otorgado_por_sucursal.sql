SELECT sucursal.branch_name AS nombre_sucursal,
       AVG(prestamo.loan_total) AS promedio_credito
FROM prestamo
JOIN cliente ON prestamo.customer_id = cliente.customer_id
JOIN sucursal ON cliente.branch_id = sucursal.branch_id
GROUP BY sucursal.branch_name
ORDER BY promedio_credito DESC;
