--Q1: customers from mumbai with total order value 
SELECT c.customer_name, SUM(p.price * oi.quatity) AS total_value
FROM customers c 
JOIN orders o ON c.customer_id = o.customers_id
JOIN order_Items oi ON o.orders_id = oi.order_id
JOIN products p ON oi.products_id = p.products_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_name;

--Q2: Top 3 products by quantity 
SELECT p.products_name, sum(oi.quantity) AS total_qty
FROM products p 
JOIN order_items oi ON p.products_id = oi.products_id
GROUP BY p.products_name
GROUP BY total_qty DESC 
LIMIT 3;

--Q3:- Sales reps and number of customers
SELECT sr.rep_name, COUNT(DISTINCT o.customers__id) AS total_customers
FROM sales_representatives sr 
JOIN order o ON sr.rep_id = o.rep_id
GROUP BY sr.rep_name;

--Q4: Orders above 10000
SELECT o.orders_id, SUM(p.price * oi.quantity) AS total_values
FROM orders o 
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id
HAVING total_value > 10000
ORDER BY total_value DESC;

--Q5: Products never ordered 
SELECT p.Product_name
FROM Products p
LEFT JOIN order_Items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;