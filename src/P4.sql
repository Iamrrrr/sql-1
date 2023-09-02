-- Update Product Price
Update inventories
set price=12.00
where product_id=10001;

-- Bonus
UPDATE inventories
SET price=price*1.1
WHERE product_id=10001;
