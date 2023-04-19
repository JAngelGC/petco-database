DELIMITER //

CREATE PROCEDURE sp_get_last_sales()
BEGIN
    DECLARE done INT DEFAULT 0;  -- flag to indicate if cursor is done
    DECLARE var_sale_id INT;
    DECLARE var_dale_date TIMESTAMP;


    -- DECLARE cur_time TIMESTAMP;
    -- SET cur_time = CURRENT_TIMESTAMP();

    -- DECLARE hour_dif INT;
    -- SET hour_dif = 

    -- Declare a cursor
    DECLARE cur CURSOR FOR SELECT sale_id, sale_date FROM sale WHERE TIMESTAMPDIFF(HOUR, sale_date, CURRENT_TIMESTAMP()) < 8;

    -- Declare variables to store fetched values



    -- Declare a handler for when there are no more rows to fetch
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    -- Open the cursor
    OPEN cur;

    -- Fetch rows from the cursor
    read_loop: LOOP
    FETCH cur INTO var_sale_id, var_dale_date; -- fetch data into variables
        IF done THEN
            LEAVE read_loop;      -- exit loop when no more rows to fetch
        END IF;
        

        INSERT INTO saleRecord (sale_id, sale_date) VALUES (var_sale_id, var_dale_date);

        
    END LOOP;

    -- Close the cursor
    CLOSE cur;

END //
DELIMITER ;