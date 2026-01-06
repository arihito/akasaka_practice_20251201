class Movie():
    counter = 0

    def __init__(self, t, d):
        Movie.counter += 1
        self.title = t
        self.director = d
        
    def print_title(self):
        print(f'映画のタイトルは{self.title}です')

    def print_director(self):
        print(f'映画の監督は{self.director}です')

    @classmethod
    def print_num(cls):
        print(f'現在の映画の本数は{cls.counter}本です')
        
movies = []
# movies_list = [(input('映画のタイトルは-> '), input('映画の監督は-> ')) for _ in range(3)]
# for t, d in movies_list:
#     movies.append(Movie(t, d))
    
# for m in movies:
#     m.print_title()
#     m.print_director()

# [m.print_title() or m.print_director() \
#     for m in [Movie(input('映画のタイトルは-> '), input('映画の監督は-> ')) \
#     for _ in range(3)]]

[(m := Movie(input('タイトル-> '), input('監督-> ')), m.print_title(), m.print_director()) for _ in range(3)]

Movie.print_num()