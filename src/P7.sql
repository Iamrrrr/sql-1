DELETE 
FROM customers
WHERE customer_id=10001;


DELETE 
FROM sales
WHERE customer_id=(SELECT customer_id
		   FROM customers
	           WHERE customer_id=10001);

DELETE 
FROM orders
WHERE customer_id=(SELECT customer_id
		   FROM customers
	           WHERE customer_id=10001);

