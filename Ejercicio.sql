create database db_bibliote;
use db_bibliote;

create table author(
    id int primary key auto_increment not null,
    name varchar(50) not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(50) null,
    phone varchar(11) null,
    create_at datetime,
    update_at datetime
);

create table books(
    id int primary key auto_increment not null,
    id_author int,
    code_book varchar(4) not null,
    name varchar(50) not null,
    title varchar(100) not null,
    publisher date not null, -- Corregido de plubisher a publisher
    isbn char(12), -- Corregido de sbn a isbn
    foreign key (id_author) references author (id),
    create_at datetime,
    update_at datetime
);

create table usuario (
    id int primary key auto_increment not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(50) null,
    telefono varchar(11),
    create_at datetime,
    update_at datetime
);

create table prestamo (
    id int primary key auto_increment not null,
    id_usuario int,
    id_libro int,
    fecha_prestamo date not null,
    fecha_devolucion date not null,
    foreign key (id_usuario) references usuario (id),
    foreign key (id_libro) references books (id),
    create_at datetime,
    update_at datetime
);
select*from author;
select*from books;
select*from usuario;
select*from prestamo;
