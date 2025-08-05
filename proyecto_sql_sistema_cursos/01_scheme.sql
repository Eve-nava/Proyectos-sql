CREATE DATABASE sistema_cursos;
USE sistema_cursos;

CREATE TABLE alumnos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100),
  fecha_registro DATE
);

CREATE TABLE cursos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  nivel VARCHAR(100), -- BASICO, INTERMEDIO, AVANZADO
  activo BOOLEAN
);

CREATE TABLE inscripciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  alumno_id INT,
  curso_id INT,
  fecha_inicio DATE,
  estado VARCHAR(20), -- ACTIVO, FINALIZADO, CANCELADO
  FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
  FOREIGN KEY (curso_id) REFERENCES cursos(id)
);
