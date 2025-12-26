print(iter([1, 2, 3]))

print('---')

print(next(iter([1, 2, 3])))
print(next(iter([1, 2, 3])))
print(next(iter([1, 2, 3])))

print('---')

c = iter([1, 2, 3])
print(next(c))
print(next(c))
print(next(c))

print('---')

# enumerate() は、イテラブルを走査しながら「順序番号（インデックス）」と「要素」を同時に取得するための組み込み関数です
for index, value in enumerate([1, 2, 3]):
    print(index, value)

print('---')

# イテレータを逆順に変換
r = reversed([1, 2, 3])
print(next(r)) # 3
print(next(r)) # 2
print(next(r)) # 1
print(r)

for index, value in enumerate(reversed([1, 2, 3])):
    print(index, value)