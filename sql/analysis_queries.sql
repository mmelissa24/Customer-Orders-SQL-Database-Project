-- view all customers
SELECT *
FROM customers;

-- view all products 
SELECT *
FROM products;

-- find the total revenue from all payments
SELECT SUM(amount) AS total_revenue
FROM payments;

--find total total revenue by payment method
SELECT 
    payment_method,
    sum(amount) AS total_revenue
FROM payments
GROUP BY payment_method
ORDER BY total_revenue DESC;

--find customers who placed orders
SELECT 
    customers.customer_id,
    customers.first_name,
    customers.last_name,
    orders.order_id,
    orders.order_date,
    orders.order_status
FROM customers
JOIN orders
    ON customer.customer_id = orders.customer_id
ORDER BY orders.order_date;

--find each customer's total spending
SELECT 
    customers.customer_id,
    customers.first_name,
    customers.last_name,
    SUM(payments.amount) AS total_spent
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN payments
    ON orders.order_id = payments.order_id
GROUP BY customers.customer_id, customers.first_name, customers.last_name
ORDER BY total_spent DESC;

--find the products sold in each order
SELECT 
    orders.order_id,
    products.product_name,
    products.category,
    order_items.quantity,
    products.price,
    order_items.quantity * products.price AS item_total
FROM orders
JOIN order_items
    ON orders.order_id = order_items.order_id
JOIN products
    ON order_items.product_id = products.product_id
ORDER BY orders.order_id;

--find total quantity sold by product
SELECT 
    products.product_name,
    SUM(order_items.quantity) AS total_quantity_sold
FROM products
JOIN order_items
    ON products.product_id = order_items.product_id
GROUP BY products.product_name
ORDER BY total_quantity_sold DESC;

--find total revenue by product
SELECT 
    products.product_name,
    SUM(order_items.quantity * products.price) AS product_revenue
FROM products
JOIN order_items
    ON products.product_id = order_items.product_id
GROUP BY products.product_name
ORDER BY product_revenue DESC;

--find orders over $50
SELECT 
    orders.order_id,
    customers.first_name,
    customers.last_name,
    payments.amount
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id
JOIN payments
    ON orders.order_id = payments.order_id
WHERE payments.amount > 50
ORDER BY payments.amount DESC;

-- Find monthly revenue
SELECT 
    strftime('%Y-%m', payment_date) AS month,
    SUM(amount) AS monthly_revenue
FROM payments
GROUP BY month
ORDER BY month;

--find low-stock products
SELECT 
    product_name,
    category,
    stock_quantity
FROM products
WHERE stock_quantity < 40
ORDER BY stock_quantity ASC;