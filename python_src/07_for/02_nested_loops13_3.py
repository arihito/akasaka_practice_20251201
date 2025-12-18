for i in range(1, 4):
    print(end='| ')
    for j in range(1, 4):
        print(f'({i}, {j})', end=' | ')
    print()
    
print()

for j in range(1, 6):
    # for k in range(1, 6):
    #     if (j >= k):
    for k in range(j):
        print('★ ', end='')
    print()