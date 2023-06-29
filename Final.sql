##########################################################
##########################################################

# Data Definition and Manipulation in SQL

##########################################################
##########################################################


#############################
-- Task Two: Data Definition
-- In this task, you will learn how to create database objects (tables) in the database you created in task 1.
#############################

-- Creating the sales table
CREATE TABLE sales (
purchase_number INT PRIMARY KEY,
date_of_purchase DATE NOT NULL,
customer_id INT NOT NULL,
item_code VARCHAR(10) NOT NULL
);

-- Creating the customers table
CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
email_address VARCHAR(255),
number_of_complaints INT
);

-- Creating the items table
CREATE TABLE items (
item_code VARCHAR(10) PRIMARY KEY,
item VARCHAR(255),
unit_price_usd DECIMAL(5,2),
company_id INT,
company_name VARCHAR(255) NOT NULL
);

#############################
-- Task Three: Data Manipulation
-- By the end of Task 3, you will be able to insert records into the tables created.
#############################

-- Insert five (5) records into the sales table
INSERT INTO sales (purchase_number, date_of_purchase, customer_id, item_code)
VALUES (1, '2023-06-28' , 1, 'A11'),
(2, '2023-06-27', 2, 'B11'),
(3, '2023-06-27', 2, 'A12'),
(4, '2023-06-30', 3, 'C11'),
(5, '2023-06-30', 4, 'B12')
;

--Retrieve data from sales table
SELECT * FROM sales;

-- Insert five (5) records into the customers table
INSERT INTO customer (customer_id, first_name, last_name, email_address, number_of_complaints)
VALUES (1, 'Olayinka','Arimoro', 'aoidatscimentoring@gmail.com' , 0),
		(2, 'Marshall', 'Smith', 'marshallsmith@yahoo.uk', 2),
		(3, 'Ayomikun', 'Isijola', 'ayomikunisijola@gmail.com', 1),
		(4, 'Dorcas', 'Jacobs', 'dorcas39@gmail.com', 0),
		(5, 'Ebenezer', 'Jackson', 'ebenezerjackson1990@academy.com', 5)
		;

--Retrieve data from customer table
SELECT * FROM customer;

-- Insert five (5) records into the items table
INSERT INTO items
VALUES ('A11', 'Flask', 12.50, 1, 'Company A'),
		('A12', 'Lamp', 10, 1, 'Company A'),
		('B11', 'Desk', 50, 2, 'Company B'),
		('B12', 'Chair', 150, 2, 'Company B'),
		('C11', 'Bicycle', 35.50, 3, 'Company C')
		;

--Retrieve data from item table
SELECT * FROM items;

#############################
-- Task Four: Data Manipulation - Part 2
-- By the end of Task 4, you will be able to upload a csv file into your database 
-- and insert records into duplicate tables. 
#############################

-- Create the companies table and upload the CSV file into the table
CREATE TABLE companies (
company_id INT PRIMARY KEY,
company_name VARCHAR(255),
headquarters_phone_number VARCHAR(255)
);

--Retrieve data from companies table
SELECT * FROM companies;

-- Create the sales_dup table
CREATE TABLE sales_dup (
purchase_number INT PRIMARY KEY,
date_of_purchase DATE NOT NULL,
customer_id INT NOT NULL,
item_code VARCHAR(10) NOT NULL
);

-- Create the customers_dup table
CREATE TABLE customers_dup (
customer_id INT PRIMARY KEY,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
email_address VARCHAR(255),
number_of_complaints INT
);

-- Insert records from sales table into sales_dup table
INSERT INTO sales_dup
SELECT * FROM sales;

--Retrieve data from sales_dup
SELECT * FROM sales_dup;

-- Insert records from customers table into customers_dup table
INSERT INTO customers_dup
SELECT * FROM customers;

--Retrieve data from customers_dup
SELECT * FROM customers_dup;

#############################
-- Task Five: Data Definition and Manipulation
-- By the end of this task, you will be able to ALTER, RENAME and UPDATE data in tables in a database.
#############################

-- Add a new column gender after the last_name field
-- We will perform this task using ALTER on the customers_dup table
ALTER TABLE customers_dup
ADD COLUMN gender CHAR(2);

--Retrieve data from customers_dup table
SELECT * FROM customers_dup;

-- Insert new records to the customers_dup table
INSERT INTO customers_dup
VALUES (6, 'Israel', 'Hawkins', 'hawkins@yahoo.com', 2, 'M'),
		(7, 'Sharon', 'Metz', 'gracem21@yahoo.com', 11, 'M');

--Rename the sales_dup table to sales_data
ALTER TABLE sales_dup
RENAME TO sales_data;

--Retrieve data from sales_data
SELECT * FROM sales_data;

--Rename the unit_price_usd column in the items table to item_price
ALTER TABLE items
RENAME unit_price_usd TO item_price;

--Retrieve data from item_price
SELECT * FROM items;

--We will UPDATE come records in customers_dup table
--Retrieve data from customers_dup table
SELECT * FROM customers_dup;

--Update the first_name of the 6th record in customers_dup table
UPDATE customers_dup
SET first_name = 'Israel'
WHERE customer_id = 6;

#############################
-- Task Six: Drop Vs. Truncate Vs. Delete
-- By the end of task 6, you will learn how to use SQL drop, truncate and delete statements. 
-- In addition, you will understand the difference between SQL drop, truncate and delete statements.
#############################

-- DROP the customers_dup table
DROP TABLE customers_dup;

--Retrieve data from customers_dup table
SELECT * FROM customers_dup;


-- TRUNCATE the sales_data table
TRUNCATE TABLE sales_data;

--Retrieve data from sales_data table
SELECT * FROM sales_data;

-- DELETE records from the companies table
DELETE FROM companies
WHERE company_id = 3;

--Retrieve data from companies table
SELECT * FROM companies;


DELETE FROM companies;














