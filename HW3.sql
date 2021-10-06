/*1. Найти полеты (flights) из аэропорта Казани в Краснодар*/
select * from flights where departure_airport='KZN' and arrival_airport='MQF';
/*2. Найти все полеты из Москвы (все аэропорты) за 25 минут (за какую дату и час придумайте сами)*/
SELECT * FROM flights
Where (departure_airport='SVO' or departure_airport='VKO' or departure_airport='DME')
AND (scheduled_departure='2017-09-10 12:15:00+03' or scheduled_arrival='2017-08-18 12:40:00+03');
/*3. Показать все полеты в одной временной зоне (полеты и аэропорты отобразить вместе)*/
SELECT * FROM flights as b
JOIN (select * from airports_data as a where a.timezone = 'Europe/Moscow') as a on b.arrival_airport = a.airport_code
JOIN (select * from airports_data as a where a.timezone = 'Europe/Moscow') as c on b.departure_airport = c.airport_code 
