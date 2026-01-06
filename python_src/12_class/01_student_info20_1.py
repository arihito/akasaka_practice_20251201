def outfunc(self):
    print('外で定義した関数')

class Student:
    out = outfunc    
    def print_name(self):
        print(self.name)

    def print_grade(self):
        print(self.grade)

    def print_major(self):
        print(self.major)
        
s = Student()
s.name = '太郎'
s.grade = '3年'
s.major = '普通科'
s.print_name()
s.print_grade()
s.print_major()
s.out()
outfunc('')