CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin varchar(17) UNIQUE NOT NULL,
    manufacturer TEXT,
    model TEXT,
    year YEAR,
    color TEXT
);

-- Customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT,
    cust_name TEXT,
    cust_phone TEXT,
    cust_email TEXT,
    cust_address TEXT,
    cust_city TEXT,
    cust_state TEXT,
    cust_country TEXT,
    cust_zipcode TEXT
);

-- Salespersons table
CREATE TABLE salespersons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    staff_id TEXT,
    name TEXT,
    store TEXT
);

-- Invoices table
CREATE TABLE invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number TEXT,
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);