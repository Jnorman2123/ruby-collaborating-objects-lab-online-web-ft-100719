class MP3Importer
  attr_accessor :file

  def initialize(file)
    @file = file
  end

  def files

  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| Song.new_by_filename(filename)}
  end
end
