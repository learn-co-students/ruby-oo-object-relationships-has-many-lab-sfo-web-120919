class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        add_song(new_song)
    end

    def self.song_count
        Song.all.length
    end

    def save 
        @@all << self
    end
end



