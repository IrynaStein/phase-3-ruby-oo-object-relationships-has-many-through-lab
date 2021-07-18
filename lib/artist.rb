
require 'pry'

class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name= name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song
    end

    def genres
        # songs.map(&:genre)
        songs.collect {|song| song.genre}
    end

end

# eminem = Artist.new("Eminem")
# adele = Artist.new("Adele")
# adele.new_song("Hello", "pop")
# eminem.new_song("Slim Shady", "rap")
# eminem.new_song("Love the way you lie", "rap")
# eminem.songs

# binding.pry