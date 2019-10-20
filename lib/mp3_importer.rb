class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    self.new(path)
    Song.name = path.split(" - ")[1]
    Song.artist.name = path.split(" - ")[0]
  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| Song.new_by_filename(filename)}
  end
end
