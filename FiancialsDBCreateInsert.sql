use FinancialData

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(100),
    account_type VARCHAR(50),
    open_date DATE
);

INSERT INTO accounts (account_id, account_name, account_type, open_date) VALUES
(1, 'John Doe', 'Savings', '2023-01-01'),
(2, 'Jane Smith', 'Checking', '2023-02-15'),
(3, 'Michael Brown', 'Investment', '2023-03-20'),
(4, 'Emily Davis', 'Savings', '2023-01-25'),
(5, 'Daniel Wilson', 'Checking', '2023-04-02'),
(6, 'Jessica Miller', 'Investment', '2023-02-18'),
(7, 'David Martinez', 'Savings', '2023-05-05'),
(8, 'Sarah Taylor', 'Checking', '2023-03-10'),
(9, 'James Anderson', 'Investment', '2023-01-30'),
(10, 'Karen Thomas', 'Savings', '2023-04-15');


CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    amount DECIMAL(10, 2),
    transaction_type VARCHAR(50)
);

INSERT INTO transactions (transaction_id, account_id, transaction_date, amount, transaction_type) VALUES
(1, 1, '2023-03-01', 1700.00, 'Deposit'),
(2, 2, '2023-03-05', 700.00, 'Withdrawal'),
(3, 3, '2023-04-01', 800.00, 'Deposit'),
(4, 4, '2023-04-10', 200.00, 'Withdrawal'),
(5, 5, '2023-04-15', 1500.00, 'Deposit'),
(6, 6, '2023-05-01', 300.00, 'Withdrawal'),
(7, 7, '2023-05-05', 1200.00, 'Deposit'),
(8, 8, '2023-05-10', 250.00, 'Withdrawal'),
(9, 9, '2023-05-15', 1000.00, 'Deposit'),
(10, 10, '2023-05-20', 500.00, 'Withdrawal');

CREATE TABLE account_balances (
    balance_id INT PRIMARY KEY,
    account_id INT,
    balance_date DATE,
    balance DECIMAL(10, 2)
);

INSERT INTO account_balances (balance_id, account_id, balance_date, balance) VALUES
(1, 1, '2023-03-01', 1700.00),
(2, 2, '2023-03-05', 300.00),
(3, 3, '2023-04-01', 800.00),
(4, 4, '2023-04-10', 200.00),
(5, 5, '2023-04-15', 1500.00),
(6, 6, '2023-05-01', 300.00),
(7, 7, '2023-05-05', 1200.00),
(8, 8, '2023-05-10', 250.00),
(9, 9, '2023-05-15', 1000.00),
(10, 10, '2023-05-20', 500.00);
