class A:
	def x(self):
		print('x')

class B:
	def x(self):
		print('xx')

class C(A, B): pass
class D(B, A): pass

C().x() # x
D().x() # xx

class A:
	def __str__(self):
		return 'test'
print(A())