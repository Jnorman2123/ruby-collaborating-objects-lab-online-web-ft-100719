require 'pry'
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

  def self.new_by_filename(filename)
    split_file = filename.split(" - ")
    song = self.new(split_file[1])
    artist = Artist.find_or_create_by_name(split_file[0])
    song.artist = artist
    artist.add_song(song)
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist = name
    end
  end
end
