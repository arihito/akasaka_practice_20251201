score = int(input('試験の点数を入力してください -> '))
if 0 > score or score > 100:
    print('判定不可能な値です')
elif 100 == score:
    print('満点です！')
elif 80 <= score:
    print('合格です')
else:
    print('不合格です')