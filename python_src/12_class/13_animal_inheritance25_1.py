class Animal:
    def make_sound(self):
        print('Some generic animal sound')
        
class Dog(Animal):
    def make_sound(self):
        print('Woof')
    def fetch(self):
        print('Dog is fetching!')
        
a = Animal()
a.make_sound()

d = Dog()
d.make_sound()
d.fetch()