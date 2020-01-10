class MusicLibraryController
  attr_accessor :path
  
  def initialize(path = './db/mp3s')
    @path = path
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    puts "Welcome to your music library!"
    puts "Please give me input"
    user_input = gets.
  end
end