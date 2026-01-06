class Parent1:
	def __init__(self):
		print('parent')

class Child1(Parent1):
	pass

Parent1()
Child1()

class Parent2:
	def __init__(self, n):
		self.name = n

class Child2(Parent2):
    def __init__(self, n, a):
        super().__init__(n)
        self.age = a

c = Child2('太郎', 32)
print(c.name)
print(c.age)