--Q1: monthly Revenue by Category
SELECT d.month, p.category, sum(f.revenue) AS total_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id 
JOIN dim_product d ON f.product_id = p.product_id
GROUP BY d.month, p.category;

--Q2: Top 2 Stores 
SELECT s.store_name, sum(f.revenue) AS total_revenue
FROM fact_sales f
JOIN dim.store s ON f.store_id = s.store_id 
GROUP BY s.store_name
ORDER BY total_revenue DESC
LIMIT 2;

--Q3: Month-over-month trend
SELECT d.month, sum(f.revenue) AS total_revenue
FROM fact_sales f
join dim_date d ON f.date_id = d.date_id
GROUP BY d.month
ORDER BY d.month;