-- 1. Listar todos los préstamos con usuario y libro
SELECT 
  u.nombre AS nombre_usuario,
  l.titulo AS titulo_libro
FROM prestamos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN libros l ON p.libro_id = l.id;

-- 2. Usuarios sin préstamos
SELECT 
  u.nombre AS nombre_usuario,
  u.correo
FROM usuarios u
LEFT JOIN prestamos p ON u.id = p.usuario_id
WHERE p.id IS NULL;

-- 3. Libros prestados y no devueltos (fecha_devolucion NULL)
SELECT 
  l.titulo AS titulo_libro,
  l.autor AS autor_libro
FROM prestamos p
JOIN libros l ON p.libro_id = l.id
WHERE p.fecha_devolucion IS NULL;

-- 4. Detalle completo de préstamos
SELECT 
  u.nombre AS nombre_usuario,
  l.titulo AS titulo_libro,
  p.fecha_inicio,
  p.fecha_devolucion,
  p.estado
FROM prestamos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN libros l ON p.libro_id = l.id;

-- 5. Días transcurridos en préstamos activos
SELECT 
  u.nombre AS nombre_usuario,
  l.titulo AS titulo_libro,
  DATEDIFF(CURRENT_DATE, p.fecha_inicio) AS dias_transcurridos
FROM prestamos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN libros l ON p.libro_id = l.id
WHERE p.estado = 'Activo';
