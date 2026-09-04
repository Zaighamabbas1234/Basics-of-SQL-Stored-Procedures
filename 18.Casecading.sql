CREATE DATABASE if not exists shop;
USE shop;

CREATE TABLE Customers
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_amount INT,

    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO Customers
VALUES
(1, 'Ali'),
(2, 'Ahmed');

select * from Customers;

INSERT INTO Orders
VALUES
(101, 1, 500),
(102, 1, 700),
(103, 2, 300);

select * from Orders;

DELETE FROM Customers
WHERE customer_id = 1;

select * from Customers;
select * from Orders;

UPDATE Customers
SET customer_id = 20
WHERE customer_id = 2;

select * from Customers;
select * from Orders;

drop table if exists Customers;
drop table if exists Orders;

drop database if exists shop;
