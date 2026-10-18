SELECT
    Pacientes.nombre,
    COUNT(Recetas.id_receta) AS cantidad_recetas
FROM Pacientes
LEFT JOIN Recetas ON Pacientes.id_paciente = Recetas.id_paciente
GROUP BY Pacientes.id_paciente, Pacientes.nombre
ORDER BY cantidad_recetas DESC;
