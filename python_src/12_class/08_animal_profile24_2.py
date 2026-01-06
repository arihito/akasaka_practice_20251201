class Animal:
    def __init__(self, n, s):
        self.name = n
        self.species = s
    
    def print_name(self):
        print(f'動物の名前は：{self.name}です。')

    def print_species(self):
        print(f'動物の種類は：{self.species}です。')
        
animals = [(input('動物の名前を入力してください->'), input('動物の種類を入力してください->')) for n in range(3)]

animal_obj = [Animal(n, s) for n, s in animals]

for i in range(3):
    animal_obj[i].print_name()
    animal_obj[i].print_species()
