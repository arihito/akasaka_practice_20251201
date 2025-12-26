grades = [[85, 90, 92],[78, 88, 85],[91, 94, 89],[70, 76, 72], [88, 84, 90]]
for student_number in grades:
    print(student_number)
    
print([student_number for student_number in grades])
    
print('{:-^60}'.format('区切り'))

for key, student_number in enumerate(grades):
    print(f'平均値{key + 1}人目：{int(sum(student_number) / len(student_number))}点')
    
print('{:-^60}'.format('区切り'))

total = 0
count = 0
for student_number in grades:
    for number in student_number:
        total += number
        count += 1
print(f'クラス全体の平均成績は{key + 1}人で{total / count}点です')
        