SELECT p.product_id, p.product_name, o.order_id, o.customer_name
FROM products p
LEFT JOIN orders o
ON p.product_id = o.product_id

UNION

SELECT p.product_id, p.product_name, o.order_id, o.customer_name
FROM products p
RIGHT JOIN orders o
ON p.product_id = o.product_id;