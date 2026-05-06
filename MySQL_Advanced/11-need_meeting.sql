-- Script que crea la vista 'need_meeting'
-- Lista estudiantes con score < 80 y sin reunión reciente (más de 1 mes o nunca)

-- Crea la vista filtrando por puntaje y fecha de la última reunión
CREATE VIEW need_meeting AS
SELECT name FROM students
WHERE score < 80
AND (last_meeting IS NULL OR last_meeting < ADDDATE(CURDATE(), INTERVAL -1 MONTH));
