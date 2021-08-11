-- create database
DROP DATABASE IF EXISTS online_hotel_booking;

CREATE DATABASE online_hotel_booking;

USE online_hotel_booking;

CREATE TABLE room (
	id INT PRIMARY KEY AUTO_INCREMENT,
	description TEXT,
	number_of_person INT,
	have_private_bathroom BOOLEAN,
	price REAL
);

CREATE TABLE reservation (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_room INT NOT NULL REFERENCES room(id),
	check_in_date DATE,
	check_out_date DATE,
	full_name VARCHAR(25),
	email VARCHAR(25),
	phone VARCHAR(20),
	special_request TEXT
);
