require "pry"
class Artist
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end
    def songs()
        Song.all.select {|song| song.artist == self}
    end
    def add_song(song)
        @songs << self
        song.artist = self
        # binding.pry
    end
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end
    def self.song_count
        # binding.pry
        Song.all.length
    end
    
end