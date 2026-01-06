class Vehicle:
    def print_model(self):
        print(f'モデル：{self.model}')

    def print_year(self):
        print(f'製造年：{self.year}年')

    def print_price(self):
        print(f'価格：{self.price:,}円')
        
    def print_all():
        print('hello')

v = [Vehicle(), Vehicle(), Vehicle()]
v[0].model = 'トヨタ'
v[0].year = 2010
v[0].price = 3800000
v[1].model = 'ホンダ'
v[1].year = 2020
v[1].price = 4500000
v[2].model = 'マツダ'
v[2].year = 2012
v[2].price = 2400000
for i in range(3):
    v[i].print_model()
    v[i].print_year()
    v[i].print_price()
    print('{:=^30}'.format(f'車両{i + 1}台目'))