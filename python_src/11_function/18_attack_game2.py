import random
# random.randint(a, b) は a以上b以下の整数をランダムに返す

# =====================================
# グローバル変数
# =====================================
turn = 1
log = []

# =====================================
# キャラクター情報
# =====================================
hero = {"name": "勇者", "hp": 20, "atk": 6}
enemy = {"name": "ゴブリン", "hp": 18, "atk": 5}

ACTIONS = ("attack", "heal")


# =====================================
# 関数定義
# =====================================

# -------------------------------------
# 【空欄1】
# 可変長引数を使う
# ・引数の前に * を付ける
# ・複数の値をまとめて受け取る
# -------------------------------------
def add_log(*args):
    for m in args:
        log.append(m)


# -------------------------------------
# 【空欄2】
# デフォルト引数
# ・True / False を使う
# ・指定されなければ False にしたい
# -------------------------------------
def show(chara, show_atk=False):
    if show_atk:
        print(f"{chara['name']} HP:{chara['hp']} ATK:{chara['atk']}")
    else:
        print(f"{chara['name']} HP:{chara['hp']}")


# -------------------------------------
# 【空欄3】
# 比較演算子
# ・HPが0より大きいかどうか
# -------------------------------------
def is_alive(chara):
    return chara["hp"] > 0


# -------------------------------------
# 攻撃処理
# ・攻撃力 × ランダム倍率
# -------------------------------------
def attack(attacker, target):
    print(f"{attacker['name']}の攻撃！")

    # ---------------------------------
    # 【空欄4】
    # ランダム倍率の範囲
    # ・80%〜120% を表したい
    # ---------------------------------
    multiplier = random.randint(80, 120) / 100

    dmg = int(attacker["atk"] * multiplier)

    target["hp"] -= dmg

    # ---------------------------------
    # 【空欄5】
    # HPが0未満にならないようにする
    # ---------------------------------
    if target["hp"] < 0:
        target["hp"] = 0

    print(f"{target['name']}に{dmg}のダメージ")

    add_log(
        f"{attacker['name']}の攻撃！",
        f"{target['name']}に{dmg}ダメージ"
    )

    # ---------------------------------
    # 【空欄6】
    # 複数の戻り値
    # ・ダメージ量
    # ・相手の現在HP
    # ---------------------------------
    return dmg, target["hp"]


# -------------------------------------
# 回復処理
# -------------------------------------
def heal(chara, amount=5):
    print(f"{chara['name']}の回復魔法！")

    # ---------------------------------
    # 【空欄7】
    # 回復量をランダムにする
    # ・amount を基準に ±2
    # ---------------------------------
    heal_point = random.randint(amount - 2, amount + 2)

    chara["hp"] += heal_point

    add_log(
        f"{chara['name']}の回復魔法！",
        f"HPが{heal_point}回復"
    )

    # ---------------------------------
    # 【空欄8】
    # 複数の戻り値
    # ・回復量
    # ・現在のHP
    # ---------------------------------
    return heal_point, chara["hp"]


# -------------------------------------
# 行動選択
# -------------------------------------
def choose_action():
    while True:
        print("1: attack  2: heal")
        c = input("行動：")
        if c == "1":
            return ACTIONS[0]
        if c == "2":
            return ACTIONS[1]
        print("1か2を入力してください")


# -------------------------------------
# 【空欄9】
# global変数を変更する
# ・turn を1増やす
# ヒント：global turn
# -------------------------------------
def next_turn():
    global turn
    turn += 1


# =====================================
# メインプログラム
# =====================================
print("=== ミニRPG開始 ===")
add_log("=== 開始 ===")

while is_alive(hero) and is_alive(enemy):

    print(f"\n--- TURN {turn} ---")

    # デフォルト引数を使用（HPのみ表示）
    show(hero)

    # キーワード引数を使用（攻撃力も表示）
    show(enemy, show_atk=True)

    action = choose_action()

    if action == "attack":
        dmg, hp = attack(hero, enemy)
        print(f"（確認）敵HP={hp}")
    else:
        healed, hp = heal(hero)
        print(f"（確認）勇者HP={hp}")

    if not is_alive(enemy):
        break

    dmg, hp = attack(enemy, hero)
    print(f"（確認）勇者HP={hp}")

    next_turn()

print("\n=== 結果 ===")
show(hero, show_atk=True)
show(enemy, show_atk=True)

print("\n=== ログ ===")
for line in log:
    print(line)
