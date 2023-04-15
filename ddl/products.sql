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
INSERT INTO category (category_id, category_name) VALUES ('CA001', 'Dogs');
INSERT INTO category (category_id, category_name) VALUES ('CA002', 'Cats');
INSERT INTO category (category_id, category_name) VALUES ('CA003', 'Birds');
INSERT INTO category (category_id, category_name) VALUES ('CA004', 'Fish');
INSERT INTO category (category_id, category_name) VALUES ('CA005', 'Small Animals');
INSERT INTO category (category_id, category_name) VALUES ('CA006', 'Reptiles');


-- Products
INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0001', 'Dog Food', 19.99, 100, 'CA001', 'D0001');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0002', 'Cat Food', 15.99, 80, 'CA002', 'D0002');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0003', 'Bird Cage', 39.99, 50, 'CA003', 'D0003');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0004', 'Fish Tank', 99.99, 30, 'CA004', 'D0004');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0005', 'Hamster Cage', 29.99, 20, 'CA005', 'D0005');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0006', 'Terrarium', 79.99, 10, 'CA006', 'D0006');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0007', 'Dog Leash', 9.99, 50, 'CA001', 'D0001');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0008', 'Cat Scratcher', 24.99, 30, 'CA002', 'D0002');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0009', 'Bird Seed', 5.99, 100, 'CA003', 'D0003');

INSERT INTO product (product_id, product_name, price, stock, category_id, discount_id) 
VALUES ('P0010', 'Fish Food', 3.99, 200, 'CA004', 'D0004');


-- Provider
INSERT INTO provider (provider_id, provider_name, email, phone_number, address) 
VALUES ('PR001', 'ABC Pet Supplies', 'abc@example.com', '123-456-7890', '1234 Elm St, Anytown, USA');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address) 
VALUES ('PR002', 'XYZ Pet Products', 'xyz@example.com', '987-654-3210', '5678 Oak St, Othertown, USA');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address) 
VALUES ('PR003', 'Petco Suppliers', 'petco@example.com', '555-123-4567', '7890 Maple St, Yetanothertown, USA');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address) 
VALUES ('PR004', 'Paws and Claws', 'pawsclaws@example.com', '111-222-3333', '2345 Cedar St, Animaltown, USA');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address) 
VALUES ('PR005', 'Fur Friends', 'furfriends@example.com', '444-555-6666', '6789 Pine St, Petville, USA');

INSERT INTO provider (provider_id, provider_name, email, phone_number, address) 
VALUES ('PR006', 'Whiskers and Paws', 'whiskerspaws@example.com', '777-888-9999', '8901 Birch St, Furrington, USA');


