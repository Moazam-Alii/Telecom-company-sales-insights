-- Create database only if it doesn't exist
CREATE DATABASE IF NOT EXISTS telecom_data;
USE telecom_data;


DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS calls;
DROP TABLE IF EXISTS bills;
DROP TABLE IF EXISTS customers;


CREATE TABLE customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(25),
    address TEXT,
    email VARCHAR(100),
    dob DATE
);


CREATE TABLE bills (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    bill_amount FLOAT,
    due_date DATE,
    last_payment_date DATE,
    total_calls_made INT,
    data_usage_mb INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE calls (
    call_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    call_type VARCHAR(20),
    call_status VARCHAR(20),
    destination_number VARCHAR(25),
    call_date DATE,
    call_start_time DATETIME,
    call_end_time DATETIME,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    plan_type VARCHAR(50),
    monthly_usage FLOAT,
    minutes_used INT,
    messages_sent INT,
    service_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

SELECT * FROM bills LIMIT 5;
SELECT * FROM calls LIMIT 5;
SELECT * FROM services LIMIT 5;


