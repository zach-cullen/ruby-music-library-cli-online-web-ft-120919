class MusicLibraryController
  attr_accessor :path
  
  def initialize(path = './db/mp3s')
    @path = path
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    user_input = gets.strip
  end
end