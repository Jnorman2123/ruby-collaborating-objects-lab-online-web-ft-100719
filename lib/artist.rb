class Artist
  attr_accessor :name
  @@all = []
  @songs = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    existing_artist = self.all.find {|artist| artist.name == name}

    if existing_artist
      existing_artist
    else
      self.new(name)
    end
  end

  def print_songs
    self.songs.each
  end
end
