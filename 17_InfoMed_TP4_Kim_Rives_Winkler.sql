SELECT Medicos.id_medico,
    Medicos.nombre AS "Nombre Medico",
    Pacientes.id_paciente,
    Pacientes.nombre AS "Nombre Paciente",
    COUNT(*) AS "Cant Consultas"
FROM Consultas
INNER JOIN Medicos ON Medicos.id_medico = Consultas.id_medico
INNER JOIN Pacientes ON Pacientes.id_paciente = Consultas.id_paciente
GROUP BY Medicos.nombre, Pacientes.nombre, Medicos.id_medico, Pacientes.id_paciente
ORDER BY Medicos.nombre, Pacientes.nombre ASC