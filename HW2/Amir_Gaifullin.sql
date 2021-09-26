CREATE DATABASE yandex_taxi_hw2;

create table client (
	id serial,
	name varchar,
	number varchar,
	rating decimal
);

insert into client (name, number, rating) values ('Makson', '+79019992089', 4.51);
insert into client (name, number, rating) values ('Amir', '+79019992088', 4.52);
insert into client (name, number, rating) values ('Grisha', '+79019992087', 4.53);
insert into client (name, number, rating) values ('Makar', '+79019992086', 4.54);
insert into client (name, number, rating) values ('Denis', '+79019992085', 4.55);
insert into client (name, number, rating) values ('Murat', '+79019992084', 4.56);
insert into client (name, number, rating) values ('Ramazan', '+79019992083', 4.57);
insert into client (name, number, rating) values ('Roman', '+79019992082', 4.58);
insert into client (name, number, rating) values ('Timur', '+79019992081', 4.59);
insert into client (name, number, rating) values ('Andrey', '+79019992080', 4.60);

create table driver (
	id serial,
	name varchar,
	number varchar,
	car varchar,
	rating decimal
);

insert into driver (name, number, car, rating) values ('Amur', '+79019992020','LADA Granta', 4.81);
insert into driver (name, number, car, rating) values ('Rafus', '+79019992021','LADA Priora', 4.82);
insert into driver (name, number, car, rating) values ('Mamin', '+79019992022','LADA Granta', 4.83);
insert into driver (name, number, car, rating) values ('Mika', '+79019992023','KIA RIO', 4.84);
insert into driver (name, number, car, rating) values ('Carlo', '+79019992024','LADA Granta', 4.85);
insert into driver (name, number, car, rating) values ('Soska', '+79019992025','LADA Granta', 4.86);
insert into driver (name, number, car, rating) values ('Hwan', '+79019992026','KIA RIO', 4.87);
insert into driver (name, number, car, rating) values ('Clsad', '+79019992027','LADA Niva', 4.88);
insert into driver (name, number, car, rating) values ('Yuriy', '+79019992028','KIA RIO', 4.89);
insert into driver (name, number, car, rating) values ('Danil', '+79019992029','LADA Calina', 4.80);


create table application (
	id_app serial,
	id_client INT,
	id_driver INT
);

insert into application (id_client, id_driver) values (0,0);
insert into application (id_client, id_driver) values (1,1);
insert into application (id_client, id_driver) values (2,2);
insert into application (id_client, id_driver) values (3,3);
insert into application (id_client, id_driver) values (4,4);
insert into application (id_client, id_driver) values (5,5);
insert into application (id_client, id_driver) values (6,6);
insert into application (id_client, id_driver) values (7,7);
insert into application (id_client, id_driver) values (8,8);
insert into application (id_client, id_driver) values (9,9);



create table rates (id INT, rate_value varchar);

insert into rates (id, rate_value) values (1, 'econom');
insert into rates (id, rate_value) values (2, 'comfort');
insert into rates (id, rate_value) values (3, 'bussines');

create table orders (
    date varchar,
    price INT,
    route varchar,
    id_app INT,
    id_rate INT
);

insert into orders (date, price, route, id_app, id_rate) values ('10-10-21', 120, 'Gavrilova 21', 1, 1);
insert into orders (date, price, route, id_app, id_rate) values ('11-10-21', 121, 'Gavrilova 22', 2, 2);
insert into orders (date, price, route, id_app, id_rate) values ('12-10-21', 122, 'Gavrilova 23', 3, 2);
insert into orders (date, price, route, id_app, id_rate) values ('13-10-21', 123, 'Gavrilova 24', 4, 3);
insert into orders (date, price, route, id_app, id_rate) values ('14-10-21', 124, 'Gavrilova 25', 5, 1);
insert into orders (date, price, route, id_app, id_rate) values ('15-10-21', 125, 'Gavrilova 26', 6, 1);
insert into orders (date, price, route, id_app, id_rate) values ('16-10-21', 126, 'Gavrilova 27', 7, 2);
insert into orders (date, price, route, id_app, id_rate) values ('17-10-21', 127, 'Gavrilova 28', 8, 2);
insert into orders (date, price, route, id_app, id_rate) values ('18-10-21', 128, 'Gavrilova 29', 9, 1);
insert into orders (date, price, route, id_app, id_rate) values ('19-10-21', 129, 'Gavrilova 30', 10, 3);
