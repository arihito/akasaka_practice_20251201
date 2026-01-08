class Vehicle:
    def move(self):
        print('The vehicle is moving')
        
class Car(Vehicle):
    def move(self):
        print('The car is driving')
    def honk(self):
        print('The car is honking')
        
v = Vehicle()
v.move()

c = Car()
c.move()
c.honk()