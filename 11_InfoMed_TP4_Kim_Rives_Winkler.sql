SELECT Medicamentos.nombre,
    COUNT(Recetas.id_medicamento) AS "Cant_Recetas"
FROM Recetas
INNER JOIN Medicamentos ON Medicamentos.id_medicamento = Recetas.id_medicamento
WHERE Recetas.id_medico = 2
GROUP BY Medicamentos.nombre
HAVING COUNT(Recetas.id_medicamento) > 1;