class Animal:
    def __init__(self, n, s):
        self.name = n
        self.species = s
        
    def print_name(self):
        print(f'動物の名前は：{self.name}です')

    def print_species(self):
        print(f'動物の種類は：{self.species}です')
        
a1 = Animal(input('動物の名前は-> '), input('動物の種類は-> '))
a2 = Animal(input('動物の名前は-> '), input('動物の種類は-> '))
a1.print_name()
a1.print_species()
a2.print_name()
a2.print_species()