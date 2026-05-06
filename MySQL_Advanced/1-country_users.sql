-- Script que crea una tabla 'users' con requerimientos específicos de enumeración
-- La tabla puede ser creada en cualquier base de datos

-- Crea la tabla users con id, email, name y country (US, CO, TN)
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
