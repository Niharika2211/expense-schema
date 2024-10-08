CREATE DATABASE IF NOT EXISTS transactions;
USE transactions;

CREATE TABLE IF NOT EXISTS transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount INT,
    description VARCHAR(255)
);

CREATE USER IF NOT EXISTS 'expense'@'%' IDENTIFIED BY 'ExpenseApp@1';
GRANT ALL ON transactions.* TO 'expense'@'%';
FLUSH PRIVILEGES;




INSERT INTO transactions (amount, description)
VALUES
(150, 'Grocery shopping'),
(300, 'Utility bill payment'),
(50, 'Coffee with friends'),
(2000, 'Monthly rent'),
(120, 'Gym membership'),
(500, 'Online shopping'),
(60, 'Dinner at restaurant'),
(700, 'Car maintenance'),
(100, 'Movie tickets'),
(250, 'Electronics purchase');

