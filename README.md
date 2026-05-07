# Customer-Orders-SQL-Database-Project

## Project Overview

This project is a simple beginner-level SQL database project that models a small customer order system. The database includes customers, products, orders, order items, and payments.

The goal of this project is to practice relational database design and write SQL queries that answer buisness-style questions, such as total revenue, top-selling products, customer spending, and monthly sales.

## Skills Used 

- SQL
- SQLite
- Database design
- Primary keys and Foreign keys
- Joins
- Aggregate functions
- Grouping and sorting
- Filtering data
- Calculated columns

## Database Tables

The project includes five tables:

- 'customers' - stores customer information
- 'products' - stores product names, categories, prices, and stock quantities
- 'orders' - stores order dates, statuses, and customer IDs
- 'order_items' - connects orders to products and stores quantites
- 'payments' -- stores payment method, date, and amount

## Files

customer-orders-sql-project/
|-- README.md
|-- customer_orders.db
|-- sql/
    |-- create_tables.sql
    |-- insert_data.sql
    |-- analysis_queries.sql


## HOW TO RUN THE PROJECT:
1) Clone or Download the repository(click green "Code" button to download)
1) Open project in a new terminal or Codespace(if using Git)
2) start SQL  ---> sqlite3 customer_orders.db
3) run the table creation file --> .read sql/create_tables.sql
4) run the sample data file --> .read sql/insert_data.sql
5) run the analysis queries --> .read sql/analysis_queries.sql
6) optional display settings for easier reading in SQL(recommended) 
    .headers on
    .mode column

## Example Questions Answered

This project uses SQL queries to answer questions like: 

What is the total revenue?
Which payment method generated the most revenue?
Which customers spent the most?
Which producst sold the most?
Which products generated the most revenue?
Which orders were over $50?
What was the monthly revenue?
Which products have low stock?

## Project Summary

In this project I Practiced designing a relational database and writing SQL queries to analyze customer order data. I used multiple related tables and joined them together to answer realistic buisness questions.