-- Ver todos los empleados
SELECT * FROM empleados;

-- Empleados con salario mayor a 28000
SELECT * FROM empleados WHERE salario > 28000;

-- Promedio de salario
SELECT AVG(salario) AS salario_promedio FROM empleados;

-- Empleados por ciudad
SELECT ciudad, COUNT(*) AS total FROM empleados GROUP BY ciudad;
