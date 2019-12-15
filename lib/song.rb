class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist
    save
  end

  def self.all
    @@all
  end

  def artist=(new_artist)
    @artist = new_artist
    new_artist.songs << self
  end

  def save
    self.class.all << self
  end

  def artist_name
    if @artist
      @artist.name
    end
  end
end
