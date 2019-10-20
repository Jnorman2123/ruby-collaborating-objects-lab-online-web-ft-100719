class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    new_song = Song.new(path.split(" - ")[1])
    new_song.artist.name = path.split(" - ")[0]
  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| Song.new_by_filename(filename)}
  end
end
