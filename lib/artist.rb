require 'pry'

class Artist
    attr_accessor :name, :songs, :song, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
         song.artist = self
        
    end

    def songs
        my_songs = Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(name)
       song_by_name = add_song(Song.new(name))
       song_by_name
    end

    def self.song_count
        Song.all.count
    end

end

# binding.pry
# 0