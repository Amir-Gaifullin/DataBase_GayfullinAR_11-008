CREATE DATABASE hotel_hw4;
\c hotel_hw4;

CREATE TABLE hotel (
	hotel_id INT PRIMARY KEY ,
	title VARCHAR(255) NOT NULL,
	addres VARCHAR(255) NOT NULL,
	category VARCHAR(255)
);

CREATE TABLE position (
	position_id INT PRIMARY KEY ,
	title VARCHAR(255)
);

CREATE TABLE staffer (
	staffer_id INT PRIMARY KEY ,
	name VARCHAR(255) NOT NULL,
	foreign_position_id INT,
	FOREIGN KEY (foreign_position_id) REFERENCES position(position_id),
	foreign_hotel_id INT,
	FOREIGN KEY (foreign_hotel_id) REFERENCES hotel(hotel_id),
	CONSTRAINT fk_hotel_hotel_id UNIQUE(foreign_hotel_id)
);

CREATE TABLE room (
	room_id INT PRIMARY KEY ,
	numer INT,
	count_places INT,
	category VARCHAR(255),
	foreign_hotel_id INT,
	FOREIGN KEY (foreign_hotel_id) REFERENCES hotel(hotel_id),
	CONSTRAINT fk_hotel_room_hotel_id UNIQUE(foreign_hotel_id)
);


CREATE TABLE clean (
	clean_id INT PRIMARY KEY ,
	time TIME,
	foreign_staffer_id INT,
	FOREIGN KEY (foreign_staffer_id) REFERENCES staffer(staffer_id),
	foreign_room_id INT,
	FOREIGN KEY (foreign_room_id) REFERENCES room(room_id) 
);


CREATE TABLE guest(
	guest_id INT PRIMARY KEY,
	name VARCHAR(255),
	documents VARCHAR(255),
	contacts VARCHAR(255)
);

CREATE TABLE living (
	living_id INT NOT NULL,
	period INTERVAL,
	pay INT,
	foreign_guest_id INT,
	FOREIGN KEY (foreign_guest_id) REFERENCES guest(guest_id),
	foreign_room_id INT,
	FOREIGN KEY (foreign_room_id) REFERENCES room(room_id)
);
