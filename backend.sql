CREATE DATABASE IF NOT EXISTS transactions;
USE transactions;

CREATE TABLE IF NOT EXISTS transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount INT,
    description VARCHAR(255)
);


INSERT INTO transactions (amount, description)
VALUES
(700, 'Car maintenance'),
(100, 'Movie tickets'),
(250, 'Electronics purchase');



CREATE USER IF NOT EXISTS 'expense'@'%' IDENTIFIED BY 'ExpenseApp@1';
GRANT ALL ON transactions.* TO 'expense'@'%';
FLUSH PRIVILEGES;





