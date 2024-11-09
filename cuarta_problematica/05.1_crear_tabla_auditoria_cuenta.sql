CREATE TABLE IF NOT EXISTS auditoria_cuenta (
    old_id INTEGER,
    new_id INTEGER,
    old_balance INTEGER,
    new_balance INTEGER,
    old_iban TEXT,
    new_iban TEXT,
    old_type TEXT,
    new_type TEXT,
    user_action TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);