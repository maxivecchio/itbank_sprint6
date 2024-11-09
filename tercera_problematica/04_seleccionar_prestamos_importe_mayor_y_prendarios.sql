SELECT *
FROM prestamo
WHERE loan_total > 600000
UNION
SELECT *
FROM prestamo
WHERE loan_type = 'PRENDARIO';