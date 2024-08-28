-- Crear la base de datos y seleccionarla
CREATE DATABASE db_biblioteca;
USE db_biblioteca;

-- Crear la tabla de autores
CREATE TABLE author (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NULL,
    phone VARCHAR(11),
    create_at DATETIME,
    update_at DATETIME
);

-- Crear la tabla de libros
CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_autor INT,
    code_book VARCHAR(4) NOT NULL,
    name VARCHAR(50) NOT NULL,
    title VARCHAR(100) NOT NULL,
    publisher DATE NOT NULL,
    sbn CHAR(12),
    FOREIGN KEY (id_autor) REFERENCES author (id),
    create_at DATETIME,
    update_at DATETIME
);

-- Crear la tabla de usuarios
CREATE TABLE user (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NULL,
    phone VARCHAR(11),
    created_at DATETIME,
    updated_at DATETIME
);

-- Crear la tabla de préstamos
CREATE TABLE loan (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INT,
    book_id INT,
    loan_date DATE NOT NULL,
    return_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (id),
    FOREIGN KEY (book_id) REFERENCES books (id),
    created_at DATETIME,
    updated_at DATETIME
);