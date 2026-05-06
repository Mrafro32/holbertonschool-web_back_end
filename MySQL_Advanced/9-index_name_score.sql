-- Script que crea un indice compuesto idx_name_first_score
-- El indice se basa en la primera letra del nombre y en el puntaje (score)

-- Crea un indice en la tabla names usando el primer caracter de name y la columna score
CREATE INDEX idx_name_first_score ON names (name(1), score);
