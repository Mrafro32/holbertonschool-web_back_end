-- Script que crea una tabla 'users' con atributos específicos
-- La tabla puede ser creada en cualquier base de datos

-- Crea la tabla users si no existe con id, email y name
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
