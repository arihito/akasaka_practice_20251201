current_savings = int(input('現在の貯金額はいくらですか -> '))
savings_goal    = int(input('目標貯金額はいくらですか -> '))
monthly_saving  = int(input('毎月の貯金額はいくらですか -> '))
months = 0
while current_savings < savings_goal:
    current_savings += monthly_saving
    months += 1
    print(f'{months}ヶ月目の貯金額：{current_savings}円')
print('目標額に達しました！')