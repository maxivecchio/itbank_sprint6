CREATE TRIGGER IF NOT EXISTS after_update_cuenta
AFTER UPDATE OF balance, iban, tipo_id ON cuenta
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_cuenta (
        old_id, new_id,
        old_balance, new_balance,
        old_iban, new_iban,
        old_type, new_type,
        user_action, created_at
    )
    VALUES (
        OLD.account_id, NEW.account_id,
        OLD.balance, NEW.balance,
        OLD.iban, NEW.iban,
        OLD.tipo_id, NEW.tipo_id,
        'UPDATE', CURRENT_TIMESTAMP
    );
END;
