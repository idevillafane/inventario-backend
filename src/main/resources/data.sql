-- Crear la tabla de flujo
CREATE TABLE flujo (
    fecha DATE,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    total DECIMAL(10, 2) NOT NULL
);

-- Crear la tabla de productos
CREATE TABLE products (
    id BIGINT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price FLOAT(53),
    PRIMARY KEY (id)
);

-- Cargar datos de ejemplo en la tabla de productos
INSERT INTO products (name, category, quantity, price)
VALUES ('Apple iPhone 13', 'Smartphone', 50, 699.00);

INSERT INTO products (name, category, quantity, price)
VALUES ('Samsung Galaxy S22', 'Smartphone', 40, 799.00);

INSERT INTO products (name, category, quantity, price)
VALUES ('Google Pixel 6', 'Smartphone', 30, 599.00);

INSERT INTO products (name, category, quantity, price)
VALUES ('Apple iPad Pro', 'Tablet', 20, 999.00);

INSERT INTO products (name, category, quantity, price)
VALUES ('Amazon Echo Dot', 'Altavoz', 60, 49.00);

-- Cargar datos de ejemplo en la tabla de flujo
INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-01', 'Apple iPhone 13', 'Venta', 10, 70);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-02', 'Samsung Galaxy S22', 'Venta', 5, 25);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-05', 'Google Pixel 6', 'Venta', 5, 15);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-07', 'Apple iPhone 13', 'Ingreso Stock', 20, 90);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-10', 'Apple iPad Pro', 'Venta', 5, 30);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-12', 'Samsung Galaxy S22', 'Corrección', -5, 20);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-15', 'Amazon Echo Dot', 'Venta', 10, 50);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-18', 'Google Pixel 6', 'Ingreso Stock', 10, 25);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-20', 'Apple iPad Pro', 'Modificación', -5, 25);

INSERT INTO flujo (fecha, name, type, quantity, total)
VALUES ('2023-07-25', 'Amazon Echo Dot', 'Ingreso Stock', 10, 60);

