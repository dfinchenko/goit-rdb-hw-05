SELECT 
    order_details.*
FROM 
    order_details
WHERE 
    order_details.order_id IN (
        SELECT orders.id 
        FROM orders 
        WHERE orders.shipper_id = 3
    );