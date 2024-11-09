SELECT COUNT(*) AS clientes_menores_a_50
FROM cliente
WHERE (strftime('%Y', 'now') - strftime('%Y', dob)) - 
      (strftime('%m-%d', 'now') < strftime('%m-%d', dob)) < 50;