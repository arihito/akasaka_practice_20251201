class Movie:
    def __init__(self, title, genre):
        self.title = title
        self.genre = genre
    
    def display(self):
        print(f'タイトルは{self.title}でジャンルは{self.genre}です。')

class DetailedMovie(Movie):
    def __init__(self, title, genre, director):
        self.title = title
        self.genre = genre
        self.director = director        
    
    def display(self):
        print(f'タイトルは{self.title}でジャンルは{self.genre}で監督は{self.director}です。')

class MovieCollection:
    def __init__(self):
        self.movies = []

    def add_movie(self, movie):
        self.movies.append(movie)

    def display_movies(self):
        for m in self.movies:
            print(f'タイトルは{m.title}でジャンルは{m.genre}で監督は{m.director}す')
    def remove_movie(self, movie_title):
        self.movies = [m for m in self.movies if movie_title != m.title]
collections = []
c = MovieCollection()
for i in range(3):
    c.add_movie(DetailedMovie(input('映画のタイトルを入力してください -> '), input('映画のジャンルを入力してください -> '), input('映画の監督を入力してください -> ')))
    collections.append(c)

c.remove_movie(input('削除したいタイトルを入力してください -> '))
c.display_movies()