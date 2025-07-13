USE clinica_citas;
-- Insertar una especialidad
INSERT INTO especialidad (nombre, descripcion)
VALUES ('Pediatría', 'Atención médica a niños');

-- Insertar un médico
INSERT INTO medico (nombres, apellidos, id_especialidad, consultorio, horario)
VALUES ('Laura', 'Martínez', 1, '302A', 'Lunes a Viernes 8am - 4pm');

-- Insertar un paciente
INSERT INTO paciente (nombres, apellidos, telefono, correo, fecha_nacimiento)
VALUES ('Carlos', 'Ramos', '3124567890', 'carlos@example.com', '1990-05-20');

-- Insertar una cita
INSERT INTO cita (id_paciente, id_medico, fecha_cita, hora_cita, estado)
VALUES (1, 1, '2025-07-18', '10:00:00', 'Programada');