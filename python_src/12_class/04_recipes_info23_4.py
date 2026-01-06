class Recipe:
    
    def __init__(self, n, m, c):
        self.name = n
        self.main_ingredient = m
        self.cooking_time = c
        
    def print_name(self):
        print(f'料理名：{self.name}')

    def print_main_ingredient(self):
        print(f'主要材料：{self.main_ingredient}')

    def print_cooking_time(self):
        print(f'調理時間：{self.cooking_time}')

r = Recipe('カレー', '牛筋肉', '30分')
r.print_name()
r.print_main_ingredient()
r.print_cooking_time()