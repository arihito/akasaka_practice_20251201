expenses = (("Groceries", 20000),("Utilities", 15000),("Rent", 80000),("Transportation", 10000),("Entertainment", 5000),("Miscellaneous", 3000))
for expense in expenses:
    category, amount = expense[0], expense[1]
    print(f'カテゴリ：{category} / 金額：{amount}円')
    
total_expense = 0
for _, amount in expenses:
    total_expense += amount
print(f'合計金額：{total_expense:,}円')