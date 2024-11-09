SELECT sucursal.branch_name AS nombre_sucursal,
       COUNT(empleado.employee_id) * 1.0 / COUNT(cliente.customer_id) AS empleados_por_cliente
FROM sucursal
JOIN cliente ON cliente.branch_id = sucursal.branch_id
JOIN empleado ON empleado.branch_id = sucursal.branch_id
GROUP BY sucursal.branch_name;
