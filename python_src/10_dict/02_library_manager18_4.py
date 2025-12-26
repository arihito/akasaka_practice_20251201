books = {
    "ハリー・ポッターと賢者の石" : "J.K.ローリング",
    "ホビットの冒険" : "J.R.R.トールキン",
    "ナルニア国物語" : "C.S.ルイス",
    "パーシー・ジャクソンとオリンポスの神々" : "リック・リオーダン",
    "あ" : "い"
}
new_book_title = input('新しい書籍タイトルを入力してください -> ')
new_book_author = input('著者名を入力してください -> ')
books[new_book_title] = new_book_author
print(books)


delete_book_title = input('削除する書籍タイトルを入力してください -> ')
if delete_book_title in books:
    del books[delete_book_title]
    print(books)
else:
    print('その書籍は存在しません')

update_book_title = input('変更する書籍タイトルを入力してください -> ')
if update_book_title in books:
    update_new_book_author = input('変更する著者名を入力してください -> ')
    books[update_book_title] = update_new_book_author
    print(books)
else:
    print('その書籍は存在しません')

search_book_title = input('検索する書籍タイトルを入力してください -> ')
if search_book_title in books:
    print(books[search_book_title])
else:
    print('その書籍は存在しません')

for k, v in books.items():
    print(f'■タイトル：【{k}】 / 著者：{v}')