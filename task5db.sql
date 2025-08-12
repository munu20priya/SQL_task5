 create database task5;
 CREATE TABLE Customers(
   customer_id INT PRIMARY KEY AUTO_INCREMENT,
   customer_name VARCHAR(100),
   email VARCHAR(100),
   mobilenumber VARCHAR(15),
   address TEXT
   );
CREATE TABLE Orders(
 order_id INT PRIMARY KEY AUTO_INCREMENT,
 customer_id INT,
 customer_name VARCHAR(100),
 product_name VARCHAR(50),
 product_id INT,
 order_date DATE,
 total_amount DECIMAL(10,2),
 FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
  
 );
 INSERT INTO customers (customer_id, customer_name, email) VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'Charlie', 'charlie@example.com');

INSERT INTO orders (order_id, customer_id, product_name, product_id) VALUES
(101, 1, 'Laptop', 1001),
(102, 1, 'Mouse', 1002),
(103, 2, 'Keyboard', 1003),
(104, 3, 'Monitor', 1004);
