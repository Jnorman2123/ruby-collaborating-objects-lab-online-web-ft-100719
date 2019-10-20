class MP3Importer
  attr_accessor :file_path

  def initialize(file)
    @file_path = file
  end

  def files
    
  end

  def import(list_of_filenames)
    list_of_filenames.each { |filename| Song.new_by_filename(filename)}
  end
end
