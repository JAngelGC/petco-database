-- CREATE DATABASE Petco;
-- USE Petco;

CREATE TABLE provider (
  provider_id VARCHAR(10) PRIMARY KEY,
  provider_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(20),
  address VARCHAR(255)
);


CREATE TABLE category (
  category_id VARCHAR(10) PRIMARY KEY,
  category_name VARCHAR(255)
);


CREATE TABLE discount (
  discount_id VARCHAR(10) PRIMARY KEY,
  discount_percentage DECIMAL(5, 2),
  start_date DATE,
  end_date DATE
);


CREATE TABLE product (
  product_id VARCHAR(10) PRIMARY KEY,
  product_name VARCHAR(100),
  price DECIMAL(10, 2),
  stock INT,
  category_id VARCHAR(10),
  discount_id VARCHAR(10),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (discount_id) REFERENCES discount(discount_id)
);


CREATE TABLE sale (
  sale_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id VARCHAR(10),
  cashier_id VARCHAR(10),
  customer_id VARCHAR(10),
  sale_date TIMESTAMP,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (product_id) REFERENCES product(product_id),
  FOREIGN KEY (cashier_id) REFERENCES cashier(cashier_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE invoice (
  invoice_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id VARCHAR(10),
  sale_id INT,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (sale_id) REFERENCES sale(sale_id)
);


CREATE TABLE purchase (
  purchase_id INT AUTO_INCREMENT PRIMARY KEY,
  provider_id VARCHAR(10),
  manager_id VARCHAR(10),
  purchase_date TIMESTAMP,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (provider_id) REFERENCES provider(provider_id),
  FOREIGN KEY (manager_id) REFERENCES manager(manager_id)
);