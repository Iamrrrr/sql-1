SELECT customer_name,order_date,total_amount,city
FROM customers c
INNER JOIN orders o
ON c.customer_id=o.customer_id
WHERE city='New York';


SELECT customer_name,avg(total_amount) as average,city
FROM customers c
INNER JOIN orders o
ON c.customer_id=o.customer_id
WHERE city='New York'
GROUP BY customer_name,city;