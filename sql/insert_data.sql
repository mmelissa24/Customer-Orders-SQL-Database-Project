INSERT INTO customers (customer_id, first_name, last_name, email, city, state)
VALUES
(1, 'Isabella', 'Ramirez', 'isabella.ramirez@example.com', 'Los Angeles', 'CA'),
(2, 'Ethan', 'Chen', 'ethan.chen@example.com', 'San Diego', 'CA'),
(3, 'Maya', 'Patel', 'maya.patel@example.com', 'San Jose', 'CA'),
(4, 'Daniel', 'Garcia', 'daniel.garcia@example.com', 'Fresno', 'CA'),
(5, 'Olivia', 'Wilson', 'olivia.wilson@example.com', 'Sacramento', 'CA');

INSERT INTO  products (product_id, product_name, category, price, stock_quantity)
VALUES
(1, 'Wireless Mouse', 'Electronics', 24.99, 50),
(2, 'Laptop Stand', 'Office Supplies', 39.99, 30),
(3, 'Notebook', 'Office Supplies', 4.99, 100),
(4, 'Water Bottle', 'Accessories', 14.99, 75),
(5, 'USB-C Cable', 'Electronics', 9.99, 60),
(6, 'Desk Lamp', 'Home Office', 29.99, 25);

INSERT INTO orders (order_id, customer_id, order_date, order_status)
VALUES
(1, 1, '2026-01-05', 'Completed'),
(2, 2, '2026-01-08', 'Completed'),
(3, 3, '2026-01-12', 'Pending'),
(4, 1, '2026-02-02', 'Completed'),
(5, 4, '2026-02-10', 'Completed'),
(6, 5, '2026-02-15', 'Cancelled'),
(7, 2, '2026-03-01', 'Completed'),
(8, 3, '2026-03-05', 'Completed');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES
(1, 1, 1, 1),
(2, 1, 3, 4),
(3, 2, 2, 1),
(4, 2, 5, 2),
(5, 3, 4, 1),
(6, 4, 6, 1),
(7, 4, 3, 5),
(8, 5, 1, 2),
(9, 5, 4, 3),
(10, 6, 2, 1),
(11, 7, 5, 4),
(12, 7, 3, 10),
(13, 8, 6, 1),
(14, 8, 4, 2);

INSERT INTO payments (payment_id, order_id, payment_date, payment_method, amount)
VALUES
(1, 1, '2026-01-05', 'Credit Card', 44.95),
(2, 2, '2026-01-08', 'PayPal', 59.97),
(3, 3, '2026-01-12', 'Debit Card', 14.99),
(4, 4, '2026-02-02', 'Credit Card', 54.94),
(5, 5, '2026-02-10', 'Credit Card', 94.95),
(6, 6, '2026-02-15', 'Debit Card', 39.99),
(7, 7, '2026-03-01', 'PayPal', 89.86),
(8, 8, '2026-03-05', 'Credit Card', 59.97);