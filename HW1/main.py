import json
from struct_taxi import Client, Driver, Order, Application, Rate

Clients = [Client('Michail', '+79035647834', '4,5', 1), Client('Artem', '+79035887834', '4,93', 2)]
Drivers = [Driver('Oleg', '+79036649824', 'Kia Rio', '5', 1), Driver('Nikita', '+79037749824', 'Lada Granta', '3,5', 2)]
Rates = Rate('Econom', 'Business', 'Comfort')
Applications = [Application(Clients[1].id, Drivers[0].id, Rates.econom),
                Application(Clients[1].id, Drivers[0].id, Rates.comfort)]
Orders = [Order('20.01.20', 129, 'Gavrilova 42, pod 3', Clients[1].id, Drivers[0].id),
          Order('21.02.20', 100, 'Gavrilova 56, pod 1', Clients[0].id, Drivers[1].id)]
with open('db3.json', 'a') as dbs:
    db = {
        "Clients": [vars(Clients[0]), vars(Clients[1])],
        "Drivers": [vars(Drivers[0]), vars(Drivers[1])],
        "Rates": [vars(Rates)],
        "Applications": [vars(Applications[0]), vars(Applications[1])],
        "Orders": [vars(Orders[0]), vars(Orders[1])]
    }
    json.dump(db, dbs)


prem = []
mas1 = []
date_order = input('Введите дату поездки: ')
prem.append(date_order)
while True:
    n = input('Введите данные клиенты(Имя, телефон):')
    print('Для завершения напишите stop')
    if n == 'stop':
        break
    mas1.append(n)
prem.append(mas1)
#prem = ['21.02.20', ['Michail', '+79035647834']]
result = []
found_id = None
with open('db3.json', 'rb') as file:
    db = json.load(file)
    clients = db['Clients']
    for i in clients:
        if prem[1][0] == i['name']:
            if prem[1][1] == i['number']:
                found_id = i['id']
    if found_id is None:
        print('Клиент не найден')
        exit()

    orders = db['Orders']
    for j in orders:
        if str(prem[0]) == j["date"]:
            if found_id == j["id_c"]:
                result.append(j)

print(db)
print(result)