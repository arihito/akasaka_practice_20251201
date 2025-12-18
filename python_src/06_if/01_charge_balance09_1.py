balance = int(input('電子マネーの残高を入力してください -> '))
charge_amount = int(input('チャージ額を入力してください -> '))
if balance < 1000:
    balance += charge_amount
print(f'チャージ額：{charge_amount}円、残高：{balance}円')