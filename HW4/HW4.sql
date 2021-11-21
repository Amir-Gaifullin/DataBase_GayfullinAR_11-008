CREATE DATABASE hotel_hw4;
\c hotel_hw4;

CREATE TABLE hotel (
	hotel_id INT IDENTITY PRIMARY KEY ,
	title VARCHAR(255) NOT NULL,
	addres VARCHAR(255) NOT NULL,
	category VARCHAR(255),
);

CREATE TABLE position (
	position_id INT IDENTITY PRIMARY KEY ,
	title VARCHAR(255)
);

CREATE TABLE staffer (
	staffer_id INT IDENTITY PRIMARY KEY ,
	name VARCHAR(255) NOT NULL,
	foreign_position_id INT FOREIGN KEY REFERENCES position(position_id) #one to many ,
	foreign_hotel_id INT CONSTRAINT UNIQUE FOREIGN KEY REFERENCES #one to one
	hotel(hotel_id)
);

CREATE TABLE room (
	room_id INT IDENTITY PRIMARY KEY ,
	numer INT,
	count_places INT,
	category VARCHAR(255),
	foreign_hotel_id INT CONSTRAINT UNIQUE FOREIGN KEY REFERENCES #one to one
);


CREATE TABLE clean (
	clean_id INT IDENTITY PRIMARY KEY ,
	time TIME,
	foreign_staffer_id INT FOREIGN KEY REFERENCES staffer(staffer_id), #one to many
	foreign_room_id INT FOREIGN KEY REFERENCES room(room_id) 
);


CREATE TABLE guest(
	guest_id INT IDENTITY PRIMARY KEY
	name VARCHAR(255),
	documents VARCHAR(255),
	contacts VARCHAR(255)
);

CREATE TABLE living (
	living_id serial,
	period DATETIME,
	pay INT,
	foreign_guest_id INT FOREIGN KEY REFERENCES guest(guest_id),
	foreign_room_id INT FOREIGN KEY REFERENCES room(room_id)
);
