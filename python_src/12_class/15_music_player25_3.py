class MusicPlayer:
    def play(self):
        print('Playing music')

class MP3Player(MusicPlayer):
    def play(self):
        print('Playing MP3 music')
        
    def play_parent(self):
        super().play()
        
m = MusicPlayer()
m.play()

m3 = MP3Player()
m3.play()
m3.play_parent()