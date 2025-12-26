member = {'name': '田中', 'age': 23, 'point': 352}

# 追加
member['gender'] = '男'
print(member)
# 検索
print('name' in member)
# 取得
print(member.get('name'))
print(member.get('name', '未マッチデフォルト値'))
print(member['name'])
# 更新
member.update({'name': '山田', 'age': 30, 'point': 430, 'gender': '女'})
print(member)
# キーを取得
print(member.keys())
# 要素の取得
print(member.values())
# キー要素をタプルで取得
print(member.items())
