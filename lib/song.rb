class Song

    attr_accessor :artist, :name
    @@all = [] 

    def initialize(name)
        @@all << self
        @name = name
    end

   def self.all
        @@all
   end

   def artist_name
       if self.artist
        return self.artist.name
       else
        return nil
       end
       
    end




   


end