class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
      Arist.find_or_create_by_name(filename)
    end
  end
end
