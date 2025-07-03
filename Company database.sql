-- STEP 0: Create and select the database
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- STEP 1: Create base tables

-- Create 'departments' table first (referenced later)
CREATE TABLE IF NOT EXISTS departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Create 'employees' table with foreign key reference
CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- STEP 2: Insert sample data

-- Insert into 'departments'
INSERT INTO departments (department_id, department_name) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance');

-- Insert into 'employees'
INSERT INTO employees (emp_id, name, department_id, salary) VALUES
(1, 'Ankit', 101, 70000),
(2, 'Riya', 102, 50000),
(3, 'Rahul', 101, 80000),
(4, 'Sanya', 103, 65000);

-- STEP 3: Create a complex view with JOIN, WHERE, ORDER BY

CREATE OR REPLACE VIEW high_earners AS
SELECT 
    e.emp_id,
    e.name,
    d.department_name,
    e.salary
FROM 
    employees e
JOIN 
    departments d 
ON 
    e.department_id = d.department_id
WHERE 
    e.salary > 60000
ORDER BY 
    e.salary DESC;

-- STEP 4: Query the complex view
SELECT * FROM high_earners;

-- STEP 5: Create a new table to demonstrate abstraction and security

CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100),
    role VARCHAR(20)
);

-- Insert into 'users'
INSERT INTO users (user_id, username, email, password, role) VALUES
(1, 'ankitp', 'ankit@xyz.com', 'abc123', 'student'),
(2, 'admin1', 'admin@xyz.com', 'adminpass', 'admin');

-- STEP 6: Create a secure view (abstracting password column)

CREATE OR REPLACE VIEW user_summary AS
SELECT 
    user_id,
    username,
    email,
    role
FROM 
    users;

-- STEP 7: Query the abstracted view
SELECT * FROM user_summary;

