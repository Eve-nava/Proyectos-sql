INSERT INTO alumnos (nombre, correo, fecha_registro) VALUES
('Ana Torres', 'ana@mail.com', '2024-06-10'),
('Luis Gómez', 'luis@mail.com', '2024-06-15'),
('Sofía Ríos', 'sofia@mail.com', '2024-07-01'),
('Juan Díaz', 'juan@mail.com', '2024-07-05');

INSERT INTO cursos (titulo, nivel, activo) VALUES
('Introducción a SQL', 'Básico', TRUE),
('Testing Manual', 'Básico', TRUE),
('Automatización con Selenium', 'Intermedio', TRUE),
('APIs RESTful', 'Avanzado', FALSE),
('Testing Móvil', 'Intermedio', TRUE);

INSERT INTO inscripciones (alumno_id, curso_id, fecha_inicio, estado) VALUES
(1, 1, '2024-07-01', 'Finalizado'),
(1, 3, '2024-07-08', 'Activo'),
(2, 2, '2024-07-03', 'Activo'),
(3, 5, '2024-07-05', 'Cancelado');
