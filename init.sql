CREATE DATABASE IF NOT EXISTS wallet;

USE wallet;

CREATE TABLE IF NOT EXISTS clients (
    id varchar(255),
    name varchar(255),
    email varchar(255),
    created_at date
);

CREATE TABLE IF NOT EXISTS accounts (
    id varchar(255),
    client_id varchar(255),
    balance int,
    created_at date
);

CREATE TABLE IF NOT EXISTS transactions (
    id varchar(255),
    account_id_from varchar(255),
    account_id_to varchar(255),
    amount int,
    created_at date
);

INSERT INTO clients (id, name, email, created_at) VALUES
('c1', 'Grace Maia', 'grace.maia@example.com', '1999-12-24'),
('c2', 'Elaina Mendonca', 'elaina.mendonca@example.com', '1999-12-24');

INSERT INTO accounts (id, client_id, balance, created_at) VALUES
('a1', 'c1', 1000, '1999-12-24'),
('a2', 'c2', 1000, '1999-12-24');

CREATE DATABASE IF NOT EXISTS `wallet-consumer`;

USE `wallet-consumer`;

CREATE TABLE IF NOT EXISTS balances (
    id varchar(36) PRIMARY KEY,
    account_id_from VARCHAR(255),
    account_id_to VARCHAR(255),
    balance_account_id_from INT DEFAULT 0,
    balance_account_id_to INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO balances (id, account_id_from, account_id_to, balance_account_id_from, balance_account_id_to, created_at) VALUES
(UUID(), 'a1', 'a2', 1000, 1000, NOW());
