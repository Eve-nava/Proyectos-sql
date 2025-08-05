# Sistema de Préstamos - Proyecto SQL

Este proyecto simula un sistema básico de préstamos de libros. Contiene tablas para usuarios, libros y registros de préstamos, con sus relaciones definidas.

## Base de datos: `sistema_prestamos`

### Tablas principales
- `usuarios`: información de usuarios.
- `libros`: catálogo de libros con disponibilidad.
- `prestamos`: registros de préstamos, estados y fechas.

## Contenido de los archivos

- `01_schema.sql`: creación de la base y tablas con claves foráneas.
- `02_data.sql`: datos de ejemplo para usuarios, libros y préstamos.
- `03_queries.sql`: consultas útiles para analizar la actividad y estado del sistema.

## Consultas destacadas

1. Listar todos los préstamos con detalles de usuario y libro.  
2. Detectar usuarios sin préstamos.  
3. Identificar libros prestados no devueltos.  
4. Mostrar detalle completo de préstamos.  
5. Calcular días transcurridos para préstamos activos.

---

**Autor:** Evelyn Nava García  
📍 CDMX, México  
Portafolio en desarrollo con foco en análisis y testing de software.
