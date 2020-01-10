class MusicLibraryController
  attr_accessor :path, :importer
  
  def initialize(path = './db/mp3s')
    @path = path
    @importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    puts "Welcome to your music library!"
    user_input = nil
    
    def welcome_message
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
    end
    
    until user_input == "exit"
      welcome_message
      user_input = gets.strip
      
      #case user_input
    end 
  end
  

end