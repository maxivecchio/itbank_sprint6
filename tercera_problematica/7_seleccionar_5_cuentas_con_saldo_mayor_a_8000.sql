-- 8000 - Ponemos 800000 para reflejar en centavos
SELECT *
FROM cuenta
WHERE balance > 800000
ORDER BY balance DESC
LIMIT 5;