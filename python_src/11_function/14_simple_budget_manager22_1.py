def calculate_budget(incomes, expenses):
    '''
    収入と支出を基に差額を表示します
    Args:
        int:param incomes: 収入金額
        int:param expenses: 支出金額
    Return:
        int: 差額金額
    '''
    total_income = 0
    total_expense = 0
    total_income += incomes
    total_expense += expenses
    balance = total_income - total_expense
    return total_income, total_expense, balance

total_income, total_expense, balance = calculate_budget(int(input('収入-> ')), int(input('支出-> ')))
print(calculate_budget.__doc__)
print(f'収入合計は{total_income:,}円で支出合計は{total_expense:,}円で差額は{balance:,}円です')
