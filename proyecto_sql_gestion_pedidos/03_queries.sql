-- 1. Ver todos los pedidos entregados
SELECT * FROM pedidos WHERE estado = 'Entregado';

-- 2. Listar los productos vendidos por pedido
SELECT 
  p.id AS id_pedido,
  c.nombre AS cliente,
  pr.nombre_producto,
  dp.cantidad
FROM detalle_pedidos dp
JOIN pedidos p ON dp.pedido_id = p.id
JOIN clientes c ON p.cliente_id = c.id
JOIN productos pr ON dp.producto_id = pr.id;

-- 3. Total de productos por pedido
SELECT 
  pedido_id,
  SUM(cantidad) AS total_productos
FROM detalle_pedidos
GROUP BY pedido_id;

-- 4. Total gastado por cada cliente
SELECT 
  c.nombre AS cliente,
  SUM(pr.precio * dp.cantidad) AS total_gastado
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
JOIN detalle_pedidos dp ON p.id = dp.pedido_id
JOIN productos pr ON dp.producto_id = pr.id
WHERE p.estado = 'Entregado'
GROUP BY c.nombre;

-- 5. Pedidos sin productos asociados
SELECT 
  p.id AS pedido_id,
  c.nombre AS cliente
FROM pedidos p
LEFT JOIN detalle_pedidos dp ON p.id = dp.pedido_id
JOIN clientes c ON p.cliente_id = c.id
WHERE dp.id IS NULL;
