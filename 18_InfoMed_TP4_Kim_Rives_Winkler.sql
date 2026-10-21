WITH Total_Rec AS (
        SELECT
        m.id_medicamento,
        COUNT(r.id_receta) AS "Total Recetas"
        FROM Medicamentos m
        INNER JOIN Recetas r
        ON m.id_medicamento = r.id_medicamento
        GROUP BY m.id_medicamento
        )

SELECT
    m.nombre AS "Nombre Medicamento",
    tr."Total Recetas",
    me.nombre AS "Nombre Medico",
    p.nombre AS "Nombre Paciente"
FROM Medicamentos m
INNER JOIN Recetas r ON m.id_medicamento = r.id_medicamento
INNER JOIN Medicos me ON me.id_medico = r.id_medico
INNER JOIN Pacientes p ON p.id_paciente = r.id_paciente
INNER JOIN Total_Rec tr ON tr.id_medicamento = m.id_medicamento
ORDER BY tr."Total Recetas" DESC;