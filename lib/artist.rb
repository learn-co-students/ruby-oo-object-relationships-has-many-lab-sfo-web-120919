class Artist
    attr_accessor :name, :songs
    @@all =[]
    def initialize(name)
      @name = name
      @songs = [] 
      @@all << self
    end
  
    def songs
      @songs 
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        add_song(Song.new(song_name))
    end
  
    def self.song_count
      total_song_count = []
      @@all.each do |artist|
        total_song_count.concat(artist.songs)
      end
        total_song_count.uniq.count
    end

    def self.all
      @@all
    end
end 

  