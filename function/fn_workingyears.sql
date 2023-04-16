DELIMITER //

CREATE FUNCTION fnWorkingYears(
	worker_id INT
) 
RETURNS INT
BEGIN
  DECLARE start_date DATE;
  DECLARE work_years INT;
  
  -- Getting the worker's start date
  SELECT start_date FROM manager, chashier WHERE manager_id == worker_id or chashier_id == worker_id;
  SET work_years = DATEDIFF(CURDATE(), start_date);
  
  RETURN work_years;
END;
//
DELIMITER ;

--