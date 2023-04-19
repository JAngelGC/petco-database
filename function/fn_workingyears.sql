DELIMITER //

CREATE FUNCTION fn(
	worker_id VARCHAR(10)
) 
RETURNS VARCHAR(30)
BEGIN
  DECLARE startdate DATE;
  DECLARE work_years INT;

  IF SUBSTRING(worker_id, 1, 1) = 'M' THEN 
    SELECT start_date INTO startdate FROM manager WHERE manager_id = worker_id;
    SET work_years = CURDATE() - startdate ;
  END IF;

  IF SUBSTRING(worker_id, 1, 1) = 'E' THEN 
    SELECT start_date INTO startdate FROM cashier WHERE cashier_id = worker_id;
    SET work_years = CURDATE() - startdate ;
  END IF;

  SET work_years = CURDATE() - startdate ;
  RETURN CONCAT((work_years DIV 10000), ' years ', (MOD(work_years, (work_years DIV 10000)) - MOD(work_years, 100)), ' months ', (MOD(work_years, 100)), ' days');
END;
//
DELIMITER ;


-- CONCAT((work_years DIV 10000), ' years ', (MOD(work_years, 10000) - MOD(work_years, 100)), ' months ', (MOD(work_years, 100)), ' days');
