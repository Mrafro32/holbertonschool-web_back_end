-- Script que lista bandas con Glam rock como estilo principal
-- Clasificadas por su longevidad hasta el año 2024

-- Selecciona el nombre y calcula el lifespan basado en las columnas formed y split
SELECT band_name, (IFNULL(split, 2024) - formed) AS lifespan
    FROM metal_bands
    WHERE style LIKE '%Glam rock%'
    ORDER BY lifespan DESC;
