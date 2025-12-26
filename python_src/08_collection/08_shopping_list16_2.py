shopping_items = ["Milk", "Bread", "Eggs", "Butter", "Cheese", "Tomatoes", "Lettuce", "Chicken"]
item1, item2, item3, item4 = shopping_items[:4]
print([item1, item2, item3, item4])

sorted_items = sorted(shopping_items)
print(sorted_items)

shopping_items.sort()
print(shopping_items)

item_lengths = [len(i) for i in shopping_items]
print(item_lengths)

short_lengths = [i for i in shopping_items if 5 >= len(i)]
print(short_lengths)
