print('ab');print('cd\n');print('ef')
result = 100
# キャスト(型変換)
print('結果:' + str(result) + '円')
# 結果:100円

# 変数前後に空白が入る
print('結果:', result, '円')

# フォーマット構文 (シングルクォートも使用可能)
print(f'結果:{result}円')

print(type(100_000))