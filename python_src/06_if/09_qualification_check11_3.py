age = int(input('年齢を入力してください -> '))
qualifications = int(input('取得資格数を入力してください -> '))
print(
    'あなたの年齢が18歳以上で取得資格が5つ以上です。' if 18 <= age and qualifications >= 5 else 
    f'年齢が足りません。あと{18 - age}歳必要です。' if 18 > age and qualifications >= 5 else 
    f'取得資格が足りません。あと{5 - qualifications}つ必要です。' if 18 <= age and qualifications < 5 else 
    f'年齢と取得資格が足りません。年齢はあと{18 - age}歳、取得資格は{5 - qualifications}つ必要です。'    
)