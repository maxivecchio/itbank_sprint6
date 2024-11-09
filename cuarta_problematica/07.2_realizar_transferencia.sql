BEGIN TRANSACTION;

UPDATE cuenta
SET balance = balance - 1000
WHERE account_id = 200 AND balance >= 1000;

UPDATE cuenta
SET balance = balance + 1000
WHERE account_id = 400;

INSERT INTO movimientos (cuenta_numero, monto, tipo_operacion)
VALUES (200, -1000, 'transferencia');

INSERT INTO movimientos (cuenta_numero, monto, tipo_operacion)
VALUES (400, 1000, 'transferencia');

COMMIT;