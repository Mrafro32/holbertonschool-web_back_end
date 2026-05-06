-- Script que clasifica el origen de las bandas por número de fans
-- El script se puede ejecutar en cualquier base de datos

-- Clasifica los orígenes de las bandas por número de fans (no únicos)
SELECT origin, SUM(fans) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;
