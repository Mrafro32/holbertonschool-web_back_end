-- Script que crea un indice idx_name_first en la tabla names
-- El indice se basa en la primera letra del nombre para optimizar búsquedas

-- Crea un indice en la columna name limitando el prefijo a 1 caracter
CREATE INDEX idx_name_first ON names (name(1));
