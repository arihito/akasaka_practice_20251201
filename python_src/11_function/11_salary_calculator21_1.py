# # print(f"{(lambda base_salary, bonus, transportation_allowance=10000 : base_salary + bonus + transportation_allowance)(int(input('基本給-> ')), int(input('ボーナス-> ')), int(input('交通費-> ')))}円")
# base_salary = int(input('基本給-> '))
# bonus = int(input('ボーナス-> '))
# transportation_allowance = input('交通費-> ')
# if transportation_allowance:
#     def calculate_salary(base_salary, bonus, transportation_allowance):
#         base_salary + bonus + transportation_allowance
#     print(f'{calculate_salary(base_salary, bonus, int(transportation_allowance))}円')
# else:
#     def calculate_salary(base_salary, bonus):
#         base_salary + bonus + 10000
#     print(f'{calculate_salary(base_salary, bonus)}円')





# 基本給、ボーナス、交通費を受け取り、総給与を計算する関数
def calculate_salary(base_salary, bonus, transportation_allowance=10000):
    # 総給与を計算して返す
    return base_salary + bonus + transportation_allowance

# メインプログラム
# 基本給をユーザーから入力して整数に変換
base_salary = int(input("基本給を入力してください: "))
# ボーナスをユーザーから入力して整数に変換
bonus = int(input("ボーナスを入力してください: "))
# 交通費をユーザーから入力、入力がない場合もある
transportation_allowance = input("交通費を入力してください (省略可能): ")

# 交通費が入力されなかった場合の処理
if transportation_allowance:
    # 交通費が入力されていたら、それを整数に変換して関数を呼び出す
    total_salary = calculate_salary(base_salary, bonus, transportation_allowance=int(transportation_allowance))
else:
    # 交通費が入力されなかった場合、デフォルトの交通費を使用して関数を呼び出す
    total_salary = calculate_salary(base_salary, bonus)

# 総給与を表示
print("総給与は", total_salary, "円です")