CREATE DATABASE Petco;
USE Petco;

CREATE TABLE customer (
  customer_id VARCHAR(10) PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  phone_number VARCHAR(15),
  address VARCHAR(200)
);

CREATE TABLE manager (
  manager_id VARCHAR(10) PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(20),
  address VARCHAR(255)
);

CREATE TABLE cashier (
  cashier_id VARCHAR(10) PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  phone_number VARCHAR(20),
  address VARCHAR(255),
  manager_id VARCHAR(10),
  FOREIGN KEY (manager_id) REFERENCES manager(manager_id)
);
