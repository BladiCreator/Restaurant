-- Active: 1702372895574@@127.0.0.1@3306@restaurant

-- Contenido: Código SQL para realizar consultas diversas:

-- Calcular el total de pedidos por fecha.

SELECT
    COUNT(*) AS total_pedido,
    order_date
FROM orders
GROUP BY order_date;

-- Mostrar todos los pedidos realizados por un cliente específico, por ejemplo cliente 1.

SELECT * FROM orders WHERE customer_id = 1;

-- Obtener una lista detallada de los platos en un pedido específico, por ejemplo pedido 1.

SELECT *
FROM order_details
    INNER JOIN dishes ON dishes.dish_id = order_details.dish_id
WHERE order_details.dish_id = 1;

-- Obtener los salarios promedio de los empleados agrupados por posición.

SELECT AVG(salary), position FROM employees GROUP BY position;

-- Listar los platos más vendidos basados en la cantidad de veces que fueron pedidos.

SELECT
    SUM(quantity) AS cantidad,
    dish_name
FROM dishes AS D
    INNER JOIN order_details AS O ON O.dish_id = D.dish_id
GROUP BY D.dish_id;

-- Mostrar la cantidad de pedidos atendidos por cada empleado.

SELECT
    SUM(OD.quantity) AS cantidad_pedidos_total,
    E.employee_id,
    E.first_name,
    E.last_name
FROM
    employees AS E
    INNER JOIN orders AS O ON E.employee_id = O.employee_id
    INNER JOIN order_details AS OD ON  O.order_id = OD.order_id
GROUP BY E.employee_id
ORDER BY cantidad_pedidos_total DESC;

-- Identificar a los clientes que han realizado el mayor número de pedidos, es decir, mostrar nombre, apellido, número de pedidos y número de pedidos que ha hecho ese cliente.

SELECT
    first_name,
    last_name,
    SUM(quantity) AS cantidad_platos_pedidos,
    COUNT(*) AS cantidad_pedidos
FROM
    customers AS C
    INNER JOIN orders AS O ON C.customer_id = O.customer_id
    INNER JOIN order_details AS OD ON O.order_id = OD.order_id
GROUP BY C.customer_id
ORDER BY
    cantidad_platos_pedidos DESC;