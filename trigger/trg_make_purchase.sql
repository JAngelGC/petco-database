DELIMITER //

CREATE TRIGGER trg_make_purchase
BEFORE UPDATE ON product 
FOR EACH ROW
BEGIN
    DECLARE my_output VARCHAR(255);
    -- make the insert to the purchase table
    -- update stock
    -- select arbitraries provider and manager
    IF NEW.stock = 0 THEN
        SELECT "Creating stock " INTO my_output;
        SET NEW.stock = 10;
        INSERT INTO purchase(product_id, quantity, provider_id, manager_id, purchase_date, total_amount) VALUES
        (OLD.product_id, 10, 'PR001', 'M0001', CURRENT_TIMESTAMP(), OLD.price*10);  

        
    END IF;

END //

DELIMITER ;