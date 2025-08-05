# Sistema de Cursos - Proyecto SQL

Este proyecto simula un sistema de cursos y alumnos inscritos, manejando la información de los cursos, su nivel, y los estados de las inscripciones.

## Base de datos: `sistema_cursos`

### Tablas principales
- `alumnos`: datos personales y registro.
- `cursos`: catálogo de cursos con nivel y estado activo/inactivo.
- `inscripciones`: relación entre alumnos y cursos, con estado y fecha de inicio.

## Contenido de los archivos

- `01_schema.sql`: creación de tablas con claves foráneas.
- `02_data.sql`: datos de ejemplo para alumnos, cursos e inscripciones.
- `03_queries.sql`: consultas para analizar inscripciones y cursos.

## Consultas destacadas

1. Listar alumnos inscritos en cursos activos.  
2. Contar alumnos en cursos de nivel básico.  
3. Detectar alumnos sin inscripciones.  
4. Mostrar detalle completo de inscripciones.  
5. Listar cursos sin inscripciones.

---

**Autor:** Evelyn Nava García  
📍 CDMX, México  
Portafolio en desarrollo con foco en análisis y testing de software.
