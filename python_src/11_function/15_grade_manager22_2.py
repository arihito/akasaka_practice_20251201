import random
def calculate_grades(score):
    '''
    リストのスコアを基に様々な点数を返します。
    Args
        list:param score: いくつかの点数
    Return:
        score: list : スコアの一覧
        total_score: int :合計点数
        average_score: int :平均点数
        highest_score: int :最高得点
    '''
    total_score = sum(score)
    average_score = sum(score) / len(score)
    highest_score = max(score)
    return score, total_score, average_score, highest_score

score, total_score, average_score, highest_score = calculate_grades([random.randint(1, 100) for _ in range(10)])
print(calculate_grades.__doc__)
print(score)
print(f'合計スコアは{total_score}点で、平均スコアは{average_score}点で、最高得点は{highest_score}点です')