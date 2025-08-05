-- Usuarios
INSERT INTO usuarios (nombre, correo, fecha_registro) VALUES
('Ana López', 'ana@mail.com', '2024-07-01'),
('Luis Torres', 'luis@mail.com', '2024-07-02'),
('María Díaz', 'maria@mail.com', '2024-07-03'),
('Carlos Vega', 'carlos@mail.com', '2024-07-04');

-- Libros
INSERT INTO libros (titulo, autor, disponible) VALUES
('SQL para Principiantes', 'Juan Pérez', TRUE),
('Bases de Datos Relacionales', 'Ana Ruiz', FALSE),
('Python y SQL', 'Luis Soto', TRUE),
('Análisis de Datos', 'Lucía Peña', FALSE);

-- Préstamos
INSERT INTO prestamos (usuario_id, libro_id, fecha_inicio, fecha_devolucion, estado) VALUES
(1, 2, '2024-07-01', '2024-07-06', 'Finalizado'),
(2, 4, '2024-07-02', NULL, 'Activo'),
(3, 1, '2024-07-03', '2024-07-08', 'Finalizado'),
(3, 3, '2024-07-04', NULL, 'Activo');
