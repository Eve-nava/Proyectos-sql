-- 1. Alumnos inscritos en cursos activos
SELECT
  a.nombre AS nombre_alumno,
  c.titulo AS titulo_curso
FROM inscripciones i
JOIN alumnos a ON i.alumno_id = a.id
JOIN cursos c ON i.curso_id = c.id
WHERE c.activo = TRUE;

-- 2. Total de alumnos inscritos en cursos de nivel básico
SELECT
  COUNT(*) AS total_alumnos_inscritos
FROM inscripciones i 
JOIN cursos c ON i.curso_id = c.id
WHERE c.nivel = 'Básico';

-- 3. Alumnos sin inscripciones
SELECT 
  a.nombre AS nombre_alumno
FROM alumnos a 
LEFT JOIN inscripciones i ON a.id = i.alumno_id
WHERE i.id IS NULL;

-- 4. Detalle completo de inscripciones
SELECT 
  a.nombre AS nombre_alumno,
  c.titulo AS titulo_curso,
  i.fecha_inicio,
  i.estado
FROM inscripciones i
JOIN alumnos a ON i.alumno_id = a.id
JOIN cursos c ON i.curso_id = c.id;

-- 5. Cursos sin inscripciones
SELECT 
  c.titulo AS titulo_curso
FROM cursos c
LEFT JOIN inscripciones i ON c.id = i.curso_id
WHERE i.id IS NULL;
