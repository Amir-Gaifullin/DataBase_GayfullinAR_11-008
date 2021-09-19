class Client:
    def __init__(self, name, number, rating, id):
        self.name = name
        self.number = number
        self.rating = rating
        self.id = id


class Driver:
    def __init__(self, name, number, car, rating, id):
        self.name = name
        self.number = number
        self.car = car
        self.rating = rating
        self.id = id


class Application:
    def __init__(self, id_c, id_d, rate):
        self.id_c = id_c
        self.id_d = id_d


class Rate:
    def __init__(self, econom, business, comfort):
        self.econom = econom
        self.business = business
        self.comfort = comfort


class Order:
    def __init__(self, price, route, id_c, id_d):
        self.price = price
        self.route = route
        self.id_c = id_c
        self.id_d = id_d
