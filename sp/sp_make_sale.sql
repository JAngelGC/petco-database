-- Write a stored procedure that implements the logic to make a sale.
-- receive the id of the product, the quantity and the id of the sale,
-- generate the appropriate record in the sales tables, and also work 
-- with a transaction that decrements the number of items available,
-- if the sale is not possible, rollback the transaction
-- (avoid negative numbers in quantity of items available).

--   sale_id VARCHAR(10) PRIMARY KEY,
--   product_id VARCHAR(10),
--   cashier_id VARCHAR(10),
--   customer_id VARCHAR(10),
--   sale_date DATE,
--   total_amount DECIMAL(10, 2),

-- call sp_make_sale('P0001', 'E0001', 'C0001', 2)
-- DROP PROCEDURE sp_make_sale;
DELIMITER //
CREATE PROCEDURE sp_make_sale(IN product_id VARCHAR(10), IN cashier_id VARCHAR(10), IN customer_id VARCHAR(10), IN quantity INT)
BEGIN

    IF quantity < 0 THEN
        SELECT 'Cannot accept negative quantities' as result;
    ELSE
        SELECT * FROM product WHERE product.product_id = product_id;
    END IF;


END //
    
DELIMITER ;


