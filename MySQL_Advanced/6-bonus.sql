-- Script que crea el procedimiento almacenado AddBonus
-- Agrega una nueva corrección para un estudiante, creando el proyecto si no existe

DELIMITER //
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
    -- Declarar variable para el id del proyecto
    DECLARE project_id INT;

    -- Intentar obtener el id del proyecto si ya existe
    SELECT id INTO project_id FROM projects WHERE name = project_name;

    -- Si el proyecto no existe, crearlo
    IF project_id IS NULL THEN
        INSERT INTO projects (name) VALUES (project_name);
        SET project_id = LAST_INSERT_ID();
    END IF;

    -- Insertar la nueva corrección
    INSERT INTO corrections (user_id, project_id, score) VALUES (user_id, project_id, score);
END;
//
DELIMITER ;
