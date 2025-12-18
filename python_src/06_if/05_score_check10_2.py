score = int(input('試験の点数を入力してください -> '))
print(
    '優秀' if score >= 90 else (
    '良好' if score >= 70 else (
    '合格' if score >= 50 else '不合格'    
)))