class MusicImporter
  attr_accessor :path
  attr_reader :files, :library
  
  def initialize(path)
    @path = path
    @files = []
    @library = []
  end
  
  def path
    @path  
  end
  
  def files
    Dir.children(self.path).each {|file| @files << file}
  end
  
  def import
    self.files.each do |file| 
      song = Song.create_from_filename(file)
      @library << song
    end
  end
end