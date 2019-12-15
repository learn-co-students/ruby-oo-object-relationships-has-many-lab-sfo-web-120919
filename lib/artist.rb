class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
  end

  def add_song_by_name(song_name)
    add_song(Song.new(song_name))
  end

  def self.song_count
    all_songs = []
    @@all.each do |artist|
      all_songs.concat(artist.songs)
    end
    all_songs.uniq.count
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
