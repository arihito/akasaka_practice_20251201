import random
# def calculate_averageg(name, grades):
#     return round(sum(grades) / len(grades), 1)
# calculate_averageg = lambda name, grades : round(sum(grades) / len(grades), 1)
# name = 'John Doe'
# grades = [85, 90, 78]
# print(f'{name}さんの平均点数は{calculate_averageg(name, list(grades))}点です')
print(f'{input('名前を入力-> ') or '名無し'}さんの平均点数は \
{(lambda grades : round(sum(grades) / len(grades), 1))( \
[random.randint(0, 100) for _ in range(10)])}点です')