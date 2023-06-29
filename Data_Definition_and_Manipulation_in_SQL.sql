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






-- Creating the customers table







-- Creating the items table









#############################
-- Task Three: Data Manipulation
-- By the end of Task 3, you will be able to insert records into the tables created.
#############################

-- Insert five (5) records into the sales table





-- Insert five (5) records into the customers table






-- Insert five (5) records into the items table






#############################
-- Task Four: Data Manipulation - Part 2
-- By the end of Task 4, you will be able to upload a csv file into your database 
-- and insert records into duplicate tables. 
#############################

-- Create the companies table and upload the CSV file into the table







-- Create the sales_dup table







-- Create the customers_dup table






-- Insert records from sales table into sales_dup table




-- Insert records from customers table into customers_dup table






#############################
-- Task Five: Data Definition and Manipulation
-- By the end of this task, you will be able to alter, rename and update data in tables in a database.
#############################

-- Add a new column gender after the last_name field
-- We will perform this task using ALTER on the customers_dup table



-- Insert new records to the customers_dup table






-- Create a companies_dup table






-- Insert records from companies table into the companies_dup table







-- ALTER the companies_dup table to add a UNIQUE KEY constraint
-- to the headquarters_phone_number field.



-- Change the company_id column to be auto_increment



-- Change the headquarters_phone_number field to VARCHAR(255) NOT NULL




-- Use RENAME to give the sales_dup table a new name called sales_data



-- We will UPDATE some records in the customers_dup table



#############################
-- Task Six: Drop Vs. Truncate Vs. Delete
-- By the end of task 6, you will learn how to use SQL drop, truncate and delete statements. 
-- In addition, you will understand the difference between SQL drop, truncate and delete statements.
#############################


-- DROP the customers_dup table



-- TRUNCATE the sales_data table




-- DELETE records from the companies_dup table



















