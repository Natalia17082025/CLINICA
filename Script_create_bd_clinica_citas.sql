CREATE DATABASE IF NOT EXISTS clinica_citas;

USE clinica_citas;

CREATE TABLE IF NOT EXISTS especialidad (
  id_especialidad INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion TEXT
);

CREATE TABLE IF NOT EXISTS medico (
  id_medico INT PRIMARY KEY AUTO_INCREMENT,
  nombres VARCHAR(50) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  id_especialidad INT NOT NULL,
  consultorio VARCHAR(10),
  horario VARCHAR(100),
  FOREIGN KEY (id_especialidad) REFERENCES especialidad(id_especialidad)
);

-- 4. Crear tabla de pacientes
CREATE TABLE IF NOT EXISTS paciente (
  id_paciente INT PRIMARY KEY AUTO_INCREMENT,
  nombres VARCHAR(50) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  telefono VARCHAR(20),
  correo VARCHAR(100),
  fecha_nacimiento DATE
);

CREATE TABLE IF NOT EXISTS cita (
  id_cita INT PRIMARY KEY AUTO_INCREMENT,
  id_paciente INT NOT NULL,
  id_medico INT NOT NULL,
  fecha_cita DATE NOT NULL,
  hora_cita TIME NOT NULL,
  estado VARCHAR(20), -- Ej: 'Programada', 'Completada', 'Cancelada'
  FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
  FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);
