print('{:-^30}'.format('fizzbuzz'))
for num in range(1, 30):
    print(
        f'{num}:fizzbuzz' if num % 5 == 0 and num % 3 == 0 else (
        f'{num}:fizz' if num % 5 == 0 else (
        f'{num}:buzz' if num % 3 == 0 else num
    )))