expenses = list()

def add_expense(item, amount, date):
    global expenses
    expenses = {
        'item' : item, 
        'amount' : amount, 
        'date' : date
    }
    
def display_total_expense():
    total = 0
    total += expenses['item'] 
    total += expenses['amount'] 
    total += expenses['date']
    print(f'{total:,}円')