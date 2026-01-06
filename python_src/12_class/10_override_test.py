class Parent:
	@classmethod
	def func1(cls):
		print('parent')
		
class Child(Parent):
	@classmethod
	def func1(cls):
		print('child')

	@classmethod
	def func2(cls):
		print(Parent.func1())

Child.func1() # child
Child.func2() # parent

print((lambda : print('a'))())