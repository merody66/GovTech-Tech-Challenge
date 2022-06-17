-- Creation of Car table
CREATE TABLE IF NOT EXISTS car (
    serial_number BIGINT NOT NULL,
    manufacturer_id BIGINT NOT NULL,
    model_name VARCHAR(200) NOT NULL, 
    weight DECIMAL(7,2) NOT NULL,
    price DECIMAL(7,2) NOT NULL,
    PRIMARY KEY (serial_number),
    FOREIGN KEY (manufacturer_id)
);

CREATE TABLE IF NOT EXISTS manufacturer (
    manufacturer_id BIGINT NOT NULL,
    name VARCHAR(100) NOT NULL, 
    date_created DATE NOT NULL,
    PRIMARY KEY (manufacturer_id)
);

CREATE TABLE IF NOT EXISTS salesperson (
    salesperson_id BIGINT NOT NULL,
    name VARCHAR(100) NOT NULL, 
    phone INTEGER NOT NULL, 
    email VARCHAR(200) NOT NULL, 
    date_created DATE NOT NULL,
    PRIMARY KEY (salesperson_id)
);

CREATE TABLE IF NOT EXISTS customer (
    cust_id BIGINT NOT NULL,
    name VARCHAR(100) NOT NULL, 
    phone INTEGER NOT NULL, 
    email VARCHAR(200) NOT NULL, 
    date_created DATE NOT NULL,
    PRIMARY KEY (cust_id)
);

CREATE TABLE IF NOT EXISTS order (
    order_id BIGINT NOT NULL,
    serial_number BIGINT NOT NULL,
    cust_id BIGINT NOT NULL,
    salesperson_id BIGINT NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (serial_number),
    FOREIGN KEY (cust_id),
    FOREIGN KEY (salesperson_id)
);