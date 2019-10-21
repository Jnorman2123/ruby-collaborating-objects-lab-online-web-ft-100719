class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import(list_of_filenames)
    list_of_filenames.each do |filename|
      Song.new_by_filename(filename)
      Arist.find_or_create_by_name(filename)
    end
  end
end
