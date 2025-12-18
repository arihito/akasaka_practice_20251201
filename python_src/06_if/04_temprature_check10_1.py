temperature = float(input('体温を入力してください -> '))
print(
    '低体温' if temperature < 36.5 else (
    '平熱' if temperature < 37.5 else '発熱'
))