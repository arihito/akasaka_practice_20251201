import my_module # 拡張子を指定せずファイル全体を読み込む
my_module.func1() # ファイル内のメソッドを実行

from my_module import func2 # 定義したメソッドを変数として読み込む
func2()

from my_module import func2 as f2 # 別名を付与できる
f2()