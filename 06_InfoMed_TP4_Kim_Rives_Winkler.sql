UPDATE Pacientes
SET ciudad = CASE
    WHEN TRIM(ciudad) ILIKE 'b%s' THEN 'Buenos Aires'
    WHEN TRIM(ciudad) ILIKE 'rosario' THEN 'Rosario'
    WHEN TRIM(ciudad) LIKE 'Men%' THEN 'Mendoza'
    WHEN TRIM(ciudad) ILIKE 'C%ba' THEN 'Córdoba'
    ELSE TRIM(ciudad)
END;