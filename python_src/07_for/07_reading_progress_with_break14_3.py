total_pages = int(input('本の総ページ数 -> '))
back_page = int(input('休憩するページ数 -> '))
for tp in range(total_pages):
    if tp == back_page:
        print('休憩します')
        break
    print(f'{tp + 1}ページ目を読みました')
