-- 1. Total de préstamos activos
SELECT
  COUNT(*) AS total_activos
FROM prestamos
WHERE estado = 'Activo';

-- 2. Usuarios con préstamos activos
SELECT 
  u.nombre AS u_usuario,
  l.titulo AS titulo_libro
FROM prestamos p
JOIN usuarios u ON p.usuario_id = u.id
JOIN libros l ON p.libro_id = l.id
WHERE p.estado = 'Activo';

-- 3. Total de préstamos por usuario
SELECT 
  u.nombre AS nombre_usuario,
  COUNT(p.id) AS total_prestamos
FROM prestamos p
JOIN usuarios u ON p.usuario_id = u.id
GROUP BY u.nombre;

-- 4. Libros disponibles
SELECT 
  l.titulo AS titulo_libro
FROM libros l
WHERE disponible = TRUE;

-- 5. Libros aún no devueltos
SELECT 
  l.titulo AS titulo_libro,
  p.fecha_devolucion
FROM prestamos p
JOIN libros l ON p.libro_id = l.id
WHERE p.fecha_devolucion IS NULL;
