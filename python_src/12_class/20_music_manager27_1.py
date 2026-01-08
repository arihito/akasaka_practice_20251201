class Song:
    def __init__(self, title, artist):
        self.title = title
        self.artist = artist
    def display(self):
        print(f'曲名は{self.title}で、歌手名は{self.artist}です')

class MusicLibrary:
    def __init__(self):
        self.library = {}
    def add_song(self, song):
        self.library[song.artist] = song.title
    def display_songs(self):
        for artist, title in self.library.items():
            print(f'曲名は{title}で、歌手名は{artist}です')
    def remove_song(self, song_title):
        self.library = {artist: title for artist, title in self.library.items() if title != song_title}

class DetailedSong(Song):
    def __init__(self, title, artist, album):
        super().__init__(title, artist)
        self.album = album
    def display(self):
        print(f'曲名は{self.title}で、歌手名は{self.artist}で、アルバム名は{self.album}です')
 
# s = Song(input('曲名を入力してください-> '), input('歌手名を入力してください-> '))
# s.display()

# ml = MusicLibrary()
# for _ in range(3):
#     ml.add_song(Song(input('曲名を入力してください-> '), input('歌手名を入力してください-> ')))
# ml.display_songs()

# (DetailedSong(input('曲名を入力してください-> '), input('歌手名を入力してください-> '), input('アルバム名を入力してください-> '))).display()

ml = MusicLibrary()
for _ in range(3):
    ml.add_song(DetailedSong(input('曲名を入力してください-> '), input('歌手名を入力してください-> '), input('アルバム名を入力してください-> ')))
ml.remove_song(input('削除したい曲名を入力してください-> '))
ml.display_songs()
