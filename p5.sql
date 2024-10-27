DROP FUNCTION IF EXISTS DivideNumbers;

DELIMITER //

CREATE FUNCTION DivideNumbers(numerator FLOAT, denominator FLOAT) 
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF denominator = 0 THEN
        RETURN NULL;
    END IF;
    
    RETURN numerator / denominator;
END //

DELIMITER ;

SELECT 
    order_id, quantity, DivideNumbers(quantity, 2) AS divided_quantity
FROM 
    order_details;