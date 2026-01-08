list1 = ['one', 'two', 'three']

try:
    text = input('0~2の数字を入力してください -> ')
    num = int(text)
    print(list1[num])
except ValueError as e:
    print("エラー：入力する値は数値です", e)
except IndexError as e:
    print("エラー：入力する値は0~2です", e)
except Exception as e:
    print("エラー：予期せぬエラーが発生しました", e)
    
print('例外以降')