-- CALL sp_make_sale('P0001', 'E0001', 'C0001', 10);
-- DROP PROCEDURE sp_make_sale;
DELIMITER //
CREATE PROCEDURE sp_make_sale(IN product_id VARCHAR(10), IN cashier_id VARCHAR(10), IN customer_id VARCHAR(10), IN quantity INT)
BEGIN

    DECLARE cur_quantity INT;
    DECLARE new_quantity INT;
    DECLARE price_product DECIMAL;
    DECLARE cur_time TIMESTAMP;

    START TRANSACTION;

        -- check for negative quantities
        IF quantity < 0 THEN
            SELECT 'Cannot accept negative quantities' as result;
            ROLLBACK;
        ELSE
            SELECT stock INTO cur_quantity FROM product WHERE product.product_id = product_id;
            SET new_quantity = cur_quantity - quantity;
    
            IF new_quantity < 0 THEN
                SELECT 'Cannot make the sale. Not enough stock' as result;
                ROLLBACK;
            ELSE
                -- save product price and timestamp
                SELECT price INTO price_product FROM product WHERE product.product_id = product_id;
                SET cur_time = CURRENT_TIMESTAMP();

                -- make the update to product stock
                UPDATE product 
                SET 
                    stock = new_quantity
                WHERE
                    product.product_id = product_id;

                -- make the sale
                INSERT INTO sale (product_id, cashier_id, customer_id, sale_date, total_amount) VALUES
                (product_id, cashier_id, customer_id, cur_time, price_product*quantity);

                -- print sale
                SELECT * from sale where sale.sale_date = cur_time;
                COMMIT;

            END IF;
        END IF;



END //
    
DELIMITER ;


