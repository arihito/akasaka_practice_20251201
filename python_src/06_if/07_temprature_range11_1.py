temprature = float(input('摂氏温度を入力してください -> '))
print('0度以上30度未満です' if 0 <= temprature < 30 else '適切な温度ではありません')