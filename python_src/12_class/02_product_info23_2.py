class Product:
    def print_name(self):
        print(f'名前：{self.name}')

    def print_price(self):
        print(f'価格：{self.price:,}円')

    def print_stock(self):
        print(f'在庫数：{self.stock}個')
        
p = Product()
p.name = '太郎'
p.price = 3000
p.stock = 30
p.print_name()
p.print_price()
p.print_stock()