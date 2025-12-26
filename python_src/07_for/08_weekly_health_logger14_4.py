skip_day = int(input('スキップする日（1~7） -> '))
for day in range(1, 8):
    if day == skip_day:
        continue
    print(f'今日は{day}日目の水を飲みました！')