SELECT 
    Medicos.nombre,
    COUNT(DISTINCT Consultas.id_paciente) AS total_pacientes_antendidos
FROM Medicos
LEFT JOIN Consultas ON Medicos.id_medico = Consultas.id_medico
GROUP BY Medicos.id_medico, Medicos.nombre
ORDER BY total_pacientes_antendidos DESC