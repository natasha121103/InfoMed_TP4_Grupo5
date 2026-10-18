SELECT nombre, edad
FROM vista_pacientes_edad -- vista creada en consigna 2
WHERE edad > (SELECT AVG(edad) FROM vista_pacientes_edad) -- Subconsulta
ORDER BY edad DESC;
