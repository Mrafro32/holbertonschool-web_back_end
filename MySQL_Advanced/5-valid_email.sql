-- Script que crea un trigger para validar el email
-- El trigger reinicia valid_email a 0 solo si el email ha cambiado

DELIMITER //
CREATE TRIGGER reset_email_validation
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        SET NEW.valid_email = 0;
    END IF;
END;
//
DELIMITER ;
