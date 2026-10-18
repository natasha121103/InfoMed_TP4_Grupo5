SELECT id_paciente, nombre, numero, calle, ciudad 
FROM Pacientes
WHERE TRIM(ciudad) ILIKE 'b%s';

-- ILIKE no le importa mayúscula o minúscula
-- TRIM saca los espacios de los extremos