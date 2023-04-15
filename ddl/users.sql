USE Petco;


INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0001', 'John', 'Doe', 'johndoe@example.com', '1234567890', '1234 Elm Street');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0002', 'Jane', 'Smith', 'janesmith@example.com', '9876543210', '5678 Oak Avenue');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0003', 'Michael', 'Johnson', 'michaeljohnson@example.com', '5678901234', '7890 Maple Lane');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0004', 'Sarah', 'Williams', 'sarahwilliams@example.com', '3456789012', '4567 Pine Street');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0005', 'David', 'Brown', 'davidbrown@example.com', '7890123456', '8901 Cedar Avenue');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0006', 'Emily', 'Jones', 'emilyjones@example.com', '2345678901', '2345 Birch Lane');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0007', 'Daniel', 'Lee', 'daniellee@example.com', '8901234567', '6789 Willow Street');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0008', 'Olivia', 'Taylor', 'oliviataylor@example.com', '4567890123', '3456 Oak Avenue');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0009', 'James', 'Miller', 'jamesmiller@example.com', '9012345678', '7890 Elm Street');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES ('C0010', 'Sophia', 'Martin', 'sophiamartin@example.com', '3456789012', '5678 Cedar Avenue');









INSERT INTO manager (manager_id, first_name, last_name, email, phone_number, address)
VALUES ('M0001', 'Michael', 'Johnson', 'michaeljohnson@example.com', '1234567890', '1234 Elm Street');

INSERT INTO manager (manager_id, first_name, last_name, email, phone_number, address)
VALUES ('M0002', 'Nancy', 'Smith', 'nancysmith@example.com', '9876543210', '5678 Oak Avenue');

INSERT INTO manager (manager_id, first_name, last_name, email, phone_number, address)
VALUES ('M0003', 'Oliver', 'Brown', 'oliverbrown@example.com', '5678901234', '7890 Maple Lane');

INSERT INTO manager (manager_id, first_name, last_name, email, phone_number, address)
VALUES ('M0004', 'Patricia', 'Williams', 'patriciawilliams@example.com', '3456789012', '4567 Pine Street');

INSERT INTO manager (manager_id, first_name, last_name, email, phone_number, address)
VALUES ('M0005', 'Quincy', 'Lee', 'quincylee@example.com', '7890123456', '8901 Cedar Avenue');














INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0001', 'Alice', 'Johnson', 'alicejohnson@example.com', '1234567890', '1234 Elm Street', 'M0001');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0002', 'Bob', 'Smith', 'bobsmith@example.com', '9876543210', '5678 Oak Avenue', 'M0001');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0003', 'Charlie', 'Brown', 'charliebrown@example.com', '5678901234', '7890 Maple Lane', 'M0002');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0004', 'David', 'Williams', 'davidwilliams@example.com', '3456789012', '4567 Pine Street', 'M0002');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0005', 'Eve', 'Lee', 'evelee@example.com', '7890123456', '8901 Cedar Avenue', 'M0003');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0006', 'Frank', 'Taylor', 'franktaylor@example.com', '2345678901', '2345 Birch Lane', 'M0003');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0007', 'Grace', 'Miller', 'gracemiller@example.com', '8901234567', '6789 Willow Street', 'M0004');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0008', 'Harry', 'Jones', 'harryjones@example.com', '4567890123', '3456 Oak Avenue', 'M0004');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0009', 'Ivy', 'Martin', 'ivymartin@example.com', '9012345678', '7890 Elm Street', 'M0005');

INSERT INTO cashier (cashier_id, first_name, last_name, email, phone_number, address, manager_id)
VALUES ('E0010', 'Jack', 'Davis', 'jackdavis@example.com', '3456789012', '5678 Cedar Avenue', 'M0005');

