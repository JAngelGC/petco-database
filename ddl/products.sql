USE Petco;

-- Discount
INSERT INTO discount (discount_id, discount_percentage, start_date, end_date)
VALUES ('D0001', 10, '2023-04-14', '2023-04-20');

INSERT INTO discount (discount_id, discount_percentage, start_date, end_date)
VALUES ('D0002', 20, '2023-04-14', '2023-04-21');

INSERT INTO discount (discount_id, discount_percentage, start_date, end_date)
VALUES ('D0003', 15, '2023-04-14', '2023-04-22');

INSERT INTO discount (discount_id, discount_percentage, start_date, end_date)
VALUES ('D0004', 25, '2023-04-14', '2023-04-23');

INSERT INTO discount (discount_id, discount_percentage, start_date, end_date)
VALUES ('D0005', 30, '2023-04-14', '2023-04-24');

INSERT INTO discount (discount_id, discount_percentage, start_date, end_date)
VALUES ('D0006', 12, '2023-04-14', '2023-04-25');



-- Category
INSERT INTO category (category_id, category_name)
VALUES ('CA001', 'Electronics');

INSERT INTO category (category_id, category_name)
VALUES ('CA002', 'Clothing');

INSERT INTO category (category_id, category_name)
VALUES ('CA003', 'Home Appliances');

INSERT INTO category (category_id, category_name)
VALUES ('CA004', 'Furniture');

INSERT INTO category (category_id, category_name)
VALUES ('CA005', 'Books');

INSERT INTO category (category_id, category_name)
VALUES ('CA006', 'Beauty & Personal Care');


-- Products
INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0001', 'Smartphone', 799.99, 10, 'CA001', 'D0001');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0002', 'T-Shirt', 29.99, 50, 'CA002', 'D0002');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0003', 'Refrigerator', 999.99, 5, 'CA003', 'D0003');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0004', 'Sofa', 599.99, 3, 'CA004', 'D0004');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0005', 'Novel', 14.99, 20, 'CA005', 'D0005');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0006', 'Shampoo', 9.99, 30, 'CA006', 'D0006');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0007', 'Laptop', 1499.99, 8, 'CA001', 'D0001');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0008', 'Dress', 79.99, 20, 'CA002', 'D0002');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0009', 'Television', 699.99, 6, 'CA003', 'D0003');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0010', 'Bed', 499.99, 4, 'CA004', 'D0004');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0011', 'Guitar', 299.99, 10, 'CA005', 'D0005');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id)
VALUES ('P0012', 'Toothpaste', 2.99, 50, 'CA006', 'D0006');



-- Provider
INSERT INTO provider (provider_id, provider_name, email, phone_number, address)
VALUES ('PR001', 'ABC Supplier', 'abc@example.com', '1234567890', '1234 Elm Street');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address)
VALUES ('PR002', 'XYZ Distributors', 'xyz@example.com', '9876543210', '5678 Oak Avenue');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address)
VALUES ('PR003', 'GHI Manufacturers', 'ghi@example.com', '4567890123', '9012 Maple Drive');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address)
VALUES ('PR004', 'JKL Enterprises', 'jkl@example.com', '7890123456', '3456 Pine Lane');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address)
VALUES ('PR005', 'MNO Suppliers', 'mno@example.com', '2109876543', '6789 Cedar Road');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address)
VALUES ('PR006', 'PQR Distributors', 'pqr@example.com', '5432109876', '7890 Birch Street');


