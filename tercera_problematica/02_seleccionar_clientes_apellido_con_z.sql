SELECT customer_name, customer_surname, 
       (strftime('%Y', 'now') - strftime('%Y', dob)) - 
       (strftime('%m-%d', 'now') < strftime('%m-%d', dob)) AS edad
FROM cliente
WHERE customer_surname LIKE '%Z%';