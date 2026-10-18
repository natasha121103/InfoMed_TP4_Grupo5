SELECT 
    Pacientes.id_paciente,
    Pacientes.nombre,
    Consultas.fecha,
    Consultas.diagnostico
FROM Consultas
INNER JOIN Pacientes ON Pacientes.id_paciente = Consultas.id_paciente
WHERE EXTRACT(YEAR FROM (Consultas.fecha)) = 2024 AND EXTRACT(MONTH FROM (Consultas.fecha)) = 8
ORDER BY Pacientes.id_paciente ASC;

-- Unimos las tablas con el id de los pacientes para asegurar que sean pacientes distintos 
-- y no dos con un mismo nombre