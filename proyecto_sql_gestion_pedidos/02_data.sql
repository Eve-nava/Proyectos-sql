-- Insertar clientes
INSERT INTO clientes (nombre, ciudad) VALUES
('Ana Torres', 'CDMX'),
('Luis Gómez', 'Guadalajara'),
('Sofia Ríos', 'Puebla');

-- Insertar productos
INSERT INTO productos (nombre_producto, precio) VALUES
('Laptop', 15000.00),
('Mouse', 250.00),
('Teclado', 500.00),
('Monitor', 4500.00);

-- Insertar pedidos
INSERT INTO pedidos (cliente_id, fecha_pedido, estado) VALUES
(1, '2024-07-01', 'Entregado'),
(2, '2024-07-03', 'Pendiente'),
(1, '2024-07-05', 'Cancelado'),
(3, '2024-07-06', 'Entregado');

-- Insertar detalle de pedidos
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 1),
(4, 1, 2),
(4, 4, 1);
