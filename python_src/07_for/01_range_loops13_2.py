for i in range(1, 8):
    print(f'{i:02}', end=' | ')
print()
for j in range(1, 10):
    print(f'5 * {j} = {5 * j:02}')
print()
for k in range(51, 71, 2):
    print(f'{k}', end=' | ')
print()
for l in range(10, 0, -1):
    print(f'{l:02}', end=' | ')
print()
for m in range(15, 46):
    if m % 3 == 0:
        print(f'{m:02}', end=' | ')
print()
for o in range(-10, 0, 1):
    print(f'{o:02}', end=' | ')
print()
for p in range(20, 1, -1):
    print(f'{p:02}', end=' | ')


print(list(range(-1)))
print('Python'[:-1:-1])