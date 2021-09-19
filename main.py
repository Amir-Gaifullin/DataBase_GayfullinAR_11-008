import json
from struct_taxi import Client, Driver, Order, Application, Rate

Clients = [Client('Michail', '+79035647834', '4,5', 1), Client('Artem', '+79035887834', '4,93', 2)]
Drivers = [Driver('Oleg', '+79036649824', 'Kia Rio', '5', 1), Driver('Nikita', '+79037749824', 'Lada Granta', '3,5', 2)]
Rates = Rate('Econom', 'Business', 'Comfort')
Applications = [Application(Clients[1].id, Drivers[0].id, Rates.econom),
                Application(Clients[1].id, Drivers[0].id, Rates.comfort)]
Orders = [Order(129, 'Gavrilova 42, pod 3', Clients[1].id, Drivers[0].id),
          Order(100, 'Gavrilova 56, pod 1', Clients[0].id, Drivers[1].id)]
with open('db1.json', 'a') as dbs:
    db = f'''
            "Clients": [
                 {vars(Clients[0])},
                 {vars(Clients[1])}
            ],
            "Drivers": [
                 {vars(Drivers[0])},
                 {vars(Drivers[1])}
            ],
            "Rates": [
                 {vars(Rates)}
            ],
            "Applications": [
                    {vars(Applications[0])},
                    {vars(Applications[1])}
            ],
            "Orders": [
                    {vars(Orders[1])},
                    {vars(Orders[2])}
            ]
    '''
    json.dump(db, dbs)
