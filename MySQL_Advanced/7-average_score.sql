-- Script que crea el procedimiento almacenado ComputeAverageScoreForUser
-- Calcula y almacena el puntaje promedio para un estudiante específico

DELIMITER //
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    -- Actualiza el average_score en la tabla users
    -- calculando el promedio de la tabla corrections para ese user_id
    UPDATE users
    SET average_score = (SELECT AVG(score) FROM corrections WHERE corrections.user_id = user_id)
    WHERE id = user_id;
END;
//
DELIMITER ;
