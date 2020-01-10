class MusicLibraryController
  attr_accessor :path
  
  def initialize(path = './db/mp3s')
    @path = path
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    puts "Welcome to your music library!"
    user_input = nil
    
    while user_input != "exit"
      puts "To list all of the artists in your library, enter 'list artists'."
      user_input = gets.strip
    end 
    
  end
end