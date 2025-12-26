def func(b):
	b[1] = 5
	return sorted(b)
a = [1, 2, 3]
print(a) # [1, 2, 3]
b = func(a)
print(a) # [1, 5, 3]
print(b) # [1, 3, 5]