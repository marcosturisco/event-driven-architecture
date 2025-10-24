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
('c1', 'Alice Silva', 'alice.silva@example.com', '2025-10-24'),
('c2', 'Bruno Costa', 'bruno.costa@example.com', '2025-10-24');

INSERT INTO accounts (id, client_id, balance, created_at) VALUES
('a1', 'c1', 1000, '2025-10-24'),
('a2', 'c2', 1500, '2025-10-24');

CREATE DATABASE IF NOT EXISTS `wallet-consumer`;

USE `wallet-consumer`;

CREATE TABLE IF NOT EXISTS balances (
    id varchar(36) PRIMARY KEY,
    account_id VARCHAR(255),
    balance INT DEFAULT 0
);
