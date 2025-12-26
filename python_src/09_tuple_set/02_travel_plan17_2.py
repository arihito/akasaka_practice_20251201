cities = ["Tokyo", "Paris", "New York", "London", "Sydney"]
countries = ["Japan", "France", "USA", "UK", "Australia"]
attractions = ["Tokyo Tower", "Eiffel Tower", "Statue of Liberty", "London Eye", "Sydney Opera House"]

travel_plans = tuple(zip(cities, countries, attractions))
for plan in travel_plans:
    print(f'都市：{plan[0]} / 国：{plan[1]} / 名所：{plan[2]}')

city_name = input(f'都市名を英語で入力してください -> ')
for city, country, attraction in travel_plans:
    print(city_name, city)
    if city_name.lower() == city.lower():
        print(f'都市：{city} / 国：{country} / 名所：{attraction}')
        break
else:
    print(f'{city_name}という都市は存在しません')

for i, plan in enumerate(travel_plans):
    print(f'{i}：都市：{plan[0]} / 国：{plan[1]} / 名所：{plan[2]}')

fruits = ['apple', 'banana', 'lemon']
prices = [20, 40, 30]
counts = [4, 1, 6]
print([(fruit) for fruit in zip(fruits, prices, counts)])
print(list(zip(fruits, prices, counts)))