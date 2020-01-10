class MusicImporter
  attr_accessor :path
  attr_reader :files
  
  def initialize(file_path)
    @path = file_path
    @files = []
  end
  
  def path
    @path  
  end
  
  def files
    Dir.children(self.path).each {|file| @files << file}
  end
end