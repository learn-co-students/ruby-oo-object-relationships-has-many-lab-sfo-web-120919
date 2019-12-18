class Song
  attr_accessor :name, :songs, :artist
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    
  end

  def self.all 
    @@all
  end

  def artist=(artist)
    @artist = artist
    artist.songs << self
  end

  def artist_name
    if self.artist ==  nil
      return nil
    else 
      return artist.name
    end
  end
end