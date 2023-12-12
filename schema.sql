CREATE DATABASE IF NOT EXISTS restaurant;

-- Tabla dishes (Platos de la Carta)

-- Propósito: Almacenar información sobre los platos disponibles.
-- Campos:
-- dish_id (clave primaria)
-- dish_name
-- description
-- price

CREATE TABLE IF NOT EXISTS restaurant.dishes (
    dish_id INT AUTO_INCREMENT PRIMARY KEY,
    dish_name VARCHAR(50) NOT NULL,
    description TEXT,
    price FLOAT(10,2) NOT NULL
);

-- Tabla employees (Empleados)

-- Propósito: Registrar a los empleados del restaurante.
-- Campos:
-- employee_id (clave primaria)
-- first_name
-- last_name
-- position
-- salary

CREATE TABLE IF NOT EXISTS restaurant.employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL, 
    position VARCHAR(50) NOT NULL,
    salary FLOAT(10,2) NOT NULL
);

-- Tabla customers (Clientes)

-- Propósito: Guardar información de los clientes.
-- Campos:
-- customer_id (clave primaria)
-- first_name
-- last_name
-- contact_info

CREATE TABLE IF NOT EXISTS restaurant.customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL, 
    contact_info VARCHAR(50)
);

-- Tabla orders (Pedidos)

-- Propósito: Gestionar los pedidos realizados por los clientes.
-- Campos:
-- order_id (clave primaria)
-- customer_id (clave foránea de customers)
-- employee_id (clave foránea de employees)
-- order_date
-- total_amount

CREATE TABLE IF NOT EXISTS restaurant.orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    employee_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount FLOAT(10,2) NOT NULL, -- Total de precios
    FOREIGN KEY (customer_id) REFERENCES restaurant.customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES restaurant.employees(employee_id)
);

-- Tabla order_details (Detalles del Pedido)

-- Propósito: Detallar los platos incluidos en cada pedido.
-- Campos:
-- order_id (clave foránea de orders) (forma parte de la clave primaria)
-- dish_id (clave foránea de dishes) (forma parte de la clave primaria)
-- quantity
-- price

CREATE TABLE IF NOT EXISTS restaurant.order_details (
    order_id INT NOT NULL,
    dish_id INT NOT NULL,
    quantity INT NOT NULL,
    price FLOAT(10,2) NOT NULL,
    PRIMARY KEY (order_id, dish_id),
    FOREIGN KEY (order_id) REFERENCES restaurant.orders(order_id),
    FOREIGN KEY (dish_id) REFERENCES restaurant.dishes(dish_id)
);