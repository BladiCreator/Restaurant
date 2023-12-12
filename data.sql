-- Active: 1702372895574@@127.0.0.1@3306@restaurant

-- Platos

insert into dishes (dish_name, description, price) values ('Bandera dominicana', 'Arroz blanco, habichuelas rojas y carne guisada como res, cerdo, pollo o pescado, cada una de las cuales representa un color de la bandera. Se suele servir con una ensalada de repollo aderezada con aceite de oliva y vinagre, aguacate y tostones.', 22.99);
insert into dishes (dish_name, description, price) values ('Sancocho', 'Guiso espeso hecho con pollo, carne de res, cerdo y víveres como la auyama, la yautía y la yuca.', 21.99);
insert into dishes (dish_name, description, price) values ('Tostones', 'Plátanos verdes fritos con sal, como aperitivo o acompañamiento.', 9.99);
insert into dishes (dish_name, description, price) values ('Pasteles en hoja', 'Puré de plátanos o yuca, rellenos de pollo o carne, y envueltos en hojas de plátano. Se sirven con ketchup o salsa picante.', 23.99);
insert into dishes (dish_name, description, price) values ('Chivo guisado', 'Guiso de carne de chivo se condimenta con orégano, plato picante del menú dominicano.', 27.99);

-- Empleados

insert into employees (first_name, last_name, position, salary) values ('Ealasaid', 'Frazier', 'Gerente', 3000);
insert into employees (first_name, last_name, position, salary) values ('Sharline', 'Montgomery', 'Chef ejecutivo', 2700);
insert into employees (first_name, last_name, position, salary) values ('Rica', 'Kimbrey', 'Sous-chef', 2100);
insert into employees (first_name, last_name, position, salary) values ('Hurleigh', 'Cicchinelli', 'Mesoneros', 1800);
insert into employees (first_name, last_name, position, salary) values ('Hurleigh', 'Cicchinelli', 'Mesoneros', 1800);
insert into employees (first_name, last_name, position, salary) values ('Anthia', 'Bridgewood', 'Personal de limpieza', 1800);
-- 
insert into employees (first_name, last_name, position, salary) values ('Mabem', 'Khahrer', 'Mesoneros', 1800);
insert into employees (first_name, last_name, position, salary) values ('Rehler', 'Ruku', 'Mesoneros', 1800);
-- Clientes

insert into customers (first_name, last_name, contact_info) values ('Bearnard', 'Week', 'bweek0@discovery.com');
insert into customers (first_name, last_name, contact_info) values ('Pauly', 'Wiffield', 'pwiffield1@cdbaby.com');
insert into customers (first_name, last_name, contact_info) values ('Cinnamon', 'Reeders', 'creeders2@wikipedia.org');
insert into customers (first_name, last_name, contact_info) values ('Misty', 'Enever', 'menever3@spiegel.de');
insert into customers (first_name, last_name, contact_info) values ('Paton', 'Gobat', 'pgobat4@ox.ac.uk');

-- Orden

insert into orders (customer_id, employee_id, order_date, total_amount) values (1, 1, '2023-02-09', 80.0);
insert into orders (customer_id, employee_id, order_date, total_amount) values (2, 2, '2023-02-09', 39.0);
insert into orders (customer_id, employee_id, order_date, total_amount) values (3, 1, '2023-02-09', 78.0);


insert into orders (customer_id, employee_id, order_date, total_amount) values (2, 2, '2023-10-29', 95.9);
insert into orders (customer_id, employee_id, order_date, total_amount) values (3, 3, '2023-01-28', 58.55);
insert into orders (customer_id, employee_id, order_date, total_amount) values (4, 4, '2022-12-26', 81.18);
insert into orders (customer_id, employee_id, order_date, total_amount) values (5, 5, '2023-10-04', 15.56);

-- Detalle de orden

insert into order_details (order_id, dish_id, quantity, price) values (1, 1, 1, 139);
insert into order_details (order_id, dish_id, quantity, price) values (2, 2, 5, 142);
insert into order_details (order_id, dish_id, quantity, price) values (2, 1, 3, 130);
insert into order_details (order_id, dish_id, quantity, price) values (2, 4, 1, 30);
insert into order_details (order_id, dish_id, quantity, price) values (3, 3, 2, 169);
insert into order_details (order_id, dish_id, quantity, price) values (4, 4, 5, 116);
insert into order_details (order_id, dish_id, quantity, price) values (5, 5, 1, 97);

