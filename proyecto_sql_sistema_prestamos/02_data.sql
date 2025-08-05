INSERT INTO usuarios (nombre, correo) VALUES
('Ana Torres', 'ana@mail.com'),
('Luis Gómez', 'luis@mail.com'),
('Sofía Ríos', 'sofia@mail.com');

INSERT INTO libros (titulo, autor, disponible) VALUES
('1984', 'George Orwell', TRUE),
('Cien años de soledad', 'Gabriel García Márquez', TRUE),
('El principito', 'Antoine de Saint-Exupéry', TRUE);

INSERT INTO prestamos (usuario_id, libro_id, fecha_inicio, fecha_devolucion, estado) VALUES
(1, 1, '2024-07-01', '2024-07-10', 'Finalizado'),
(1, 3, '2024-07-08', NULL, 'Activo'),
(2, 2, '2024-07-05', NULL, 'Activo');
