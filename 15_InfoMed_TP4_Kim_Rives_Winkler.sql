WITH cantidad_medicamentos AS (
    SELECT m.id_medicamento, m.nombre, COUNT(r.id_receta) AS cantidad_recetas
    FROM Medicamentos m
    LEFT JOIN Recetas r ON m.id_medicamento = r.id_medicamento
    GROUP BY m.id_medicamento, m.nombre
)


SELECT nombre, cantidad_recetas
FROM cantidad_medicamentos
WHERE cantidad_recetas IN (
    SELECT DISTINCT cantidad_recetas
    FROM cantidad_medicamentos
    ORDER BY cantidad_recetas DESC
    LIMIT 2
)
ORDER BY cantidad_recetas DESC, nombre;
