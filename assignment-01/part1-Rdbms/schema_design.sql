--customers TABLE 
CREATE TABLE customers (
    customers_id INT PRIMARY KEY,
    customers_name VARCHAR (100) NOT NULL,
    city VARCHAR (50) 
);

--products table 
 CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name varchar(100) NOT NULL,
    price Decimal (10,2)
 );

 --sales representatives
 CREATE TABLE sales_representatives(
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR (100)
 );

 --orders table 
 CREATE Table orders (
    orders_id INT PRIMARY KEY,
    customers_id INT,
    rep_id INT,
    orders_date DATE,
    Foreign Key (customer_id) REFERENCES customers(customers_id),
    Foreign Key (rep_id) REFERENCES sales_representatives(rep_id)
 );

 --Order items
 CREATE Table orders_items (
    orders_items_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    Foreign Key (order_id) REFERENCES orders(order_id)
    Foreign Key (product_id) REFERENCES products(product_id)
 );