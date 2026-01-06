class MyClass:
    
    val = 10 # クラス変数

    def set_instance_val(self, val):
        self.val = val
    
    @classmethod
    def show_class_val(cls):
        cls.val += 10
        print(cls.val)
        
m = MyClass()
print('m.val:', m.val) # m.val: 10
m.show_class_val() # 20 インスタンスメソッドとしてクラス変数を更新(非推奨)
print('m.val:', m.val) # 20 更新されたクラス変数をインスタンス変数として参照
m.set_instance_val(7) # インスタンスプロパティのみを変更
print('m.val:', m.val) # m.val: 7
print(MyClass.val)
