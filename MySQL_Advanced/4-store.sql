-- Script que crea un trigger para disminuir la cantidad de un item
-- El trigger se ejecuta después de insertar un nuevo pedido en la tabla orders

-- Crea el trigger que actualiza la tabla items basándose en la nueva orden
DELIMITER //
CREATE TRIGGER decrease_quantity_after_order
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END;
//
DELIMITER ;
