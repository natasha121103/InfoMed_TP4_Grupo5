WITH ultimas AS (
    SELECT id_paciente, MAX(fecha) AS ultima_fecha
    FROM Consultas
    GROUP BY id_paciente
)
SELECT Consultas.id_paciente,
    Pacientes.nombre,
    Consultas.diagnostico,
    Consultas.fecha AS ultima_consulta
FROM ultimas
INNER JOIN Consultas ON Consultas.id_paciente = ultimas.id_paciente
                    AND Consultas.fecha = ultimas.ultima_fecha
INNER JOIN Pacientes ON Pacientes.id_paciente = Consultas.id_paciente
ORDER BY Consultas.id_paciente;