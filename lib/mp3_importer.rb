class MP3Importer
  attr_accessor :path

  def initialize(path)
    @file = path
  end

  def files
    self.new(path) 
    artist = path.split(" - ")[0]
    song = path.split(" - ")[1]
  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| Song.new_by_filename(filename)}
  end
end
