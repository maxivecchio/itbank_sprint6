SELECT sucursal.branch_name AS nombre_sucursal,
       marca_tarjeta.nombre AS tipo_tarjeta,
       COUNT(tarjeta.id) AS cantidad_tarjetas
FROM tarjeta
JOIN cliente ON tarjeta.cliente_id = cliente.customer_id
JOIN sucursal ON cliente.branch_id = sucursal.branch_id
JOIN marca_tarjeta ON Tarjeta.marca_id = marca_tarjeta.id
WHERE tarjeta.tipo = 'credito'
GROUP BY sucursal.branch_name, marca_tarjeta.nombre
ORDER BY nombre_sucursal, cantidad_tarjetas DESC;
