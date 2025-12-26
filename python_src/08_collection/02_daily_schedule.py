schedule = ["Breakfast", "Work", "Lunch", "Meeting", "Gym", "Dinner", "Sleep"]
for s in schedule:
    print(s, end=' | ')

i = 0
while i < len(schedule):
    print(schedule[i], end=' | ')
    i += 1