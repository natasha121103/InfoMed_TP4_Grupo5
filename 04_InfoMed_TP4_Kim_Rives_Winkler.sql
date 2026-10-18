UPDATE Pacientes
SET calle = 'Calle Corrientes',
    numero = '500',
    ciudad = 'Buenos Aires'
WHERE nombre = 'Luciana Gómez'
  AND calle = 'Avenida Las Heras'
  AND numero = '121'
  AND TRIM(ciudad) ILIKE 'b%s';

-- Para comprobar que se hizo bien
-- SELECT * 
-- FROM Pacientes
-- WHERE nombre = 'Luciana Gómez'
--      AND calle = 'Calle Corrientes'
--      numero = '500',
--      ciudad = 'Buenos Aires';