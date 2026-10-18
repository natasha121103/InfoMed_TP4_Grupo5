SELECT e.id_especialidad,
    e.nombre,
    COUNT(m.especialidad_id) AS "Cantidad Med"
FROM Medicos m
INNER JOIN Especialidades e ON e.id_especialidad = m.especialidad_id
GROUP BY e.id_especialidad, e.nombre
HAVING COUNT(m.especialidad_id) > 2