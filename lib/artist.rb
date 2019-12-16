class Artist

    attr_accessor :name, :song, :artist
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select do |s|
            self == s.artist
        end
    end

    def add_song(song)
        @songs << song
        song.artist = self #this is what creates their relationship
    end

    def add_song_by_name(song_name)
        s_n = Song.new(song_name)
        add_song(s_n)
        return s_n
    
    end

    def self.song_count
       return Song.all.length
    
    end

  



end
