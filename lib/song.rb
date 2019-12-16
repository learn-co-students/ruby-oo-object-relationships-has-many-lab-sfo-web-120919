class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
       
    end
    def self.all
        @@all
    end
    def artist_name
        # binding.pry
        if self.artist == nil
            return nil
        end
            # binding.pry
            if self.artist.name == artist.name
                # binding.pry
                return artist.name
            else
                return nil
            end
    end
    def self.song_count
        @@all.count
    end
end