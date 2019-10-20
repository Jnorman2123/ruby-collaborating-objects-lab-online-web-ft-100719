class MP3Importer
  attr_accessor :file

  def initialize(file)
    @file = file
  end

  def files
    new_song = Song.new(file.split(" - ")[1])
    new_song.artist.name = file.split(" - ")[0]
  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| Song.new_by_filename(filename)}
  end
end
