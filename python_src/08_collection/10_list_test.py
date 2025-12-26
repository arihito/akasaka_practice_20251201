# 買い物リストを作成するプログラム

# 買い物リスト
shopping_list = []
print('買い物リストを作成します')
print('商品名と個数を入力してください')
print('終了するときは、商品名に「end」と入力します。')

name = True
while name:
    name = str(input('商品名を入力してください -> '))
    if name == 'end':
        print('\n入力を終了します\n')
        break
    count = int(input('個数を入力してください -> '))
    # リストに追加（異なる型をまとめるのは本来はよろしくない）
    shopping_list.append([name, count])
    
print('{:=^40}'.format('作成した買い物リスト'))
print('\n'.join('- ' + line for line in ([item[0] + '(' + str(item[1]) + '個)' for item in shopping_list])))   
print('※買うものが多いのでメモを忘れないようにしましょう！') if len(shopping_list) >= 3 else print('※今日は少な目の買い物ですね')