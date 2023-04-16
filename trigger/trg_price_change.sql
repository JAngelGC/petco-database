DELIMITER //

CREATE TRIGGER trg_price_change
AFTER UPDATE ON product
FOR EACH ROW
BEGIN
    IF NEW.price != OLD.price THEN
        INSERT INTO priceHistory (product_id, old_price, new_price, change_date)
        VALUES (OLD.product_id, OLD.price, NEW.price, CURDATE());
    END IF;
END;
//
DELIMITER ;