cities = ['Tokyo', 'Ooska', 'Kyoto']
for index, city in enumerate(cities):
	print(f'{index} : {city}')
for city in enumerate(cities):
	print(city)

a = set(range(2, 10, 2))
b = set(range(1, 20, 3))
print(a.isdisjoint(b))
