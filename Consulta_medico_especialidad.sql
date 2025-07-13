SELECT
  m.nombres,
  m.apellidos,
  e.nombre AS especialidad_nombre,
  m.consultorio,
  m.horario
FROM
  medico m
JOIN
  especialidad e ON m.id_especialidad = e.id_especialidad;
