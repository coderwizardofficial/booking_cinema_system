SHOW DATABASES;

CREATE DATABASE cinema_booking_system;

USE cinema_booking_system;

CREATE TABLE film (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL UNIQUE,
   length_min INT NOT NULL
);

SHOW TABLES;

SELECT * FROM film;

DESCRIBE film;

CREATE TABLE customers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(40),
    last_name VARCHAR (34) NOT NULL,
    email VARCHAR (50) NOT NULL UNIQUE
);    

SHOW TABLES;

SELECT * FROM customers;

DESCRIBE customers;

CREATE TABLE rooms(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    no_seats INT NOT NULL
);

SHOW TABLES;

DESCRIBE rooms;

CREATE TABLE screenings (
	id INT PRIMARY KEY AUTO_INCREMENT,
    film_id INT NOT NULL,
    room_id INT NOT NULL,
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

SHOW TABLES;

DESCRIBE screenings;

CREATE TABLE seats (
	id INT PRIMARY KEY AUTO_INCREMENT,
    rosw CHAR(1) NOT NULL,
    number INT NOT NULL,
    room_id INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

SHOW TABLES;

DESCRIBE screenings;

CREATE TABLE bookings(
	id INT PRIMARY KEY AUTO_INCREMENT,
    screening_id INT NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (screening_id) REFERENCES screenings(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

SHOW TABLES;

DESCRIBE screenings;

CREATE TABLE reserved_seat(
	id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    seat_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES bookings(id),
    FOREIGN KEY (seat_id) REFERENCES seats (id)
);

SHOW TABLES;

DESCRIBE reserved_seat;









