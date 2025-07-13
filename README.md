**SISTEMA DE GESTIÓN DE CITAS MÉDICAS**





Este proyecto implementa un sistema básico de gestión de citas médicas utilizando SQL Workbench. El objetivo es diseñar y construir una base de datos relacional que permita registrar pacientes, médicos, especialidades y agendar citas.



1\. Análisis del Enunciado

Antes de la implementación, se realizó un análisis para comprender los requisitos del sistema:



Requisitos principales:

Registrar pacientes



Registrar médicos



Registrar especialidades



Agendar citas



Entidades identificadas:

Paciente: Representa a las personas que solicitan citas.



Medico: Representa a los profesionales de la salud.



Especialidad: Define las áreas de experticia de los médicos.



Cita: Registra las citas agendadas entre pacientes y médicos.



Relaciones clave:

Un Medico tiene una Especialidad (relación uno a muchos: una especialidad puede tener muchos médicos, un médico tiene una especialidad).



Una Cita se agenda para un Paciente y con un Medico (relaciones muchos a uno: una cita tiene un paciente, una cita tiene un médico; un paciente puede tener muchas citas, un médico puede tener muchas citas).



2\. Diseño del Modelo Entidad-Relación (E-R)

El modelo E-R conceptualiza las entidades y sus interconexiones.



3\. Conversión al Modelo Relacional (Tablas)

El modelo E-R se traduce en las siguientes tablas relacionales:



PACIENTE: id\_paciente (PK), nombres, apellidos, telefono, correo, fecha\_nacimiento



ESPECIALIDAD: id\_especialidad (PK), nombre, descripcion



MEDICO: id\_medico (PK), nombres, apellidos, id\_especialidad (FK), consultorio, horario



CITA: id\_cita (PK), id\_paciente (FK), id\_medico (FK), fecha\_cita, hora\_cita, estado



4\. Implementación en SQL Workbench

El archivo clinica\_citas\_script.sql contiene el código SQL necesario para:



Crear la base de datos clinica\_citas.



Seleccionar la base de datos para su uso.



Crear las tablas especialidad, medico, paciente y cita con sus respectivas claves primarias y foráneas.



Insertar datos de prueba en cada tabla para facilitar las demostraciones y pruebas.



Realizar una consulta básica para visualizar las citas programadas con información relevante de pacientes, médicos y especialidades.



5\. Diccionario de Datos

El diccionario\_datos.md (o la sección correspondiente en este README) proporciona una descripción detallada de cada tabla y campo en la base de datos, incluyendo tipo de dato, tamaño, si es clave primaria o foránea, y una descripción clara de su propósito. Es una herramienta esencial para la documentación y comprensión de la estructura de la base de datos.



Cómo usar el script SQL:

Abre SQL Workbench (o cualquier cliente MySQL).



Abre el archivo "Script\_create\_bd\_clinica\_citas.sql"



Ejecuta el script completo. Asegúrate de ejecutar las sentencias en el orden en que aparecen (creación de DB, uso de DB, creación de tablas, inserción de datos, consultas).

