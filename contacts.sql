-- Creating the Contact Book Database
CREATE DATABASE contacts;

-- creating tables
USE contacts;

-- Create the contacts table
CREATE TABLE contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address TEXT
);

-- Inserting sample data
INSERT INTO contacts (first_name, last_name, phone_number, email, address)
VALUES
('Anani', 'Hugo', '555-1234', 'anani@example.com', '1234 Elm Street, Springfield'),
('Alice', 'Doe', '555-5678', 'alice@example.com', '5678 Oak Street, Springfield');
