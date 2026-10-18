CREATE VIEW vista_pacientes_edad AS
SELECT
   p.id_paciente,
   p.nombre,
   p.fecha_nacimiento,
   EXTRACT(YEAR FROM AGE(p.fecha_nacimiento)) AS edad,
   p.id_sexo,
   p.numero,
   p.calle,
   p.ciudad
FROM Pacientes p;

-- En otro query debería poner lo siguiente para ver que me da el query 2
-- SELECT * FROM vista_paciente_edad