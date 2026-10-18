SELECT 
    Medicos.id_medico,
    Medicos.nombre,
    COUNT(Recetas.id_receta) AS cantidad_recetas
FROM Medicos
LEFT JOIN Recetas ON Medicos.id_medico = Recetas.id_medico
GROUP BY Medicos.id_medico
ORDER BY cantidad_recetas DESC;