numbers = list(map(int, input('空白区切りで数値を入力してください -> ').split(' ')))
# def sum_all(*args):
#     return sum(args)
# print('合計:', sum_all(*numbers))
print('合計:', (lambda args : sum(args))(numbers))