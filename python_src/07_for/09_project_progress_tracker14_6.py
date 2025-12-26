project_days = int(input('プロジェクトの期間（日数）-> '))
stop_day = int(input('途中で終了する日 -> '))
for day in range(project_days):
    # if day == stop_day:
    #     print('プロジェクトを途中で終了します')
    #     break
    print(f'{day + 1}日目のプロジェクト作業を完了しました')
else:
    print('プロジェクト期間が終了しました！お疲れ様でした')