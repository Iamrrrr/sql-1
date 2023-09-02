-- Sales Analysis
SELECT order_id,sum(quantity) as TOTAL_QUANTITY,avg(quantity) as AVERAGE_QUANTITY
FROM sales
GROUP BY order_id;

-- Bonus
SELECT order_id,sum(s.quantity*price) as TOTAL_SALES_AMT,avg(s.quantity*price) as AVG_SALES_AMT
FROM sales s INNER JOIN
inventories i ON 
s.product_id=i.product_id
GROUP BY order_id;
