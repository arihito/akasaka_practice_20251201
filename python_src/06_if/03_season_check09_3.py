month = int(input('月を入力してください -> '))
result = '冬' if month in [1, 2, 3] else (
    '春' if month in [4, 5, 6] else (
    '夏' if month in [7, 8, 9] else (
    '秋' if month in [10, 11, 12] else '無効な月'
)))
print(f'{month}月の季節は{result}です')