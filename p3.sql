SELECT 
    inner_query.order_id,
    AVG(inner_query.quantity) AS avg_quantity
FROM 
    (SELECT *
     FROM 
         order_details 
     WHERE 
         quantity > 10) AS inner_query
GROUP BY 
    inner_query.order_id;