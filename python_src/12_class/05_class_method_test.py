class Bird:
    # マングリング
    __counter = 0
    def __init__(self):
        Bird.__counter += 1

    @classmethod
    def check_num(cls, num = 0):
        if num != 0:
            cls.__counter = num
        print(f'今、鳥は{cls.__counter}羽')

    @classmethod
    @property    
    def hello(self):
        print('hello')

b1 = Bird()
b2 = Bird()
Bird.check_num()

b3 = Bird()
Bird.check_num()

# Bird.__counter += 5
Bird.__counter = 5
Bird.check_num()
b1.check_num(10)

Bird.hello()