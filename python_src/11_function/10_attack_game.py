import random

hero_name = input('ヒーローの名前を入力してください -> ') or 'ヒーロー'
villain_name = input('悪役の名前を入力してください -> ') or '閻魔大王'

# キャラクター情報
hero = {'name' : hero_name, 'hp' : random.randint(50, 100), 'atk': random.randint(10, 20)}
villain = {'name' : villain_name, 'hp' : random.randint(10, 120), 'atk': random.randint(5, 30)}

# 行動の種類
ACTIONS = ('attack', 'heal')

### サブプログラム

# キャラクターの名前とHPの表示関数
show = lambda character : print(f'{character["name"]} 攻撃力:{character["atk"]} 体力:{character["hp"]}')

# キャラクター生存状態の判定関数
is_alive = lambda character : character['hp'] > 0

# 攻撃者の攻撃力分、相手のHPを減らす関数
def attack(attacker, defender): 
    print(f'{attacker["name"]}の攻撃！')
    defender['hp'] -= attacker['atk']
    # 防御者の体力が0以下になったら0でとどめておく
    if defender['hp'] < 0:
        defender['hp'] = 0
    print(f'{defender["name"]}に{attacker["atk"]}のダメージ！')

# HPを固定値分回復させる
def heal(character):
    print(f'{character["name"]}の回復魔法！')
    heal_point = random.randint(3, 15)
    character['hp'] += heal_point
    print(f'HPが{heal_point}pt回復した')

# プレイヤーにattackかhealの文字列を返させて行動を選ぶ関数
def choose_action():
    while True:
        print('1: 攻撃 / 2: 回復')
        choice = int(input('行動を選択してください -> '))
        return ACTIONS[0] if choice == 1 else (
            ACTIONS[1] if choice == 2 else 
            print('1か2を入力してください'))

### メインプログラム

# どちらもHPがある限り繰り返される
count = 1
while is_alive(hero) and is_alive(villain):
        
    print()
    print('{:=^30}'.format(f'バトル{count}回目'))
    
    # 現在のステータスを表示
    show(hero)
    show(villain)

    print()
    
    # 勇者の行動を選択
    action = choose_action()
    
    # 選択された行動(攻撃か回復)を実行
    attack(hero, villain) if action == "attack" else heal(hero)

    if not is_alive(villain):
        break
    
    # 敵の攻撃
    attack(villain, hero)

    count += 1

    
# バトル終了後の結果の表示
print('{:=^60}'.format('結果'))
show(hero)
show(villain)

# 勝敗を判定して表示
print(f'{hero['name']}の勝利！！！') if is_alive(hero) else print(f'{villain['name']}の勝利↓↓↓')
