SELECT
    Medicos.nombre,
    COUNT(Consultas.id_consulta) FILTER (
        WHERE EXTRACT(YEAR FROM AGE(Consultas.fecha, Pacientes.fecha_nacimiento)) < 18
        ) AS consultas_menores,
    COALESCE(Especialidades.nombre = 'Pediatría', FALSE) AS es_pediatra
FROM Medicos
LEFT JOIN Consultas ON Medicos.id_medico = Consultas.id_medico
LEFT JOIN Pacientes ON Pacientes.id_paciente = Consultas.id_paciente
LEFT JOIN Especialidades ON Especialidades.id_especialidad = Medicos.especialidad_id
GROUP BY Medicos.id_medico, Medicos.nombre, Especialidades.nombre
ORDER BY consultas_menores DESC;