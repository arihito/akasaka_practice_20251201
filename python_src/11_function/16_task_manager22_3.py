tasks = {}
def add_task(task_name, deadline, status):
    '''
    入力したタスクの詳細を返す
    Args:
        string:param task_name: タスク名
        string:param deadline: 締切日
        string:param status: ステータス
    Returns:
        Void
    '''
    global tasks
    tasks = {
        'task_name' : task_name,
        'deadline' : deadline,
        'status' : status
    }
def display_task():
    '''
    tasks に保存されている全てのタスク情報を表示
    Args:
        None
    Return:
        Void
    '''
    print(f"タスク名：{tasks['task_name']}, 締切日：{tasks['deadline']}, ステータス：{tasks['status']}")

print(add_task.__doc__)
add_task(input('タスク名を入力してください -> '), input('締切日を入力してください -> '), input('ステータスを入力してください -> '))
print(display_task.__doc__)
display_task()
