expenses = []

def add_expense(item, amount, date):
    global expenses
    expense = {
        'item' : item, 
        'amount' : amount, 
        'date' : date
    }
    expenses.append(expense)
    
def display_total_expense():
    total = 0
    for expense in expenses:
        total += expense['amount'] 
    print(f'支出の合計金額：{total:,}円')
    
for _ in range(3):
    item = input('支出項目 -> ')
    amount = int(input('金額 -> '))
    date = input('日付 -> ')
    add_expense(item, amount, date)

display_total_expense()