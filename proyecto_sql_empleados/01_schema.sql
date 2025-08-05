CREATE DATABASE mi_practica;
USE mi_practica;

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    edad INT,
    ciudad VARCHAR(50),
    salario DECIMAL(10,2)
);
