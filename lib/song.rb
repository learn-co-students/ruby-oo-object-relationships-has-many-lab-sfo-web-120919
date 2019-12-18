
class Song 
    attr_accessor :name
    attr_reader :artist
    @@all = []

    def initialize(name) 
      @name = name
      self.class.all << self
    end
   
    def artist=(artist)
        @artist = artist
        artist.songs << self #create an array to push artist songs 
    end

    def artist_name
      if @artist
        @artist.name
      end
    end
    def self.all
      @@all
    end
end
